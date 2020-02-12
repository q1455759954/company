package com.servlet.bac;

import com.entity.AddCompany;
import com.entity.Company;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BacServlet")
public class BacServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        String introduction = req.getParameter("editorValue").trim();
        String province = req.getParameter("province");
        String city = req.getParameter("city");
        String companyName = req.getParameter("companyName");
        String indexUrl = req.getParameter("indexUrl");
        String address = req.getParameter("address");
        String type = req.getParameter("type");
        String phone = req.getParameter("phone");
        String qq = req.getParameter("qq");
        String peopleName = req.getParameter("peopleName");
        AddCompany company = new AddCompany(introduction,province,city,companyName,indexUrl,address,type,phone,qq,peopleName);
        service.addCompanyInfo(company);
        req.setAttribute("re","true");
        req.getRequestDispatcher("/editCompanyInfo.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
