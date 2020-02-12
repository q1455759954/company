package com.servlet.bac;

import com.entity.AddCompany;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BacUpdateServlet")
public class BacUpdateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        String introduction = req.getParameter("editorValue").trim();
        String companyName = req.getParameter("companyName");
        String indexUrl = req.getParameter("indexUrl");
        String address = req.getParameter("address");
        String[] type = req.getParameterValues("type");
        String phone = req.getParameter("phone");
        String qq = req.getParameter("qq");
        String peopleName = req.getParameter("peopleName");
        String id = req.getParameter("companyId");
        AddCompany company = new AddCompany(introduction,null,null,companyName,indexUrl,address,type,phone,qq,peopleName);
        System.out.println(company);
        service.updateCompany(id,company);
        req.setAttribute("re","true");
        req.getRequestDispatcher("/addCompanyInfo.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
