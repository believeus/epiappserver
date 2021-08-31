package com.epidial.sync;

import javax.annotation.Resource;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.utils.StringUtils;
import com.epidial.bean.Dnakit;
import com.epidial.bean.Udata;
import com.epidial.dao.epi.DnakitDao;
import com.epidial.dao.epi.UdataDao;
import com.epidial.utils.Amazondb;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sqs.SqsClient;
import software.amazon.awssdk.services.sqs.model.ChangeMessageVisibilityRequest;
import software.amazon.awssdk.services.sqs.model.DeleteMessageRequest;
import software.amazon.awssdk.services.sqs.model.Message;
import software.amazon.awssdk.services.sqs.model.ReceiveMessageRequest;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.*;


@Component
public class Sysdb implements ApplicationListener<ApplicationEvent> {

    @Resource
    private DnakitDao dnakitDao;
    @Resource
    private UdataDao udataDao;
    private boolean isrun = false;

    // tomcat第一次启动会调用这个方法
    @Override
    @Transactional(rollbackFor = {Exception.class})
    public void onApplicationEvent(ApplicationEvent event) {
        // tomcat启动完毕调用该方法
        if (event instanceof ContextRefreshedEvent) {
            System.out.println("event:" + event.toString());
            if (!isrun) {
                isrun = true;
                new Thread(new Runnable() {
                    private String qurl = "https://sqs.us-east-1.amazonaws.com/381270507532/lucksqs";
                    private int maxNumberOfMessages = 10;
                    //SqsClient sqsclient = SqsClient.builder().region(Region.US_EAST_1).build();
                    AwsBasicCredentials awsCreds = AwsBasicCredentials.create("", "");
                    SqsClient sqsclient = SqsClient.builder().credentialsProvider(StaticCredentialsProvider.create(awsCreds)).region(Region.US_EAST_1).build();
                    ReceiveMessageRequest receiveRequest = ReceiveMessageRequest.builder().queueUrl(qurl).maxNumberOfMessages(maxNumberOfMessages).waitTimeSeconds(5).build();

                    @Override
                    public void run() {
                        while (true) {
                            try {
                                int errortimes = 0;
                                Properties properties = new Properties();
                                ClassLoader classLoader = this.getClass().getClassLoader();
                                String path = classLoader.getResource("application.properties").getPath();
                                FileInputStream in = new FileInputStream(path);
                                properties.load(in);
                                Boolean synchronize = Boolean.parseBoolean(properties.getProperty("synchronize", "false"));
                                if (synchronize) {
                                    Amazondb amazondb = new Amazondb("DataEventJournal");
                                    List<Message> messages = sqsclient.receiveMessage(receiveRequest).messages();
                                    if (messages.size() == 0) {
                                        properties.setProperty("synchronize", "false");
                                        FileOutputStream fileout = new FileOutputStream(path);
                                        properties.store(fileout, "");
                                        fileout.close();
                                    } else {
                                        for (Message msg : messages) {
                                            HashMap<String, String> logmap = new HashMap<String, String>();
                                            try {
                                                //改变消息的可见性超时，即这段时间内一个消费者进行消费时其他消费者对消息不可见
                                                ChangeMessageVisibilityRequest req = ChangeMessageVisibilityRequest.builder()
                                                        .queueUrl(qurl)
                                                        .receiptHandle(msg.receiptHandle())
                                                        .visibilityTimeout(100)
                                                        .build();
                                                sqsclient.changeMessageVisibility(req);
                                                if (!StringUtils.isEmpty(msg.body())) {
                                                    System.out.println(msg.body());
                                                    JSONObject jsondata = JSONObject.parseObject(msg.body());
                                                    String eventtype = jsondata.getString("eventtype");
                                                    System.out.println(eventtype);
                                                    List<Map<String, String>> jl = new ArrayList<Map<String, String>>();
                                                    //装填数据
                                                    if (eventtype.equals("BC-Approved-by-client")) {
                                                        Map<String, String> jdata = new HashMap<String, String>();
                                                        jdata.put("PK", jsondata.getString("PK"));
                                                        jdata.put("SK", jsondata.getString("SK"));
                                                        jdata.put("type", "event");
                                                        jdata.put("eventtype", "BC-Approved-by-client");
                                                        jl.add(jdata);
                                                    } else if (eventtype.equals("Batch-of-BCs-Approved-by-client")) {
                                                        JSONArray barcodes = JSONObject.parseArray(jsondata.getString("barcodes"));
                                                        for (Iterator<Object> iterator = barcodes.iterator(); iterator.hasNext(); ) {
                                                            JSONObject jsonObject = (JSONObject) iterator.next();
                                                            //拼接一个json数组集合
                                                            Map<String, String> jdata = new HashMap<String, String>();
                                                            String barcode = jsonObject.getString("barcode");
                                                            String SEQDATE = jsonObject.getString("sequencing_date");
                                                            System.out.println(barcode + ":" + SEQDATE);
                                                            jdata.put("PK", "BC#BATCH#" + barcode);
                                                            jdata.put("SK", "#SEQDATE#" + SEQDATE + "#BCAPPROVED#1622418658001");
                                                            jdata.put("type", "event");
                                                            jdata.put("eventtype", "Batch-of-BCs-Approved-by-client");
                                                            jl.add(jdata);
                                                        }
                                                    }
                                                    //{PK: "BC#TST00000123" ,SK: "#SEQDATE#1617880032#BCADDED#1621896770657", source: "app_db_result_approval", type: "event", eventtype: "BC-Approved-by-sqsclient-already-exist-in-App"}
                                                    //{ "PK": "BC#HKA00001122", "SK": "#SEQDATE#1623067916#BCAPPROVED#1622418658001", "type": "BC-Approved-by-sqsclient", "created": "1621896770657" };
                                                    // {PK: "BC#TST00000123",SK: "#SEQDATE#1617880032#BCADDED#1621896770657", source: "app_db_result_approval", type: "event", eventtype: "BC-Approved-by-sqsclient-already-exist-in-App"}
                                                    JSONArray objects = JSONObject.parseArray(JSONObject.toJSONString(jl));
                                                    for (Iterator<Object> iterator = objects.iterator(); iterator.hasNext(); ) {
                                                        try {
                                                            JSONObject jsonObject = (JSONObject) iterator.next();
                                                            int index = eventtype.equals("Batch-of-BCs-Approved-by-client") ? 2 : 1;
                                                            String bc = jsonObject.getString("PK").split("#")[index];
                                                            Dnakit dnakit = dnakitDao.find("barcode", bc);
                                                            Udata udata = udataDao.findBy("barcode", bc);
                                                            logmap.put("PK", jsonObject.getString("PK"));
                                                            String logsk = jsonObject.getString("SK").replaceAll("(?<=#SEQDATE#[0-9]{0,13}#)BCAPPROVED#[0-9]{0,13}", bc + "#" + System.currentTimeMillis());
                                                            logmap.put("SK", logsk);
                                                            logmap.put("created", jsondata.getString("created"));
                                                            logmap.put("type", "event");
                                                            HashMap<String, String> jm = new HashMap<String, String>();
                                                            if (dnakit != null || udata != null) {
                                                                jm.put("PK", jsonObject.getString("PK"));
                                                                String regex = "(?<=#SEQDATE#[0-9]{0,13}#)BCAPPROVED#[0-9]{0,13}";
                                                                String v = bc + "#" + System.currentTimeMillis();
                                                                String sk = jsonObject.getString("SK").replaceAll(regex, v);
                                                                System.out.println("[dnakit != null|| udata != null]--->SK:" + sk);
                                                                jm.put("SK", sk);
                                                                jm.put("source", "app_db_result_approval");
                                                                jm.put("type", "event");
                                                                jm.put("created", jsondata.getString("created"));
                                                                jm.put("eventtype", "BC-Approved-by-client-already-exist-in-App");
                                                                amazondb.save(jm);
                                                                // {PK: "BC#TST00000123" , SK: "#SEQDATE#1623067916" ,type: "report" , script: "epiage", result: {"epiage": 43, "accuracy": 98, "expage": 37, "deviation": 1, "quality_level": "green", "new_sample_required": false}}
                                                                jm.clear();
                                                            }
                                                            jm.put("PK", jsonObject.getString("PK").replace("#BATCH", ""));
                                                            String v1 = jsonObject.getString("SK").replaceAll("(?<=#SEQDATE#[0-9]{0,13})#BCAPPROVED#[0-9]{0,13}", "");
                                                            jm.put("SK", v1);
                                                            JSONObject jsondb = JSONObject.parseObject(amazondb.find(jm)); //{}
                                                            jm.clear();
                                                            //查询数据库判断生物学年龄是否和同步数据一致
                                                            // 如果更新成功则将BC-Approved-by-client-send-to-App写入DEJ,否则写入BC-Approved-by-sqsclient-send-to-App-Failed
                                                            //只同步
                                                            System.out.println(jsondb.toJSONString());
                                                            String jr = (!jsondb.isEmpty()) ? jsondb.getString("result") : "{epiage:0,accuracy:0,expage:0}";
                                                            JSONObject jv = JSONObject.parseObject(jr);
                                                            String biological = jv.getString("epiage");
                                                            String accuracy = jv.getString("accuracy");
                                                            String expage = jv.getString("expage");
                                                            jm.put("PK", jsonObject.getString("PK"));
                                                            String v2 = jsonObject.getString("SK").replaceAll("(?<=#SEQDATE#[0-9]{0,13}#)BCAPPROVED#[0-9]{0,13}", bc + "#" + System.currentTimeMillis());
                                                            jm.put("SK", v2);
                                                            jm.put("source", "app_db_result_approval");
                                                            jm.put("type", "event");
                                                            jm.put("created", jsondata.getString("created"));
                                                            jm.put("eventtype", "BC-Approved-by-client-send-to-App");
                                                            if (dnakit == null && udata == null) {
                                                                Dnakit dnk = new Dnakit();
                                                                dnk.setName("DNA Methylation Kit");
                                                                dnk.setBarcode(bc);
                                                                dnk.setExpage(expage);
                                                                dnk.setAccuracy(accuracy);
                                                                dnk.setBiological(biological);
                                                                dnk.setCreatetime(System.currentTimeMillis());
                                                                dnakitDao.save(dnk);
                                                                amazondb.save(jm);
                                                            } else {
                                                                if (dnakit != null) {
                                                                    dnakit.setBiological(biological);
                                                                    dnakit.setAccuracy(accuracy);
                                                                    dnakit.setExpage(expage);
                                                                    dnakitDao.update(dnakit);
                                                                } else if (udata != null) {
                                                                    udata.setBiological(Double.parseDouble(biological));
                                                                    udata.setAccuracy(accuracy);
                                                                    udataDao.update(udata);
                                                                }
                                                                amazondb.save(jm);
                                                            }
                                                            jm.clear();
                                                            // {PK: "BC#BATCH", SK: "#BCADDED#1621896770657", source: "app_db_result_approval", type: "event",  eventtype: "Batch-of-BCs-Approved-by-sqsclient-App-sync-results", results: "Failed-Partially",
//                                            barcodes: [{ "barcode": 5215318261, "sequencing_date": 1617880032 }, { "barcode": 3413530753, "sequencing_date": 1617880032 }] ,created: 1621896770657 }
                                                            System.out.println(msg.body());
                                                            logmap.put("eventtype", "BC-Approved-by-client-update-success");
                                                            amazondb.save(logmap);
                                                        } catch (Exception e) {
                                                            errortimes++;
                                                            logmap.put("eventtype", "BC-Approved-by-client-update-failed");
                                                            amazondb.save(logmap);
                                                            e.printStackTrace();
                                                            throw new Exception(e.getMessage());
                                                        }
                                                    }
                                                }
                                            } catch (Exception e) {
                                                batchmsg(errortimes, amazondb, msg);
                                                amazondb.close();
                                                in.close();
                                                DeleteMessageRequest deleteMessageRequest = DeleteMessageRequest.builder().queueUrl(qurl).receiptHandle(msg.receiptHandle()).build();
                                                sqsclient.deleteMessage(deleteMessageRequest);
                                                e.printStackTrace();
                                                throw new Exception(e.getMessage());
                                            }
                                            System.out.println(JSONObject.toJSONString(logmap));
                                            batchmsg(errortimes, amazondb, msg);
                                            //删除消息
                                            DeleteMessageRequest deleteMessageRequest = DeleteMessageRequest.builder().queueUrl(qurl).receiptHandle(msg.receiptHandle()).build();
                                            sqsclient.deleteMessage(deleteMessageRequest);
                                        }
                                    }
                                    amazondb.close();
                                }
                                in.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                                throw new RuntimeException(e.getMessage());
                            }
                        }
                    }

                    private void batchmsg(int errortimes, Amazondb amazondb, Message msg) {
                        if (JSONObject.parseObject(msg.body()).getString("eventtype").equals("Batch-of-BCs-Approved-by-client")) {
                            int len = JSONArray.parseArray(JSONObject.parseObject(msg.body()).getString("barcodes")).size();
                            Map<String, String> bresult = new HashMap<String, String>();
                            bresult.put("PK", JSONObject.parseObject(msg.body()).getString("PK"));
                            bresult.put("SK", "#BCADDED#" + System.currentTimeMillis());
                            bresult.put("type", "event");
                            bresult.put("eventtype", "Batch-of-BCs-Approved-by-client-App-sync-results");
                            bresult.put("created", String.valueOf(System.currentTimeMillis()));
                            bresult.put("result", errortimes == 0 ? "success" : errortimes == len ? "failed" : "partial-success");
                            bresult.put("barcodes", JSONObject.parseObject(msg.body()).getString("barcodes"));
                            amazondb.save(bresult);
                        }
                    }
                }).start();
            }

        }
    }
}


