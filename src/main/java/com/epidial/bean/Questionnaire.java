package com.epidial.bean;

public class Questionnaire {
    private int id;
    private String uuid;//连接user表的id
    private String comtab;//三个问卷的整个html页面

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

    public String getComtab() {
        return comtab;
    }

    public void setComtab(String comtab) {
        this.comtab = comtab;
    }
}
