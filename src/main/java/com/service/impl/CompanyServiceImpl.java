package com.service.impl;

import com.dao.CompanyDao;
import com.dao.impl.CompanyDaoImpl;
import com.entity.*;
import com.service.CompanyService;
import com.util.Address;
import com.util.PageBean;

import java.util.List;

public class CompanyServiceImpl implements CompanyService {
    CompanyDao dao = new CompanyDaoImpl();
    @Override
    public void getCompanyInfo(PageBean<Company> pageBean, String province, String city, String type) {
        String searchCity = null;
        if (city==null||city.trim()==""||city.equals("城市")){
            if (province==null||province.trim()==""){
                Address address = new Address();
                searchCity = address.getAddress();
            }else {
                searchCity = province;
            }
        }else {
            searchCity=city;
        }
        String searchType = null;
        if (type==null||type.trim()==""){
            searchType = "航空";
        }else {
            searchType=type;
        }
        dao.getCompanyInfo(pageBean,searchCity,searchType);
    }

    @Override
    public CompanyDetail getCompanyDetailInfo(String id) {
        return dao.getCompanyDetailInfo(id);
    }

    @Override
    public Hiring getHiringInfo(String id) {
        return dao.getHiringInfo(id);
    }

    @Override
    public void addCompanyInfo(AddCompany company) {
        dao.addCompanyInfo(company);
    }

    @Override
    public boolean addHiringInfo(String name, Hiring hiring) {
        return dao.addHiringInfo(name,hiring);
    }

    @Override
    public void getAllHiringInfo(PageBean<Hiring> pageBean) {
        dao.getAllHiringInfo(pageBean);
    }

    @Override
    public List<JudgeCompany> getCompanyName(List<Hiring> pageData) {
        return dao.getCompanyName(pageData);
    }

    @Override
    public boolean addShippingKnowledge(String name, String content) {
        return dao.addShippingKnowledge(name,content);
    }

    @Override
    public void getAllKnowledgeInfo(PageBean<Knowledge> pageBean) {
        dao.getAllKnowledgeInfo(pageBean);
    }

    @Override
    public CompanyDetail getSearchedCompany(String name) {
        return dao.getSearchedCompany(name);
    }

    @Override
    public List<String> getSearchedType(int id) {
        return dao.getSearchedType(id);
    }

    @Override
    public void updateCompany(String id, AddCompany company) {
        dao.updateCompany(id,company);
    }

    @Override
    public Knowledge getContentById(int id) {
        return dao.getContentById(id);
    }
}
