package com.servlet;

import com.crawl.crawl.main.MyCrawler;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Crawler")
public class Crawler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> url = new ArrayList<>();
        for (int i =19;i<=34;i++){
            url.add("http://company.jctrans.com/Company/List/2020-99--"+i+"-0-0/1.html");
            url.add("http://company.jctrans.com/Company/List/2030-99--"+i+"-0-0/1.html");
            url.add("http://company.jctrans.com/Company/List/2320-99--"+i+"-0-0/1.html");
            url.add("http://company.jctrans.com/Company/List/2170-99--"+i+"-0-0/1.html");
            url.add("http://company.jctrans.com/Company/List/0-99--"+i+"--0/1.html");
        }
        MyCrawler myCrawler = new MyCrawler();
        myCrawler.crawling(url);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }
}
