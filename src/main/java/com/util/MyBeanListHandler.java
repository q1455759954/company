package com.util;

import com.entity.Company;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MyBeanListHandler<T> implements ResultSetHandler<List<T>> {
    private Class<T> classType;
    private String city;
    private String type;

    public MyBeanListHandler(Class<T> classType,String city,String type){
        this.classType=classType;
        this.city=city;
        this.type=type;
    }

    @Override
    public List<T> handle(ResultSet rs) throws SQLException {
        List<Company> list = new ArrayList<>();
        while (rs.next()){
            int id = rs.getInt(1);
            String companyName =rs.getString(2);
            String peopleName =rs.getString(3);
            String introduction =rs.getString(4);
            String logo =rs.getString(5);
            String phone = rs.getString(6);
            Company company = new Company(id,companyName,peopleName,city,introduction,type,logo,phone);
            list.add(company);
        }
        return (List<T>) list;
    }
}
