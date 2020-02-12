package com.servlet;

import com.entity.Knowledge;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ShippingKnowledgeDetailServlet")
public class ShippingKnowledgeDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CompanyService service = new CompanyServiceImpl();
        String i = req.getParameter("id");
        int id = Integer.parseInt(i);
        Knowledge knowledge = service.getContentById(id);
        req.setAttribute("content",knowledge);
        req.getRequestDispatcher("/shippingKnowledgeDetail.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
