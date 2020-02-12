package com.entity;

/*
    这个实体类用来专门从数据库取数据
 */
public class JudgeCompany {
    private int id;
    private String name;
    private String province;
    private String city;
    private String introduction;
    private String logo;

    public JudgeCompany() {
    }

    public JudgeCompany(int id, String name, String province, String city, String introduction, String logo) {
        this.id = id;
        this.name = name;
        this.province = province;
        this.city = city;
        this.introduction = introduction;
        this.logo = logo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
