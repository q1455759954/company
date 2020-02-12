package com.util;

import com.entity.Company;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mysql.jdbc.Connection;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.sql.DataSource;
import java.sql.SQLException;

public class JdbcUtil {

    // 初始化连接池
    private static DataSource dataSource;
    static {
        dataSource = new ComboPooledDataSource();
    }

    public static DataSource getDataSource() {
        return dataSource;
    }



    /**
     * 创建DbUtils常用工具类对象
     */
    public static QueryRunner getQuerrRunner() {
        return new QueryRunner(dataSource);
    }
    public static void main(String[] args){
        String aaa = "[陆运公司]";
        System.out.println(aaa);
    }
//    //按学号查询数据 返回student对象
//    public Student queryById() {
//        Student queryResult = null;
//
//        String sql = "select * from student where stuId=?";
//        try {
//            queryResult = runner.query(sql, new BeanHandler<Student>(Student.class), "20170831005");
//        } catch (SQLException e) {
//
//            e.printStackTrace();
//        }
//        return queryResult;
//    }
//
//    //更新数据
//    public void update(int math,String stuId){
//        String sql="update student set math=? where stuId=?";
//        try {
//            int rows = runner.update(sql, math,stuId);
//            if(rows>0){
//                System.out.println("更新成功");
//            }
//        } catch (SQLException e) {
//
//            e.printStackTrace();
//        }
//    }
//    //插入数据
//    public void insert(String stuId,String stuName,String stuSex,int chinese,int math,int english,int classId){
//        String  sql="insert into student values(?,?,?,?,?,?,?)";
//
//        try {
//            int rows = runner.update(sql,stuId,stuName,stuSex,chinese,math,english,classId);
//            if (rows>0) {
//                System.out.println("插入成功");
//
//            }
//        } catch (SQLException e) {
//
//            e.printStackTrace();
//        }
//    }

}
