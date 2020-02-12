package com.servlet.bac;

import com.entity.Company;
import com.entity.Hiring;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BacHiringServlet")
public class BacHiringServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        String name = req.getParameter("companyName");
        String job = req.getParameter("job");
        String content = req.getParameter("editorValue").trim();
        String num = req.getParameter("num");
        String money = req.getParameter("money");
        String mail = req.getParameter("mail");
        Hiring hiring = new Hiring(0,0,content,job,Integer.parseInt(num),money,mail);
        boolean result = service.addHiringInfo(name,hiring);
        req.setAttribute("re",result);
        req.getRequestDispatcher("/addCompanyInfo.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
