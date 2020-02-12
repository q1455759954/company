package com.util;

import com.entity.CompanyDetail;
import com.entity.Type;
import org.apache.commons.dbutils.ResultSetHandler;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TypeBeanHandler<T> implements ResultSetHandler<Type> {
    private Class<T> classType;
    public TypeBeanHandler(Class<T> classType) {
        this.classType = classType;
    }

    @Override
    public Type handle(ResultSet rs) throws SQLException {
        Type type = null;
        while (rs.next()){
            int id = rs.getInt(1);
            int hangKong = rs.getInt(2);
            int luYun = rs.getInt(3);
            int sanZa = rs.getInt(4);
            int chuanDai = rs.getInt(5);
            int wuLiu = rs.getInt(6);
            type = new Type(id,hangKong,luYun,sanZa,chuanDai,wuLiu);
        }
        return type;
    }
}
