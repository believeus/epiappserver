package com.epidial.sync;

import javax.annotation.Resource;

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
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sqs.SqsClient;
import software.amazon.awssdk.services.sqs.model.ChangeMessageVisibilityRequest;
import software.amazon.awssdk.services.sqs.model.DeleteMessageRequest;
import software.amazon.awssdk.services.sqs.model.Message;
import software.amazon.awssdk.services.sqs.model.ReceiveMessageRequest;

import java.io.FileInputStream;
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
    public void onApplicationEvent(ApplicationEvent event) {
        // tomcat启动完毕调用该方法
        if (event instanceof ContextRefreshedEvent) {
            System.out.println("event:" + event.toString());
                if (!isrun) {
                    isrun = true;
                    new Thread(new Runnable() {
                        private String qurl = "https://sqs.us-east-1.amazonaws.com/381270507532/epi-sqs-data";
                        private int maxNumberOfMessages = 1;
                        SqsClient client = SqsClient.builder().region(Region.US_EAST_1).build();
                        ReceiveMessageRequest receiveRequest = ReceiveMessageRequest.builder().queueUrl(qurl).maxNumberOfMessages(maxNumberOfMessages).waitTimeSeconds(5).build();

                        @Override
                        public void run() {
                            while (true) {
                                try {
                                    Properties properties = new Properties();
                                    ClassLoader classLoader = this.getClass().getClassLoader();
                                    FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
                                    properties.load(in);
                                    Boolean synchronize = Boolean.parseBoolean(properties.getProperty("synchronize", "false"));
                                    if (synchronize) {
                                        List<Message> messages = client.receiveMessage(receiveRequest).messages();
                                        for (Message msg : messages) {
                                            Amazondb amazondb = new Amazondb("DataEventJournal");
                                            //改变消息的可见性超时，即这段时间内一个消费者进行消费时其他消费者对消息不可见
                                            ChangeMessageVisibilityRequest req = ChangeMessageVisibilityRequest.builder()
                                                    .queueUrl(qurl)
                                                    .receiptHandle(msg.receiptHandle())
                                                    .visibilityTimeout(100)
                                                    .build();
                                            client.changeMessageVisibility(req);
                                            if (!StringUtils.isEmpty(msg.body())) {
                                                System.out.println(msg.body());
                                                JSONObject jsondata = JSONObject.parseObject(msg.body());
                                                String event = jsondata.getString("type");
                                                System.out.println(event);
                                                List<Map<String, String>> jl = new ArrayList<Map<String, String>>();
                                                if (event.equals("BC-Approved-by-client")) {
                                                    Map<String, String> jdata = new HashMap<String, String>();
                                                    jdata.put("PK", jsondata.getString("PK"));
                                                    jdata.put("SK", jsondata.getString("SK"));
                                                    jdata.put("type", "BC-Approved-by-client");
                                                    jl.add(jdata);
                                                } else if (event.equals("Batch-of-BCs-Approved-by-client")) {
                                                    JSONArray barcodes = JSONObject.parseArray(jsondata.getString("barcodes"));
                                                    for (Iterator<Object> iterator = barcodes.iterator(); iterator.hasNext(); ) {
                                                        JSONObject jsonObject = (JSONObject) iterator.next();
                                                        //拼接一个json数组集合
                                                        Map<String, String> jdata = new HashMap<String, String>();
                                                        String barcode = jsonObject.getString("barcode");
                                                        String SEQDATE = jsonObject.getString("sequencing_date");
                                                        System.out.println(barcode + ":" + SEQDATE);
                                                        jdata.put("PK", "BC#" + barcode);
                                                        jdata.put("SK", "#SEQDATE#" + SEQDATE + "#BCAPPROVED#1622418658001");
                                                        jdata.put("type", "Batch-of-BCs-Approved-by-client");
                                                        jl.add(jdata);
                                                    }
                                                }
                                                //{PK: "BC#TST00000123" ,SK: "#SEQDATE#1617880032#BCADDED#1621896770657", source: "app_db_result_approval", type: "event", eventtype: "BC-Approved-by-client-already-exist-in-App"}
                                                //{ "PK": "BC#HKA00001122", "SK": "#SEQDATE#1623067916#BCAPPROVED#1622418658001", "type": "BC-Approved-by-client", "created": "1621896770657" };
                                                // {PK: "BC#TST00000123",SK: "#SEQDATE#1617880032#BCADDED#1621896770657", source: "app_db_result_approval", type: "event", eventtype: "BC-Approved-by-client-already-exist-in-App"}
                                                JSONArray objects = JSONObject.parseArray(JSONObject.toJSONString(jl));
                                                for (Iterator<Object> iterator = objects.iterator(); iterator.hasNext(); ) {
                                                    JSONObject jsonObject = (JSONObject) iterator.next();
                                                    String bc = jsonObject.getString("PK").split("#")[1];
                                                    Dnakit dnakit = dnakitDao.find("barcode", bc);
                                                    Udata udata = udataDao.findBy("barcode", bc);
                                                    if (dnakit != null || udata != null) {
                                                        HashMap<String, String> jm = new HashMap<String, String>();
                                                        jm.put("PK", jsonObject.getString("PK"));
                                                        String regex = "(?<=#SEQDATE#[0-9]{0,13}#)BCAPPROVED#[0-9]{0,13}";
                                                        String v = bc + "#" + System.currentTimeMillis();
                                                        String sk = jsonObject.getString("SK").replaceAll(regex, v);
                                                        jm.put("SK", sk);
                                                        jm.put("source", "app_db_result_approval");
                                                        jm.put("type", "event");
                                                        jm.put("eventtype", "BC-Approved-by-client-already-exist-in-App");
                                                        amazondb.save(jm);
                                                        // {PK: "BC#TST00000123" , SK: "#SEQDATE#1623067916" ,type: "report" , script: "epiage", result: {"epiage": 43, "accuracy": 98, "expage": 37, "deviation": 1, "quality_level": "green", "new_sample_required": false}}
                                                        jm.clear();
                                                        jm.put("PK", jsonObject.getString("PK"));
                                                        String v1 = jsonObject.getString("SK").replaceAll("(?<=#SEQDATE#[0-9]{0,13})#BCAPPROVED#[0-9]{0,13}", "");
                                                        jm.put("SK", v1);
                                                        String s = amazondb.find(jm); //{}
                                                        jm.clear();
                                                        //查询数据库判断生物学年龄是否和同步数据一致
                                                        // 如果更新成功则将BC-Approved-by-client-send-to-App写入DEJ,否则写入BC-Approved-by-client-send-to-App-Failed
                                                        //此处为了保险起见，就不去查阅了,因为要给库存添加生物学年龄，真实年龄等数据
                                                        if (!StringUtils.isEmpty(s)) {
                                                            System.out.println(s);
                                                            String jr = JSONObject.parseObject(s).getString("result");
                                                            JSONObject jv = JSONObject.parseObject(jr);
                                                            String biological = jv.getString("epiage");
                                                            String accuracy = jv.getString("accuracy");
                                                            String expage = jv.getString("expage");
                                                            System.out.println(Double.parseDouble(biological));
                                                            if (dnakit != null) {
                                                                dnakit.setBiological(biological);
                                                                dnakit.setAccuracy(accuracy);
                                                                dnakit.setExpage(expage);
                                                                dnakitDao.update(dnakit);
                                                            } else if (udata != null) {
                                                                udata.setBiological(Double.parseDouble(biological));
                                                                udataDao.update(udata);
                                                            }
                                                            jm.put("PK", jsonObject.getString("PK"));
                                                            String v2 = jsonObject.getString("SK").replaceAll("(?<=#SEQDATE#[0-9]{0,13}#)BCAPPROVED#[0-9]{0,13}", bc + "#" + System.currentTimeMillis());
                                                            jm.put("SK", v2);
                                                            jm.put("source", "app_db_result_approval");
                                                            jm.put("type", "event");
                                                            jm.put("eventtype", "BC-Approved-by-client-send-to-App");
                                                            amazondb.save(jm);
                                                            jm.clear();
                                                        }
                                                    } else {
                                                        Dnakit dnk = new Dnakit();
                                                        dnk.setName("DNA Methylation Kit");
                                                        dnk.setBarcode(bc);
                                                        dnk.setExpage("0");
                                                        dnk.setAccuracy("0");
                                                        dnk.setBiological("0");
                                                        dnk.setCreatetime(System.currentTimeMillis());
                                                        dnakitDao.save(dnk);
                                                    }
                                                }
                                                if (event.equals("Batch-of-BCs-Approved-by-client")) {
//                                    {PK: "BC#BATCH", SK: "#BCADDED#1621896770657", source: "app_db_result_approval", type: "event",  eventtype: "Batch-of-BCs-Approved-by-client-App-sync-results", results: "Failed-Partially",
//                                            barcodes: [{ "barcode": 5215318261, "sequencing_date": 1617880032 }, { "barcode": 3413530753, "sequencing_date": 1617880032 }] ,created: 1621896770657 }
                                                    System.out.println(msg.body());
                                                    JSONObject jsonObject = JSONObject.parseObject(msg.body());
                                                    HashMap<String, String> map = new HashMap<String, String>();
                                                    map.put("PK", jsonObject.getString("PK"));
                                                    map.put("SK", jsonObject.getString("SK"));
                                                    map.put("source", "app_db_result_approval");
                                                    map.put("type", "event");
                                                    map.put("barcodes", jsonObject.getJSONArray("barcodes").toJSONString());
                                                    map.put("eventtype", "Batch-of-BCs-Approved-by-client-App-sync-results");
                                                    map.put("results", "Success");
                                                    System.out.println(JSONObject.toJSONString(map));
                                                    amazondb.save(map);
                                                    map.clear();
                                                }
                                            }
                                            //删除消息
                                            DeleteMessageRequest deleteMessageRequest = DeleteMessageRequest.builder()
                                                    .queueUrl(qurl)
                                                    .receiptHandle(msg.receiptHandle())
                                                    .build();
                                            client.deleteMessage(deleteMessageRequest);
                                            amazondb.close();
                                        }
                                    }
                                    in.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    }).start();
                }

        }
    }
}

