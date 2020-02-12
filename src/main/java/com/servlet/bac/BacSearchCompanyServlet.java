package com.servlet.bac;

import com.entity.CompanyDetail;
import com.service.CompanyService;
import com.service.impl.CompanyServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/BacSearchCompanyServlet")
public class BacSearchCompanyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("Content-type", "text/html;charset=UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setCharacterEncoding("UTF-8");
        CompanyService service = new CompanyServiceImpl();
        String name = req.getParameter("companyName");
        CompanyDetail company = service.getSearchedCompany(name);
        if (company!=null){
            List<String> type = service.getSearchedType(company.getId());
            System.out.println(type.get(0));
            JSONObject json = JSONObject.fromObject(company);
            String[] t = {"hangKong","luYun","sanZa","chuanDai","wuLiu"};
            for (int i=0;i<type.size();i++){
                if (type.get(i).equals("航空")){
                    json.put(t[0],type.get(i));
                }else if(type.get(i).equals("陆运")){
                    json.put(t[1],type.get(i));
                }else if(type.get(i).equals("散杂")){
                    json.put(t[2],type.get(i));
                }else if(type.get(i).equals("船代")){
                    json.put(t[3],type.get(i));
                }else if(type.get(i).equals("物流")){
                    json.put(t[4],type.get(i));
                }
            }
            json.put("state","ok");
            System.out.println(json.toString());
            resp.getWriter().print(json.toString());
        }else {
            JSONObject json=new JSONObject();
            json.put("state","no");
            System.out.println(json.toString());
            resp.getWriter().print(json.toString());
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
