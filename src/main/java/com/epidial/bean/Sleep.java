package com.epidial.bean;

public class Sleep {
    private int id;
    private String uuid;
    private short awake;
    private short fallasleep;
    private short sleepquality;
    private short affectmood;
    private short affectability;
    private short troubleyou;
    private short wheneffect;
    private long updateTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public short getAwake() {
        return awake;
    }

    public void setAwake(short awake) {
        this.awake = awake;
    }

    public short getFallasleep() {
        return fallasleep;
    }

    public void setFallasleep(short fallasleep) {
        this.fallasleep = fallasleep;
    }

    public short getSleepquality() {
        return sleepquality;
    }

    public void setSleepquality(short sleepquality) {
        this.sleepquality = sleepquality;
    }

    public short getAffectmood() {
        return affectmood;
    }

    public void setAffectmood(short affectmood) {
        this.affectmood = affectmood;
    }

    public short getAffectability() {
        return affectability;
    }

    public void setAffectability(short affectability) {
        this.affectability = affectability;
    }

    public short getTroubleyou() {
        return troubleyou;
    }

    public void setTroubleyou(short troubleyou) {
        this.troubleyou = troubleyou;
    }

    public short getWheneffect() {
        return wheneffect;
    }

    public void setWheneffect(short wheneffect) {
        this.wheneffect = wheneffect;
    }

    public long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }
}
