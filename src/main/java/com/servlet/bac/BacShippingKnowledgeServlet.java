package com.servlet.bac;

import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BacShippingKnowledgeServlet")
public class BacShippingKnowledgeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        String name = req.getParameter("title");
        String content = req.getParameter("editorValue");
        boolean result = service.addShippingKnowledge(name,content);
        req.setAttribute("re",result);
        req.getRequestDispatcher("/addCompanyInfo.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
