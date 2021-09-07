package com.epidial.bean;

import com.aliyuncs.utils.StringUtils;
import software.amazon.awssdk.enhanced.dynamodb.mapper.annotations.DynamoDbBean;
import software.amazon.awssdk.enhanced.dynamodb.mapper.annotations.DynamoDbPartitionKey;
import software.amazon.awssdk.enhanced.dynamodb.mapper.annotations.DynamoDbSecondarySortKey;
import software.amazon.awssdk.enhanced.dynamodb.mapper.annotations.DynamoDbSortKey;

@DynamoDbBean
public class DataEventJournal {
    private String PK;
    private String SK;
    private String created;
    private String type;
    private String eventtype;
    private String result;
    private String creation_time_utc;
    public DataEventJournal(){
        this.result="{epiage:0,accuracy:0,expage:0}";
    }
    @DynamoDbPartitionKey
    public String getPK() {
        return PK;
    }

    public void setPK(String PK) {
        this.PK = PK;
    }
    @DynamoDbSortKey
    public String getSK() {
        return SK;
    }

    public void setSK(String SK) {
        this.SK = SK;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEventtype() {
        return eventtype;
    }

    public void setEventtype(String eventtype) {
        this.eventtype = eventtype;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;

    }

    public String getCreation_time_utc() {
        return creation_time_utc;
    }

    public void setCreation_time_utc(String creation_time_utc) {
        this.creation_time_utc = creation_time_utc;
    }
}
