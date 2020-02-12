package com.servlet;

import com.entity.Company;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;
import com.util.Address;
import com.util.PageBean;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AjaxDataServlet")
public class AjaxDataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        Address add = new Address();
        String address = add.getAddress();
        String curPage = req.getParameter("currentPage");
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String type = req.getParameter("type");
        if (curPage==null||curPage.trim().equals("")){
            curPage="1";
        }
        int currentPage = Integer.parseInt(curPage);
        PageBean<Company> pageBean = new PageBean<Company>();
        pageBean.setCurPage(currentPage);
        System.out.println(province+city+type);
        service.getCompanyInfo(pageBean,province,city,type);
        //转换为json数据
        JSONObject json = JSONObject.fromObject(pageBean);
        json.put("province",province);
        json.put("address",address);
        json.put("city",city);
        json.put("type",type);
        System.out.println(json.toString());
        resp.setHeader("Content-type", "text/html;charset=UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().print(json.toString());

//        resp.setCharacterEncoding("UTF-8");
//        resp.setContentType("application/json; charset=utf-8");
//        req.setAttribute("pageBean",pageBean);
//        req.setAttribute("province",province);
//        req.setAttribute("city",city);
//        req.setAttribute("type",type);
//        req.setAttribute("address",address);
//        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
