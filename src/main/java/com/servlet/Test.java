package com.servlet;
import com.entity.Company;
import com.util.JdbcUtil;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Test")
public class Test extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sql = "select * from company where id=?";
        try {
            Company c = JdbcUtil.getQuerrRunner().query(sql, new BeanHandler<Company>(Company.class), 1);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }
}
