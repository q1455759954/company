package com.servlet;

import com.entity.Company;
import com.entity.Hiring;
import com.entity.JudgeCompany;
import com.entity.Knowledge;
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
import java.util.List;

@WebServlet("/ShippingKnowledgeServlet")
public class ShippingKnowledgeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        Address add = new Address();
        String address = add.getAddress();
        String curPage = req.getParameter("currentPage");
        if (curPage==null||curPage.trim().equals("")){
            curPage="1";
        }
        int currentPage = Integer.parseInt(curPage);
        PageBean<Knowledge> pageBean = new PageBean<Knowledge>();
        pageBean.setPageCount(9);
        pageBean.setCurPage(currentPage);
        service.getAllKnowledgeInfo(pageBean);
        req.setAttribute("pageBean",pageBean);
        req.setAttribute("address",address);
        req.getRequestDispatcher("/shippingKnowledge.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
