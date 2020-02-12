package com.util;

import com.entity.CompanyDetail;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MyBeanHandler<T> implements ResultSetHandler<CompanyDetail> {
    private Class<T> classType;
    public MyBeanHandler(Class<T> companyDetailClass) {
        this.classType=companyDetailClass;
    }

    @Override
    public CompanyDetail handle(ResultSet rs) throws SQLException {
        CompanyDetail companyDetail = null;
        while (rs.next()){
            int id = rs.getInt(1);
            String companyName = rs.getString(2);
            String peopleName= rs.getString(3);
            String introduction= rs.getString(4);
            String qq= rs.getString(5);
            String logo= rs.getString(6);
            String phone= rs.getString(7);
            String address= rs.getString(8);
            String index= rs.getString(9);
            companyDetail = new CompanyDetail(id,companyName,peopleName,introduction,qq,logo,phone,address,index);
        }
        return companyDetail;
    }
}
