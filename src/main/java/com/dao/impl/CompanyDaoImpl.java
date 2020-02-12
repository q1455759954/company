package com.dao.impl;

import com.dao.CompanyDao;
import com.entity.*;
import com.util.*;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CompanyDaoImpl implements CompanyDao {
    @Override
    public void getCompanyInfo(PageBean<Company> pageBean, String city, String type) {
        int totalPage = this.getTotalPage(city, type);
        pageBean.setTotalCount(totalPage);
        if (pageBean.getCurPage()<=0){
            pageBean.setCurPage(1);
        }else if (pageBean.getCurPage()>pageBean.getTotalPage()){
            pageBean.setCurPage(pageBean.getTotalPage());
        }
        int currentPage = pageBean.getCurPage();
        int index = (currentPage-1)*pageBean.getPageCount();
        int count = pageBean.getPageCount();

        List<Company> list = null;
        String sql = null;
        if (city.equals("北京")||city.equals("上海")||city.equals("天津")||city.equals("重庆")){
            sql = "select company.id,name,联系人,introduction,logo,电话\n" +
                    "from company,companydetail,transport \n" +
                    "where company.city = ? and company.id=companydetail.id and company.id=transport.id and transport."+type+"=1 limit "+index+","+count;
            try {
                list = (List<Company>)JdbcUtil.getQuerrRunner().query(sql,new MyBeanListHandler<Company>(Company.class,city,type),city);
                pageBean.setPageData(list);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {
            sql = "select company.id,name,联系人,introduction,logo,电话\n" +
                    "from company,companydetail,transport \n" +
                    "where (company.province = ? or  company.city = ? )and company.id=companydetail.id and company.id=transport.id and transport."+type+"=1 limit "+index+","+count;
            try {
                list = (List<Company>)JdbcUtil.getQuerrRunner().query(sql,new MyBeanListHandler<Company>(Company.class,city,type),city,city);
                pageBean.setPageData(list);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    @Override
    public CompanyDetail getSearchedCompany(String name) {
        String sql = "select * from company where name = ?";
        JudgeCompany company = null;
        CompanyDetail companyDetail = null;
        try {
            company = JdbcUtil.getQuerrRunner().query(sql, new BeanHandler<JudgeCompany>(JudgeCompany.class), name);
            if (company != null) {
                sql = "select company.id,name,联系人,详细资料,qq,logo,电话,公司地址,官网地址\n" +
                        "from company,companydetail \n" +
                        "where  company.id=companydetail.id and company.name=?";
                companyDetail = JdbcUtil.getQuerrRunner().query(sql, new MyBeanHandler<CompanyDetail>(CompanyDetail.class), name);
                return companyDetail;
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return companyDetail;
    }

    @Override
    public List<String> getSearchedType(int id) {
        String sql = "select * from transport where id = ?";
        try {
            Type type = JdbcUtil.getQuerrRunner().query(sql, new TypeBeanHandler<Type>(Type.class), id);
            List<String> list = new ArrayList<>();
            if (type.getHangKong() == 1) {
                list.add("航空");
            }
            if (type.getLuYun() == 1) {
                list.add("陆运");
            }
            if (type.getSanZa() == 1) {
                list.add("散杂");
            }
            if (type.getChuanDai() == 1) {
                list.add("船代");
            }
            if (type.getWuLiu() == 1) {
                list.add("物流");
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }

    @Override
    public void updateCompany(String id, AddCompany company) {
        String sql = "update company set name=?,introduction=? where id = ?";
        try {
            JdbcUtil.getQuerrRunner().update(sql,company.getCompanyName(),company.getIntroduction(),id);
            sql="update companydetail set 详细资料=?,联系人=?,电话=?,qq=?,公司地址=?,官网地址=? where id = ?";
            JdbcUtil.getQuerrRunner().update(sql,company.getIntroduction(),company.getPeopleName(),company.getPhone(),company.getQq(),company.getAddress(),company.getIndexUrl(),id);
            List<String> list = new ArrayList<>();
            list.add("航空");
            list.add("陆运");
            list.add("散杂");
            list.add("船代");
            list.add("物流");
            for(int i=0;i<company.getType().length;i++){
                if (list.contains(company.getType()[i])){
                    sql="update transport set "+company.getType()[i]+"=1 where id = ?";
                    JdbcUtil.getQuerrRunner().update(sql,id);
                    list.remove(company.getType()[i]);
                }
            }
            for (String ty : list){
                sql="update transport set "+ty+"=0 where id = ?";
                JdbcUtil.getQuerrRunner().update(sql,id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Knowledge getContentById(int id) {
        Knowledge knowledge = null;
        String sql ="select * from knowledge where id = ?";
        try {
            knowledge = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<Knowledge>(Knowledge.class),id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return knowledge;
    }

    @Override
    public CompanyDetail getCompanyDetailInfo(String id) {
        int companyId  = Integer.parseInt(id);
        CompanyDetail companyDetail = null;
        String sql ="select company.id,name,联系人,详细资料,qq,logo,电话,公司地址,官网地址\n" +
                "from company,companydetail \n" +
                "where  company.id=companydetail.id and company.id=?";
        try {
            companyDetail = JdbcUtil.getQuerrRunner().query(sql,new MyBeanHandler<CompanyDetail>(CompanyDetail.class),companyId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return companyDetail;
    }

    @Override
    public Hiring getHiringInfo(String id) {
        int companyId  = Integer.parseInt(id);
        Hiring hiring = null;
        String sql ="select * \n" +
                "from hiring \n" +
                "where  companyid=? order by id desc";
        try {
            hiring = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<Hiring>(Hiring.class),companyId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hiring;
    }

    @Override
    public void addCompanyInfo(AddCompany addCompany) {
        String sql = "select * from company where name = ?";
        try {
            JudgeCompany company = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<JudgeCompany>(JudgeCompany.class),addCompany.getCompanyName());
            if (company==null){
                //2.没有，将数据写入company companydetail transport
                sql = "insert into company values (null,?,?,?,?,?)";
                JdbcUtil.getQuerrRunner().update(sql,addCompany.getCompanyName(),addCompany.getProvince(),addCompany.getCity(),addCompany.getIntroduction(),"暂无信息");
                sql = "insert into companydetail values (null,?,?,?,?,?,?)";
                JdbcUtil.getQuerrRunner().update(sql,addCompany.getIntroduction(),addCompany.getPeopleName(),addCompany.getPhone(),addCompany.getQq(),addCompany.getAddress(),addCompany.getIndexUrl());
                sql = "insert into transport values (null,?,?,?,?,?)";
                JdbcUtil.getQuerrRunner().update(sql,0,0,0,0,0);
                //改变运输方式
                for (String type : addCompany.getType()){
                    sql = "update transport set "+type+" = 1 where id = (select max(id) from company)";
                    JdbcUtil.getQuerrRunner().update(sql);
                }
            }else {
                //3.有则改变transport表里的运输方式
                //改变运输方式
                int companyId = company.getId();
                for (String type : addCompany.getType()){
                    sql = "update transport set "+type+" = 1 where id = ?";
                    JdbcUtil.getQuerrRunner().update(sql,companyId);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    public boolean addShippingKnowledge(String name, String content) {
        if (name!=null&&content!=null){
            String sql = "insert into knowledge values (null,?,?)";
            try {
                JdbcUtil.getQuerrRunner().update(sql,name,content);
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {
            return false;
        }
        return false;
    }


    @Override
    public boolean addHiringInfo(String name, Hiring hiring) {
        String sql = "select * from company where name = ?";
        try {
            Company company = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<Company>(Company.class),name);
            if (company!=null){
                sql = "select * from hiring where companyid = ?";
                Hiring h = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<Hiring>(Hiring.class),company.getId());
                if (h==null){
                    sql = "insert into hiring values (null,?,?,?,?,?,?)";
                    JdbcUtil.getQuerrRunner().update(sql,company.getId(),hiring.getContent(),hiring.getJob(),hiring.getNum(),hiring.getMoney(),hiring.getMail());
                    return true;
                }else {
                    sql = "update hiring set content = ? ,job = ?,num = ? , money = ?,mail = ? where id = ?";
                    JdbcUtil.getQuerrRunner().update(sql,hiring.getContent(),hiring.getJob(),hiring.getNum(),hiring.getMoney(),hiring.getMail(),h.getId());
                    return true;
                }

            }else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    @Override
    public void getAllKnowledgeInfo(PageBean<Knowledge> pageBean) {
        int totalPage = this.getKnowledgeTotalPage();
        pageBean.setTotalCount(totalPage);
        if (pageBean.getCurPage()<=0){
            pageBean.setCurPage(1);
        }else if (pageBean.getCurPage()>pageBean.getTotalPage()){
            pageBean.setCurPage(pageBean.getTotalPage());
        }
        int currentPage = pageBean.getCurPage();
        int index = (currentPage-1)*pageBean.getPageCount();
        int count = pageBean.getPageCount();

        List<Knowledge> list = null;
        String sql = null;
        sql = "select * \n" +
                "from knowledge limit "+index+","+count;
        try {
            list = (List<Knowledge>)JdbcUtil.getQuerrRunner().query(sql,new BeanListHandler<Knowledge>(Knowledge.class));
            pageBean.setPageData(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    private int getKnowledgeTotalPage() {
        List<Knowledge> list = null;
        String sql = null;
        sql = "select * \n" +
                "from knowledge \n" ;
        try {
            list = (List<Knowledge>)JdbcUtil.getQuerrRunner().query(sql,new BeanListHandler<Knowledge>(Knowledge.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list.size();
    }

    @Override
    public void getAllHiringInfo(PageBean<Hiring> pageBean) {
        int totalPage = this.getHiringInfoTotalPage();
        pageBean.setTotalCount(totalPage);
        if (pageBean.getCurPage()<=0){
            pageBean.setCurPage(1);
        }else if (pageBean.getCurPage()>pageBean.getTotalPage()){
            pageBean.setCurPage(pageBean.getTotalPage());
        }
        int currentPage = pageBean.getCurPage();
        int index = (currentPage-1)*pageBean.getPageCount();
        int count = pageBean.getPageCount();

        List<Hiring> list = null;
        String sql = null;
        sql = "select * \n" +
                "from hiring limit "+index+","+count;
        try {
            list = (List<Hiring>)JdbcUtil.getQuerrRunner().query(sql,new BeanListHandler<Hiring>(Hiring.class));
            pageBean.setPageData(list);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<JudgeCompany> getCompanyName(List<Hiring> pageData) {
        List<JudgeCompany> re = new ArrayList<>();

        for (Hiring hiring : pageData){
            String sql = "select * from company where id = ?";
            try {
                JudgeCompany company = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<JudgeCompany>(JudgeCompany.class),hiring.getCompanyid());
                re.add(company);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return re;
    }


    private int getHiringInfoTotalPage() {
        List<Hiring> list = null;
        String sql = null;
        sql = "select * \n" +
                "from hiring \n" ;
            try {
                list = (List<Hiring>)JdbcUtil.getQuerrRunner().query(sql,new BeanListHandler<Hiring>(Hiring.class));
            } catch (SQLException e) {
                e.printStackTrace();
            }
        return list.size();
    }

    private int getTotalPage( String city, String type) {
        List<Company> list = null;
        String sql = null;
        if (city.equals("北京")||city.equals("上海")||city.equals("天津")||city.equals("重庆")){
            sql = "select company.id,name,联系人,introduction,logo,电话 \n" +
                    "from company,companydetail,transport \n" +
                    "where company.city = ? and company.id=companydetail.id and company.id=transport.id and transport."+type+"=1";
            try {
                list = (List<Company>)JdbcUtil.getQuerrRunner().query(sql,new MyBeanListHandler<Company>(Company.class,city,type),city);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {
            sql = "select company.id,name,联系人,introduction,logo,电话 \n" +
                    "from company,companydetail,transport \n" +
                    "where (company.province = ? or  company.city = ? )and company.id=companydetail.id and company.id=transport.id and transport."+type+"=1";
            try {
                list = (List<Company>)JdbcUtil.getQuerrRunner().query(sql,new MyBeanListHandler<Company>(Company.class,city,type),city,city);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list.size();
    }
}
