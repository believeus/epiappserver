package com.epidial.bean;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "life")
public class Life {
    private int id;
    private String uuid;
    private Double height;
    private Double weight;
    private Double bmi;
    private Double sport;
    private Double heartrate;
    private Double systolicBP;
    private Double diastolicBP;
    private Double cholesterol;
    private Double sleep;
    private Double meditation;
    private Double sexfrequency;
    private Double sexscore;
    private Double smoking;
    private Double alcohol;
    private Double vitaminA;
    private Double vitaminC;
    private Double vitaminD;
    private Double calories;
    private Double same;
    private Double resveratrol;
    private Double nmn;
    private Double dhea;
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

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Double getBmi() {
        return bmi;
    }

    public void setBmi(Double bmi) {
        this.bmi = bmi;
    }

    public Double getSport() {
        return sport;
    }

    public void setSport(Double sport) {
        this.sport = sport;
    }

    public Double getHeartrate() {
        return heartrate;
    }

    public void setHeartrate(Double heartrate) {
        this.heartrate = heartrate;
    }

    public Double getSystolicBP() {
        return systolicBP;
    }

    public void setSystolicBP(Double systolicBP) {
        this.systolicBP = systolicBP;
    }

    public Double getDiastolicBP() {
        return diastolicBP;
    }

    public void setDiastolicBP(Double diastolicBP) {
        this.diastolicBP = diastolicBP;
    }

    public Double getCholesterol() {
        return cholesterol;
    }

    public void setCholesterol(Double cholesterol) {
        this.cholesterol = cholesterol;
    }

    public Double getSleep() {
        return sleep;
    }

    public void setSleep(Double sleep) {
        this.sleep = sleep;
    }

    public Double getMeditation() {
        return meditation;
    }

    public void setMeditation(Double meditation) {
        this.meditation = meditation;
    }

    public Double getSexfrequency() {
        return sexfrequency;
    }

    public void setSexfrequency(Double sexfrequency) {
        this.sexfrequency = sexfrequency;
    }

    public Double getSexscore() {
        return sexscore;
    }

    public void setSexscore(Double sexscore) {
        this.sexscore = sexscore;
    }

    public Double getSmoking() {
        return smoking;
    }

    public void setSmoking(Double smoking) {
        this.smoking = smoking;
    }



    public Double getAlcohol() {
        return alcohol;
    }

    public void setAlcohol(Double alcohol) {
        this.alcohol = alcohol;
    }

    public Double getVitaminA() {
        return vitaminA;
    }

    public void setVitaminA(Double vitaminA) {
        this.vitaminA = vitaminA;
    }

    public Double getVitaminC() {
        return vitaminC;
    }

    public void setVitaminC(Double vitaminC) {
        this.vitaminC = vitaminC;
    }

    public Double getVitaminD() {
        return vitaminD;
    }

    public void setVitaminD(Double vitaminD) {
        this.vitaminD = vitaminD;
    }

    public Double getCalories() {
        return calories;
    }

    public void setCalories(Double calories) {
        this.calories = calories;
    }

    public Double getSame() {
        return same;
    }

    public void setSame(Double same) {
        this.same = same;
    }

    public Double getResveratrol() {
        return resveratrol;
    }

    public void setResveratrol(Double resveratrol) {
        this.resveratrol = resveratrol;
    }

    public Double getNmn() {
        return nmn;
    }

    public void setNmn(Double nmn) {
        this.nmn = nmn;
    }

    public Double getDhea() {
        return dhea;
    }

    public void setDhea(Double dhea) {
        this.dhea = dhea;
    }

    public long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Life{" +
                "id=" + id +
                ", uuid='" + uuid + '\'' +
                ", height=" + height +
                ", weight=" + weight +
                ", bmi=" + bmi +
                ", sport=" + sport +
                ", heartrate=" + heartrate +
                ", systolicBP=" + systolicBP +
                ", diastolicBP=" + diastolicBP +
                ", cholesterol=" + cholesterol +
                ", sleep=" + sleep +
                ", meditation=" + meditation +
                ", sexfrequency=" + sexfrequency +
                ", sexscore=" + sexscore +
                ", smoking=" + smoking +
                ", alcohol=" + alcohol +
                ", vitaminA=" + vitaminA +
                ", vitaminC=" + vitaminC +
                ", vitaminD=" + vitaminD +
                ", calories=" + calories +
                ", same=" + same +
                ", resveratrol=" + resveratrol +
                ", nmn=" + nmn +
                ", dhea=" + dhea +
                ", updateTime=" + updateTime +
                '}';
    }
}
