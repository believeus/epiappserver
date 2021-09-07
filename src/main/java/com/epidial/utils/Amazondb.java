package com.epidial.utils;


import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.DataEventJournal;
import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.core.waiters.WaiterResponse;
import software.amazon.awssdk.enhanced.dynamodb.*;
import software.amazon.awssdk.enhanced.dynamodb.model.QueryConditional;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.dynamodb.DynamoDbClient;
import software.amazon.awssdk.services.dynamodb.model.*;
import software.amazon.awssdk.services.dynamodb.waiters.DynamoDbWaiter;

import java.lang.reflect.Method;
import java.util.*;

@Component
public class Amazondb {
    public static String epixFlowReportsTable = "EpixFlowReports";
    public static String epixFlowBarcodeStatusTable = "EpixFlowBarcodeStatus";
    private DynamoDbClient dbClient;
    private String tablename;

    private Amazondb() {
    }

    public Amazondb(String tablename) {
        this.tablename = tablename;
        //如果以匿名用户登录需要配置环境变量指向credentials
        // export AWS_CREDENTIAL_PROFILES_FILE=/root/.aws/credentials
        AwsBasicCredentials awsCreds = AwsBasicCredentials.create(
                "",
                "");

        dbClient = DynamoDbClient.builder().credentialsProvider(StaticCredentialsProvider.create(awsCreds)).region(Region.US_EAST_1).build();
        initTable(epixFlowReportsTable);
        initTable(epixFlowBarcodeStatusTable);
    }

    public void remove(String key, String keyVal) {
        HashMap<String, AttributeValue> keyToGet = new HashMap<String, AttributeValue>();
        keyToGet.put(key, AttributeValue.builder().s(keyVal).build());
        DeleteItemRequest deleteReq = DeleteItemRequest.builder().tableName(this.tablename).key(keyToGet).build();
        dbClient.deleteItem(deleteReq);
    }

    public void initTable(String tablename) {
        ListTablesRequest request = ListTablesRequest.builder().build();
        ListTablesResponse response = dbClient.listTables(request);
        List<String> tableNames = response.tableNames();
        if (!tableNames.contains(tablename)) {
            DynamoDbWaiter dbWaiter = dbClient.waiter();
            CreateTableRequest req = CreateTableRequest.builder().attributeDefinitions(AttributeDefinition.builder().attributeName("id").attributeType(ScalarAttributeType.S).build())
                    .keySchema(KeySchemaElement.builder().attributeName("id").keyType(KeyType.HASH).build())
                    .provisionedThroughput(ProvisionedThroughput.builder().readCapacityUnits(new Long(10)).writeCapacityUnits(new Long(10)).build())
                    .tableName(tablename)
                    .build();
            CreateTableResponse resp = dbClient.createTable(req);
            DescribeTableRequest tableRequest = DescribeTableRequest.builder().tableName(tablename).build();
            // Wait until the Amazon DynamoDB table is created
            WaiterResponse<DescribeTableResponse> waiterResponse = dbWaiter.waitUntilTableExists(tableRequest);
            waiterResponse.matched().response().ifPresent(System.out::println);
            //System.out.println(resp.tableDescription().tableName());
        } else {
            //System.out.println(tablename+" table already exists");
        }
    }

    public List<DataEventJournal> findReprot(String PK) {
        List<DataEventJournal> vbox = new ArrayList<DataEventJournal>();
        DynamoDbEnhancedClient enhancedClient = DynamoDbEnhancedClient.builder().dynamoDbClient(dbClient).build();
        DynamoDbTable<DataEventJournal> mappedTable = enhancedClient.table("DataEventJournal", TableSchema.fromBean(DataEventJournal.class));
        Map<String, AttributeValue> value = new HashMap<>();
        value.put(":val", AttributeValue.builder().s("report").build());
        Map<String, String> name = new HashMap<>();
        name.put("#type", "type");
        Expression expression = Expression.builder().expressionNames(name).expressionValues(value).expression("#type = :val").build();
        QueryConditional queryConditional = QueryConditional.keyEqualTo(Key.builder().partitionValue(PK).build());
        Iterator<DataEventJournal> it = mappedTable.query(r -> r.queryConditional(queryConditional).filterExpression(expression)).items().iterator();
        while (it.hasNext()) {
            vbox.add(it.next());
        }
        return vbox;
    }

    public List<DataEventJournal> find(String PK) {
        return find(PK,"","");
    }
//    example: 查找type=report
//    Map<String,String> args=new HashMap<String,String>();
//    args.put("type","report");
//    List<DataEventJournal> reprot = amazondb.find("BC#LTST013451756",args);
    public List<DataEventJournal> find(String primarykey, String colName,String colVal)  {
        List<DataEventJournal> vbox = new ArrayList<DataEventJournal>();
        DynamoDbEnhancedClient enhancedClient = DynamoDbEnhancedClient.builder().dynamoDbClient(dbClient).build();
        DynamoDbTable<DataEventJournal> mappedTable = enhancedClient.table("DataEventJournal", TableSchema.fromBean(DataEventJournal.class));
        Map<String, String> name = Maps.newIdentityHashMap();
        Map<String, AttributeValue> value = Maps.newIdentityHashMap();
        QueryConditional queryConditional = QueryConditional.keyEqualTo(Key.builder().partitionValue(primarykey).build());
        Expression.Builder builder = Expression.builder();
        name.put("#"+colName, colName);
        value.put(":"+colName, AttributeValue.builder().s(colVal).build());
        builder.expressionNames(name).expressionValues(value).expression("#"+colName+"=:"+colName);
        Iterator<DataEventJournal> i1 = mappedTable.query(r -> r.queryConditional(queryConditional).filterExpression(builder.build())).items().iterator();
        while (i1.hasNext()) {
            vbox.add(i1.next());
        }
        return vbox;

    }

    public String find(Map<String, String> mdata) {
        HashMap<String, AttributeValue> keyToGet = new HashMap<String, AttributeValue>();
        Iterator<String> it = mdata.keySet().iterator();
        while (it.hasNext()) {
            String key = it.next();
            String value = mdata.get(key);
            System.out.println(key + ":" + value);
            keyToGet.put(key, AttributeValue.builder().s(value).build());
        }
        GetItemRequest request = GetItemRequest.builder().key(keyToGet).tableName(this.tablename).build();
        Map<String, AttributeValue> item = dbClient.getItem(request).item();
        if (item != null) {
            Map<String, String> jm = new HashMap<String, String>();
            Iterator<String> iterator = item.keySet().iterator();
            while (iterator.hasNext()) {
                String k = iterator.next();
                String v = item.get(k).s();
                jm.put(k, v);
            }
            return JSONObject.toJSONString(jm);
        }
        return "";
    }

    public void save(Map<String, String> mdata) {
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

    public void updata(Map<String, String> PKMap, Map<String, String> updatekeyvalue) {
        HashMap<String, AttributeValue> itemKey = new HashMap<String, AttributeValue>();
        for (Iterator<String> it = PKMap.keySet().iterator(); it.hasNext(); ) {
            String key = it.next();
            String value = PKMap.get(key);
            itemKey.put(key, AttributeValue.builder().s(value).build());
        }
        HashMap<String, AttributeValueUpdate> updatedValues = new HashMap<String, AttributeValueUpdate>();
        for (Iterator<String> it = updatekeyvalue.keySet().iterator(); it.hasNext(); ) {
            // Update the column specified by name with updatedVal
            String updatakey = it.next();
            String updateVal = updatekeyvalue.get(updatakey);
            updatedValues.put(updatakey, AttributeValueUpdate.builder().value(AttributeValue.builder().s(updateVal).build()).action(AttributeAction.PUT).build());
        }
        UpdateItemRequest request = UpdateItemRequest.builder().tableName(tablename).key(itemKey).attributeUpdates(updatedValues).build();
        dbClient.updateItem(request);

    }

    public void close() {
        dbClient.close();
    }


}
