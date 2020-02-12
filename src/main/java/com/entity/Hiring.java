package com.entity;

public class Hiring {
    private int id;
    private int companyid;
    private String content;
    private String job;
    private int num;
    private String money;
    private String mail;

    public Hiring() {
    }

    public Hiring(int id, int companyid, String content, String job, int num, String money, String mail) {
        this.id = id;
        this.companyid = companyid;
        this.content = content;
        this.job = job;
        this.num = num;
        this.money = money;
        this.mail = mail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCompanyid() {
        return companyid;
    }

    public void setCompanyid(int companyid) {
        this.companyid = companyid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Override
    public String toString() {
        return "Hiring{" +
                "id=" + id +
                ", companyid=" + companyid +
                ", content='" + content + '\'' +
                ", job='" + job + '\'' +
                ", num=" + num +
                ", money='" + money + '\'' +
                ", mail='" + mail + '\'' +
                '}';
    }
}
