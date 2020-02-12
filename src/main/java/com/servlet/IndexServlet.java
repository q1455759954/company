package com.servlet;

import com.entity.Company;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;
import com.util.Address;
import com.util.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        Address add = new Address();
        String address = add.getAddress();
        String curPage = req.getParameter("currentPage");
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String type = req.getParameter("type");
//        if (curPage==null||curPage.trim().equals("")){
//            curPage="1";
//        }
//        int currentPage = Integer.parseInt(curPage);
//        PageBean<Company> pageBean = new PageBean<Company>();
//        pageBean.setCurPage(currentPage);
//        service.getCompanyInfo(pageBean,province,city,type);
//        req.setAttribute("pageBean",pageBean);
        req.setAttribute("province",province);
        req.setAttribute("city",city);
        req.setAttribute("type",type);
        req.setAttribute("address",address);
        req.getRequestDispatcher("/index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
