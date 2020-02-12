package com.entity;

public class Company {
    private int id;
    private String companyName;
    private String peopleName;
    private String city;
    private String introduction;
    private String type;
    private String logo;
    private String phone;

    public Company() {
    }

    public Company(int id, String companyName, String peopleName, String city, String introduction, String type, String logo, String phone) {
        this.id = id;
        this.companyName = companyName;
        this.peopleName = peopleName;
        this.city = city;
        this.introduction = introduction;
        this.type = type;
        this.logo = logo;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getPeopleName() {
        return peopleName;
    }

    public void setPeopleName(String peopleName) {
        this.peopleName = peopleName;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", companyName='" + companyName + '\'' +
                ", peopleName='" + peopleName + '\'' +
                ", city='" + city + '\'' +
                ", introduction='" + introduction + '\'' +
                ", type='" + type + '\'' +
                ", logo='" + logo + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
