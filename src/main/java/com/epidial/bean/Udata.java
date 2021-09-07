package com.epidial.bean;

//生物学年龄信息
public class Udata {
    private String id;
    private String uuid;//用户id
    private double naturally;
    private double biological;
    private String accuracy;
    private String barcode;
    private String status;//状态：pending processing finished
    private long createTime;//创建时间
    private long uploadTime;//上传barcode时间
    private long detectTime;//开始检测时间
    private long pendingTime;//暂停时间
    private long curtime;//系统当前时间
    private String email;
    private byte allow;
    private String labevent;
    public Udata(){}

    public Udata(String uuid,String status) {
        this.uuid = uuid;
        this.naturally=0;
        this.biological=0;
        this.accuracy="0";
        this.status=status;
        this.createTime=System.currentTimeMillis();
        this.barcode="";
    }

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }

    public long getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(long uploadTime) {
        this.uploadTime = uploadTime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public byte getAllow() {
        return allow;
    }

    public void setAllow(byte allow) {
        this.allow = allow;
    }

    public long getDetectTime() {
        return detectTime;
    }

    public void setDetectTime(long detectTime) {
        this.detectTime = detectTime;
    }

    public long getPendingTime() {
        return pendingTime;
    }

    public void setPendingTime(long pendingTime) {
        this.pendingTime = pendingTime;
    }

    public long getCurtime() {
        return System.currentTimeMillis();
    }

    public void setCurtime(long curtime) {
        this.curtime = curtime;
    }

    public String getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(String accuracy) {
        this.accuracy = accuracy;
    }

    public String getLabevent() {
        return labevent;
    }

    public void setLabevent(String labevent) {
        this.labevent = labevent;
    }
}
