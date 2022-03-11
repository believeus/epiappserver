package com.epidial.sync;

import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.utils.StringUtils;
import com.epidial.bean.DataEventJournal;
import com.epidial.bean.Dnakit;
import com.epidial.bean.Udata;
import com.epidial.dao.epi.DnakitDao;
import com.epidial.dao.epi.UdataDao;
import com.epidial.utils.Amazondb;
import javafx.scene.chart.PieChart;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.sqs.SqsClient;
import software.amazon.awssdk.services.sqs.model.ChangeMessageVisibilityRequest;
import software.amazon.awssdk.services.sqs.model.DeleteMessageRequest;
import software.amazon.awssdk.services.sqs.model.Message;
import software.amazon.awssdk.services.sqs.model.ReceiveMessageRequest;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

@Component
public class Synlims implements ApplicationListener<ApplicationEvent> {
    private boolean isrun = false;
    @Resource
    private DnakitDao dnakitDao;
    @Resource
    private UdataDao udataDao;
    private Map<String,String> statusmap=new HashMap<String,String>();
    {
        statusmap.put("in-transit","in-transit");
        statusmap.put("POST_FROM_LAB","pending");
        statusmap.put("PARCEL_RECEIVED","pending");
        statusmap.put("REGISTERED_IN_LIMS","processing");
        statusmap.put("WAITING_DNA_PREP","processing");
        statusmap.put("SEQUENCING","processing");
        statusmap.put("Completed","ready");
    }
    @Override
    public void onApplicationEvent(ApplicationEvent applicationEvent) {
        if (applicationEvent instanceof ContextRefreshedEvent) {
            System.out.println("Synlims:listen.....");
            if (!isrun) {
                isrun = true;
                new Thread(new Runnable() {
                   private String qurl = "https://sqs.us-east-1.amazonaws.com/381270507532/dev-lims-data";
 //                     private String qurl = "https://sqs.us-east-1.amazonaws.com/381270507532/lucksqs";
                    private int maxNumberOfMessages = 1;
                    //SqsClient client = SqsClient.builder().region(Region.US_EAST_1).build();

                    AwsBasicCredentials awsCreds = AwsBasicCredentials.create(
                            "AKIAVRRL6IAGDBOWCH7V\n" +
                                    "\n",
                            "g+aUkPfo4RVfeDJ78dcP0jXLfgeJhIc0OE5wb5hd");

                    SqsClient client = SqsClient.builder().credentialsProvider(StaticCredentialsProvider.create(awsCreds)).region(Region.US_EAST_1).build();//us-west-2
                    ReceiveMessageRequest receiveRequest = ReceiveMessageRequest.builder().queueUrl(qurl).maxNumberOfMessages(maxNumberOfMessages).waitTimeSeconds(5).build();
                    @Override
                    public void run() {
                        boolean syn=false;
                        while (!syn) {
                            List<Message> messages = client.receiveMessage(receiveRequest).messages();
                            Amazondb amazondb = new Amazondb("DataEventJournal");
                            for (Message msg : messages) {
                                ChangeMessageVisibilityRequest req = ChangeMessageVisibilityRequest.builder()
                                        .queueUrl(qurl)
                                        .receiptHandle(msg.receiptHandle())
                                        .visibilityTimeout(100)
                                        .build();
                                client.changeMessageVisibility(req);
//                               { "PK": "BC#HKA00013221", "SK": "#STATUS_CHANGE#TS#1629424242942","detection":"0","type":""event, "eventtype": "POST_FROM_LAB", "creation_time_utc": "1621896770657" ,"status":"RECEIVED_AT_LAB","SAMPLE_NAME": "saliva","Courier":"taobao","STATUS_DATE": "210820 09:50:42","TrackingID":"8765433222455"}
//                              { "PK": "TN#8765433222455","SK": "#STATUS_CHANGE#TS#1629424111111", "detection":"0","type":"event", "eventtype": "PARCEL_RECEIVED", "creation_time_utc": "1629424111111" , "courier":"SF Express", "trackingID":"8765433222455", "STATUS": "Good_Condition", "STATUS_DATE": "210820 09:50:42"}
//                             { "PK": "BC#HKA00013221", "SK": "#STATUS_CHANGE#TS#1629424242942", "detection":"0","type":"event", "eventtype": "REGISTERED_IN_LIMS", "creation_time_utc": "1621896770657" , "courier":"SF Express", "trackingID":"8765433222455", "STATUS": "Good_Condition", "STATUS_DATE": "210820 09:50:42" }
//                              { "PK": "BC#HKA00013221", "SK": "#STATUS_CHANGE#TS#1629424242942", "detection":"1629424242942","type":"event", "eventtype": "WAITING_DNA_PREP", "creation_time_utc": "1621896770657" , "STATUS_DATE": "210820 09:50:42" }
//                              { "PK": "BC#HKA00013221", "SK": "#STATUS_CHANGE#TS#1629424242942","detection":"1629424242942", "type":"event", "eventtype": "SEQUENCING", "SAMPLE_NAME": "HKA00013221-abcd_S100_L001_R1_001", "creation_time_utc": "1621896770657" , "STATUS_DATE": "210820 09:50:42" }
//                              { "PK": "BC#HKA00013221", "SK": "#STATUS_CHANGE#TS#1629424242942",  "type":"event", "eventtype": "Completed", "SAMPLE_NAME": "HKA00013221-abcd_S100_L001_R1_001", "creation_time_utc": "1621896770657" , "STATUS_DATE": "210820 09:50:42" }
//                              {"PK": "BC#HKA00013221" , "SK": "#SEQDATE#1629424242942" ,type: "report" , script: "epiage", result: {"epiage": 43, "accuracy": 98, "expage": 37, "deviation": 1, "quality_level": "green", "new_sample_required": false}}
                                System.out.println(msg.body());
                                JSONObject srcdata = JSONObject.parseObject(msg.body());
                                if (!srcdata.getString("type").equals("report")) {
                                    String PK = srcdata.getString("PK");
                                    String bc = PK.split("#")[1];
                                    Dnakit dnakit = dnakitDao.find("barcode", bc);
                                    Udata udata = udataDao.findBy("barcode", bc);
                                    HashMap<String, String> jm = new HashMap<String, String>();
                                    if (dnakit != null || udata != null) {
                                        jm.put("PK", srcdata.getString("PK"));
                                        jm.put("SK", srcdata.getString("SK").replaceAll("(?<=#STATUS_CHANGE#TS#)[0-9]{0,13}", String.valueOf(System.currentTimeMillis())));
                                        jm.put("source", "app_db_result_approval");
                                        jm.put("type", "event");
                                        jm.put("created", srcdata.getString("creation_time_utc"));
                                        jm.put("eventtype", "BC-Approved-by-client-already-exist-in-App");
                                        amazondb.save(jm);
                                        jm.clear();
                                    }
                                    List<DataEventJournal> dataEventJournals = amazondb.find(srcdata.getString("PK"), "type", "report");
                                    DataEventJournal dataEventJournal = (!dataEventJournals.isEmpty()) ? dataEventJournals.get(0) : new DataEventJournal();
                                    jm.clear();
                                    JSONObject jv = JSONObject.parseObject(dataEventJournal.getResult());
                                    String biological = jv.getString("epiage");
                                    String accuracy = jv.getString("accuracy");
                                    String expage = jv.getString("expage");
                                    jm.put("PK", srcdata.getString("PK"));
                                    // { "PK": "BC#HKA00013221", "SK": "#STATUS_CHANGE#TS#1629424242942","type":""event, "eventtype": "RECEIVED_AT_LAB", "created": "1621896770657" ,"status":"RECEIVED_AT_LAB","SAMPLE_NAME": "saliva","Courier":"taobao","STATUS_DATE": "210820 09:50:42","TrackingID":"8765433222455"}
                                    String v2 = srcdata.getString("SK").replaceAll("(?<=#STATUS_CHANGE#TS#)[0-9]{0,13}", String.valueOf(System.currentTimeMillis()));
                                    jm.put("SK", v2);
                                    jm.put("source", "app_db_result_approval");
                                    jm.put("type", "event");
                                    jm.put("creation_time_utc", String.valueOf(System.currentTimeMillis()));
                                    jm.put("eventtype", "BC-Approved-by-client-send-to-App");
                                    String labevent=srcdata.getString("eventtype");
                                    String detection=srcdata.getString("detection");
                                    if (dnakit == null && udata == null) {
                                        Dnakit dnk = new Dnakit().setName("DNA Methylation Kit").setBarcode(bc)
                                                .setExpage(expage).setAccuracy(accuracy).setBiological(biological)
                                                .setEventtype(labevent).setCreatetime(System.currentTimeMillis()).setDetection(detection);
                                        dnakitDao.save(dnk);
                                        amazondb.save(jm);
                                    } else {
                                        if (dnakit != null) {
                                            dnakit.setBiological(biological)
                                                    .setAccuracy(accuracy)
                                                    .setExpage(expage)
                                                    .setEventtype(labevent)
                                                    .setDetection(detection);
                                            dnakitDao.update(dnakit);
                                        } else if (udata != null) {
                                            udata.setBiological(Double.parseDouble(biological));
                                            udata.setAccuracy(accuracy);
                                            udata.setStatus(statusmap.get(labevent));
                                            udata.setLabevent(labevent);
                                            udata.setDetectTime(Long.parseLong(detection));
                                            udataDao.update(udata);
                                        }
                                        amazondb.save(jm);
                                    }
                                    jm.clear();
                                }
                                DeleteMessageRequest deleteMessageRequest = DeleteMessageRequest.builder()
                                        .queueUrl(qurl)
                                        .receiptHandle(msg.receiptHandle())
                                        .build();
                                client.deleteMessage(deleteMessageRequest);
                            }
                        }
                    }
                }).start();
            }
        }
    }
}
