package com.entity;

import java.util.Arrays;

public class AddCompany {
    private String introduction ;
    private String province ;
    private String city ;
    private String companyName  ;
    private String indexUrl ;
    private String address ;
    private String[] type ;
    private String phone ;
    private String qq ;
    private String peopleName ;

    public AddCompany() {
    }

    public AddCompany(String introduction, String province, String city, String companyName, String indexUrl, String address, String[] type, String phone, String qq, String peopleName) {
        this.introduction = introduction;
        this.province = province;
        this.city = city;
        this.companyName = companyName;
        this.indexUrl = indexUrl;
        this.address = address;
        this.type = type;
        this.phone = phone;
        this.qq = qq;
        this.peopleName = peopleName;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
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

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getIndexUrl() {
        return indexUrl;
    }

    public void setIndexUrl(String indexUrl) {
        this.indexUrl = indexUrl;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String[] getType() {
        return type;
    }

    public void setType(String[] type) {
        this.type = type;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getPeopleName() {
        return peopleName;
    }

    public void setPeopleName(String peopleName) {
        this.peopleName = peopleName;
    }

    @Override
    public String toString() {
        return "AddCompany{" +
                "introduction='" + introduction + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", companyName='" + companyName + '\'' +
                ", indexUrl='" + indexUrl + '\'' +
                ", address='" + address + '\'' +
                ", type=" + Arrays.toString(type) +
                ", phone='" + phone + '\'' +
                ", qq='" + qq + '\'' +
                ", peopleName='" + peopleName + '\'' +
                '}';
    }
}
