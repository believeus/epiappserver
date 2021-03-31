package com.epidial.utils;


import org.springframework.stereotype.Component;
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
    public Amazondb(){
        initTable(epixFlowReportsTable);
        initTable(epixFlowBarcodeStatusTable);
    }
    public  void deleteItem(String tableName, String key, String keyVal) {
        DynamoDbClient ddb =DynamoDbClient.builder().region(Region.US_EAST_1).build();
        HashMap<String,AttributeValue> keyToGet = new HashMap<String,AttributeValue>();
        keyToGet.put(key, AttributeValue.builder().s(keyVal).build());
        DeleteItemRequest deleteReq = DeleteItemRequest.builder().tableName(tableName).key(keyToGet).build();
        ddb.deleteItem(deleteReq);
        ddb.close();
    }
    public  void initTable(String tablename) {
        DynamoDbClient ddb =DynamoDbClient.builder().region(Region.US_EAST_1).build();
        ListTablesRequest request = ListTablesRequest.builder().build();
        ListTablesResponse response = ddb.listTables(request);
        List<String> tableNames = response.tableNames();
        if(!tableNames.contains(tablename)){
            DynamoDbWaiter dbWaiter = ddb.waiter();
            CreateTableRequest req = CreateTableRequest.builder().attributeDefinitions(AttributeDefinition.builder().attributeName("id").attributeType(ScalarAttributeType.S).build())
                    .keySchema(KeySchemaElement.builder().attributeName("id").keyType(KeyType.HASH).build())
                    .provisionedThroughput(ProvisionedThroughput.builder().readCapacityUnits(new Long(10)).writeCapacityUnits(new Long(10)).build())
                    .tableName(tablename)
                    .build();
            CreateTableResponse resp = ddb.createTable(req);
            DescribeTableRequest tableRequest = DescribeTableRequest.builder().tableName(tablename).build();
            // Wait until the Amazon DynamoDB table is created
            WaiterResponse<DescribeTableResponse> waiterResponse =  dbWaiter.waitUntilTableExists(tableRequest);
            waiterResponse.matched().response().ifPresent(System.out::println);
            System.out.println(resp.tableDescription().tableName());
            ddb.close();
        }else{
            System.out.println(tablename+" table already exists");
        }
    }

    public  void putItem(String tableName, HashMap<String, String> mdata) {
        DynamoDbClient ddb =DynamoDbClient.builder().region(Region.US_EAST_1).build();
        HashMap<String, AttributeValue> itemValues = new HashMap<String, AttributeValue>();
        mdata.put("id", UUID.randomUUID().toString().substring(0,8));
        Iterator<String> it = mdata.keySet().iterator();
        while (it.hasNext()) {
            String key = it.next();
            String value = mdata.get(key);
            itemValues.put(key, AttributeValue.builder().s(value).build());
        }
        // Add all content to the table
        PutItemRequest request = PutItemRequest.builder().tableName(tableName).item(itemValues).build();
        try {
            ddb.putItem(request);
            System.out.println(tableName + " was successfully updated");
        } catch (ResourceNotFoundException e) {
            System.err.format("Error: The Amazon DynamoDB table \"%s\" can't be found.\n", tableName);
            System.err.println("Be sure that it exists and that you've typed its name correctly!");
            System.exit(1);
        } catch (DynamoDbException e) {
            System.err.println(e.getMessage());
        }
        ddb.close();
    }
}
