package com.servlet;

import com.entity.CompanyDetail;
import com.entity.Hiring;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CompanyHiringServlet")
public class CompanyHiringServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        String id = req.getParameter("id");
        Hiring hiring = service.getHiringInfo(id);
        CompanyDetail companyDetail = service.getCompanyDetailInfo(id);
        req.setAttribute("hiring",hiring);
        req.setAttribute("companyDetail",companyDetail);
        req.getRequestDispatcher("/company_hiring.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
