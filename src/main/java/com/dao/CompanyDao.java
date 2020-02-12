package com.dao;

import com.entity.*;
import com.util.PageBean;

import java.util.List;

public interface CompanyDao {
    public void getCompanyInfo(PageBean<Company> pageBean, String city, String type);

    CompanyDetail getCompanyDetailInfo(String id);

    Hiring getHiringInfo(String id);

    void addCompanyInfo(AddCompany company);

    boolean addHiringInfo(String name,Hiring hiring);

    void getAllHiringInfo(PageBean<Hiring> pageBean);

    List<JudgeCompany> getCompanyName(List<Hiring> pageData);

    boolean addShippingKnowledge(String name, String content);

    void getAllKnowledgeInfo(PageBean<Knowledge> pageBean);

    CompanyDetail getSearchedCompany(String name);

    List<String> getSearchedType(int id);

    void updateCompany(String id, AddCompany company);

    Knowledge getContentById(int id);
}
