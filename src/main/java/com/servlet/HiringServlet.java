package com.servlet;

import com.entity.AddCompany;
import com.entity.Hiring;
import com.entity.JudgeCompany;
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

@WebServlet("/HiringServlet")
public class HiringServlet extends HttpServlet {
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
        PageBean<Hiring> pageBean = new PageBean<Hiring>();
        pageBean.setCurPage(currentPage);
        service.getAllHiringInfo(pageBean);
        List<JudgeCompany> company = service.getCompanyName(pageBean.getPageData());
        req.setAttribute("pageBean",pageBean);
        req.setAttribute("company",company);
        req.setAttribute("address",address);
        req.getRequestDispatcher("/hiring.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
