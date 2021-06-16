package com.epidial.sync;

import javax.annotation.Resource;

import com.epidial.dao.epi.DnakitDao;
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

import java.util.List;


@Component
public class Sysdb implements ApplicationListener<ApplicationEvent> {

    @Resource
    private DnakitDao dnakitDao;
    private boolean isrun = false;

    // tomcat第一次启动会调用这个方法
    @Override
    public void onApplicationEvent(ApplicationEvent event) {
        // tomcat启动完毕调用该方法
        if (event instanceof ContextRefreshedEvent) {
            if (!isrun) {
                isrun=true;
                new Thread(new Runnable() {
                    private String qurl = "https://sqs.us-east-1.amazonaws.com/381270507532/lims-data-sqs";
                    private int maxNumberOfMessages = 5;
                    SqsClient client = SqsClient.builder().region(Region.US_EAST_1).build();
                    ReceiveMessageRequest receiveRequest = ReceiveMessageRequest.builder().queueUrl(qurl).maxNumberOfMessages(maxNumberOfMessages).waitTimeSeconds(5).build();
                    @Override
                    public void run() {
                        while (true) {
                                List<Message> messages = client.receiveMessage(receiveRequest).messages();
                                for (Message msg : messages) {
                                    //改变消息的可见性超时，即这段时间内一个消费者进行消费时其他消费者对消息不可见
                                    ChangeMessageVisibilityRequest req = ChangeMessageVisibilityRequest.builder()
                                            .queueUrl(qurl)
                                            .receiptHandle(msg.receiptHandle())
                                            .visibilityTimeout(100)
                                            .build();
                                    client.changeMessageVisibility(req);
                                    System.out.println(msg.body());
                                    //删除消息
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


