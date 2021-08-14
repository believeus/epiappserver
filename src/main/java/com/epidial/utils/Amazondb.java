package com.epidial.utils;


import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Component;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.core.waiters.WaiterResponse;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.dynamodb.DynamoDbClient;
import software.amazon.awssdk.services.dynamodb.model.*;
import software.amazon.awssdk.services.dynamodb.waiters.DynamoDbWaiter;

import java.util.*;
@Component
public class Amazondb {
    public static String epixFlowReportsTable = "EpixFlowReports";
    public static String epixFlowBarcodeStatusTable="EpixFlowBarcodeStatus";
    private DynamoDbClient dbClient;
    private String tablename;

    private Amazondb(){}
    public Amazondb(String tablename){
        this.tablename=tablename;
        //如果以匿名用户登录需要配置环境变量指向credentials
        // export AWS_CREDENTIAL_PROFILES_FILE=/root/.aws/credentials
        AwsBasicCredentials awsCreds = AwsBasicCredentials.create(
                "",
                "");

        dbClient =DynamoDbClient.builder().credentialsProvider(StaticCredentialsProvider.create(awsCreds)).region(Region.US_EAST_1).build();
        initTable(epixFlowReportsTable);
        initTable(epixFlowBarcodeStatusTable);
    }
    public  void remove(String key, String keyVal) {
        HashMap<String,AttributeValue> keyToGet = new HashMap<String,AttributeValue>();
        keyToGet.put(key, AttributeValue.builder().s(keyVal).build());
        DeleteItemRequest deleteReq = DeleteItemRequest.builder().tableName(this.tablename).key(keyToGet).build();
        dbClient.deleteItem(deleteReq);
    }
    public  void initTable(String tablename) {
        ListTablesRequest request = ListTablesRequest.builder().build();
        ListTablesResponse response = dbClient.listTables(request);
        List<String> tableNames = response.tableNames();
        if(!tableNames.contains(tablename)){
            DynamoDbWaiter dbWaiter = dbClient.waiter();
            CreateTableRequest req = CreateTableRequest.builder().attributeDefinitions(AttributeDefinition.builder().attributeName("id").attributeType(ScalarAttributeType.S).build())
                    .keySchema(KeySchemaElement.builder().attributeName("id").keyType(KeyType.HASH).build())
                    .provisionedThroughput(ProvisionedThroughput.builder().readCapacityUnits(new Long(10)).writeCapacityUnits(new Long(10)).build())
                    .tableName(tablename)
                    .build();
            CreateTableResponse resp = dbClient.createTable(req);
            DescribeTableRequest tableRequest = DescribeTableRequest.builder().tableName(tablename).build();
            // Wait until the Amazon DynamoDB table is created
            WaiterResponse<DescribeTableResponse> waiterResponse =  dbWaiter.waitUntilTableExists(tableRequest);
            waiterResponse.matched().response().ifPresent(System.out::println);
            //System.out.println(resp.tableDescription().tableName());
        }else{
            //System.out.println(tablename+" table already exists");
        }
    }
    public String find(Map<String, String> mdata){
        HashMap<String,AttributeValue> keyToGet = new HashMap<String,AttributeValue>();
        Iterator<String> it = mdata.keySet().iterator();
        while (it.hasNext()) {
            String key = it.next();
            String value = mdata.get(key);
            System.out.println(key+":"+value);
            keyToGet.put(key, AttributeValue.builder().s(value).build());
        }
        GetItemRequest request = GetItemRequest.builder().key(keyToGet).tableName(this.tablename).build();
        Map<String, AttributeValue> item = dbClient.getItem(request).item();
        if (item!=null){
            Map<String,String> jm=new HashMap<String,String>();
            Iterator<String> iterator = item.keySet().iterator();
            while (iterator.hasNext()){
                String k=iterator.next();
                String v=item.get(k).s();
                jm.put(k,v);
            }
            return JSONObject.toJSONString(jm);
        }
        return "";
    }
    public  void save(Map<String, String> mdata) {
        try {
        HashMap<String, AttributeValue> itemValues = new HashMap<String, AttributeValue>();
        Iterator<String> it = mdata.keySet().iterator();
        while (it.hasNext()) {
            String key = it.next();
            String value = mdata.get(key);
            itemValues.put(key, AttributeValue.builder().s(value).build());
        }
        // Add all content to the table
        PutItemRequest request = PutItemRequest.builder().tableName(tablename).item(itemValues).build();

            dbClient.putItem(request);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public  void  updata(Map<String,String> PKMap,Map<String, String> updatekeyvalue){
        HashMap<String,AttributeValue> itemKey = new HashMap<String,AttributeValue>();
        for ( Iterator<String> it = PKMap.keySet().iterator();it.hasNext();) {
            String key = it.next();
            String value = PKMap.get(key);
            itemKey.put(key, AttributeValue.builder().s(value).build());
        }
        HashMap<String,AttributeValueUpdate> updatedValues = new HashMap<String,AttributeValueUpdate>();
        for(Iterator<String> it = updatekeyvalue.keySet().iterator();it.hasNext();){
            // Update the column specified by name with updatedVal
            String updatakey = it.next();
            String updateVal = updatekeyvalue.get(updatakey);
            updatedValues.put(updatakey, AttributeValueUpdate.builder().value(AttributeValue.builder().s(updateVal).build()).action(AttributeAction.PUT).build());
        }
        UpdateItemRequest request = UpdateItemRequest.builder().tableName(tablename).key(itemKey).attributeUpdates(updatedValues).build();
        dbClient.updateItem(request);

    }
    public void close(){
        dbClient.close();
    }


}
