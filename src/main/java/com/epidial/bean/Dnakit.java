package com.epidial.bean;

public class Dnakit {
    private int id;
    private String name;
    private String barcode;
    private long createtime;
    private String biological;
    private String accuracy;
    private String expage;
    private String eventtype;
    private String detection;
    public String getEventtype() {
        return eventtype;
    }

    public Dnakit setEventtype(String eventtype) {
        this.eventtype = eventtype;
        return  this;
    }

    public int getId() {
        return id;
    }

    public Dnakit setId(int id) {
        this.id = id;
        return  this;
    }

    public String getName() {
        return name;
    }

    public Dnakit setName(String name) {
        this.name = name;
        return this;
    }

    public String getBarcode() {
        return barcode;
    }

    public Dnakit setBarcode(String barcode) {
        this.barcode = barcode;
        return  this;
    }

    public long getCreatetime() {
        return createtime;
    }

    public Dnakit setCreatetime(long createtime) {
        this.createtime = createtime;
        return  this;
    }

    public String getBiological() {
        return biological;
    }

    public Dnakit setBiological(String biological) {
        this.biological = biological;
        return  this;
    }

    public String getAccuracy() {
        return accuracy;
    }

    public Dnakit setAccuracy(String accuracy) {
        this.accuracy = accuracy;
        return this;
    }

    public String getExpage() {
        return expage;
    }

    public Dnakit setExpage(String expage) {
        this.expage = expage;
        return this;
    }

    public String getDetection() {
        return detection;
    }

    public Dnakit setDetection(String detection) {
        this.detection = detection;
        return this;
    }
}
