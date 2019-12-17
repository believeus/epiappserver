package com.epidial.bean;

public class UdataDto {
    private String id;
    private String uuid;//用户id
    private double naturally;
    private double biological;
    private String barcode;
    private String status;//状态：pending processing finished
    private String createTime;//创建时间
    private String uploadTime;//上传barcode时间
    public UdataDto(){}

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public double getNaturally() {
        return naturally;
    }

    public void setNaturally(double naturally) {
        this.naturally = naturally;
    }

    public double getBiological() {
        return biological;
    }

    public void setBiological(double biological) {
        this.biological = biological;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(String uploadTime) {
        this.uploadTime = uploadTime;
    }
}
