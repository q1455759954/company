package com.entity;

public class CompanyDetail {
    private int id;
    private String companyName;
    private String peopleName;
    private String introduction;
    private String qq;
    private String logo;
    private String phone;
    private String address;
    private String index;

    public CompanyDetail(int id, String companyName, String peopleName, String introduction, String qq, String logo, String phone, String address, String index) {
        this.id = id;
        this.companyName = companyName;
        this.peopleName = peopleName;
        this.introduction = introduction;
        this.qq = qq;
        this.logo = logo;
        this.phone = phone;
        this.address = address;
        this.index = index;
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

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }
    @Override
    public String toString() {
        return "CompanyDetail{" +
                "id=" + id +
                ", companyName='" + companyName + '\'' +
                ", peopleName='" + peopleName + '\'' +
                ", introduction='" + introduction + '\'' +
                ", qq='" + qq + '\'' +
                ", logo='" + logo + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", index='" + index + '\'' +
                '}';
    }
}
