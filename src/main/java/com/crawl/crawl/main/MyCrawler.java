package com.crawl.crawl.main;

import com.crawl.crawl.link.LinkFilter;
import com.crawl.crawl.link.Links;
import com.crawl.crawl.page.Page;
import com.crawl.crawl.page.PageParserTool;
import com.crawl.crawl.page.RequestAndResponseTool;
import com.crawl.crawl.util.FileTool;
import com.entity.Company;
import com.util.JdbcUtil;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.List;


/*
    省份：1-34
        http://company.jctrans.com/Company/List/2020-99--1-0-0/1.html   航空公司
    http://company.jctrans.com/Company/List/2030-99--1-0-0/1.html   陆运公司
    http://company.jctrans.com/Company/List/2320-99--1-0-0/1.html   散杂
    http://company.jctrans.com/Company/List/2170-99--1-0-0/1.html   船代
    http://company.jctrans.com/Company/List/0-99--1--0/1.html       物流
 */

public class MyCrawler {
    private String baseUrl;


    public static void main(String[] args){
//        List<String> url = new ArrayList<>();
//        for (int i =1;i<=34;i++){
//            url.add("http://company.jctrans.com/Company/List/2020-99--"+i+"-0-0/1.html");
//            url.add("http://company.jctrans.com/Company/List/2030-99--"+i+"-0-0/1.html");
//            url.add("http://company.jctrans.com/Company/List/2320-99--"+i+"-0-0/1.html");
//            url.add("http://company.jctrans.com/Company/List/2170-99--"+i+"-0-0/1.html");
//            url.add("http://company.jctrans.com/Company/List/0-99--"+i+"--0/1.html");
//        }
//        MyCrawler myCrawler = new MyCrawler();
//        myCrawler.baseUrl="http://www.baidu.com";
//        myCrawler.crawling(url);
    }

    public void crawling(List<String> seeds) {

        //初始化 URL 队列
        initCrawlerWithSeeds(seeds);

        LinkFilter filter = new LinkFilter() {
            @Override
            public boolean accept(String url) {
                if (url.startsWith(baseUrl))
                    return true;
                else return false;
            }
        };
        while (!Links.unVisitedUrlQueueIsEmpty()  && Links.getVisitedUrlNum() <= 1000){

            String visitUrl = (String) Links.removeHeadOfUnVisitedUrlQueue();

            //根据URL得到page;
            Page page = RequestAndResponseTool.sendRequstAndGetResponse(visitUrl);
            if (page==null)
                continue;

            //对page进行处理： 访问DOM的某个标签

            //得到省名称
            Elements provenceElements =  PageParserTool.select(page,".topxnav");
            if (provenceElements.size()==0)
                continue;
            String provenceName = provenceElements.get(1).ownText().split("物流公司")[0];
            System.out.println(provenceElements.get(1).ownText());

            //得到每个省份对应的城市
            Elements elements =  PageParserTool.select(page,".com >li a");
            //遍历每个城市
            if(!elements.isEmpty()){
                for (Element el : elements){

                    String cityUrl = el.attr("abs:href");
                    System.out.println(cityUrl);
                    //根据URL得到相应城市的页面page;
                    Page cityPage = RequestAndResponseTool.sendRequstAndGetResponse(cityUrl);
                    if (cityPage==null)
                        continue;
                    //得到这个城市中的公司
                    Elements cityElements =  PageParserTool.select(cityPage,".c_labf.table_zi");//a标签得到进入资料栏的地址
                    Elements cityElementsType =  PageParserTool.select(cityPage,".com_name >em");//em标签得到运输方式
                    Elements cityNameElements =  PageParserTool.select(cityPage,".c_labc.table_zi");//城市名称
                    Elements introElements =  PageParserTool.select(cityPage,".com_info");//公司简介
                    Elements aElements =  PageParserTool.select(cityPage,".com_name");//得到标题的a标签
                    Elements qqElements = PageParserTool.select(cityPage,".c_labf.table_zi");//得到qq的标签
                    if (cityElements.size()==0||cityElementsType.size()==0||cityElements.size()==0||introElements.size()==0||aElements.size()==0||qqElements.size()==0)
                        continue;
                    String cityName = cityNameElements.get(0).ownText();
                    //如果这个城市没有这种运输方式，直接跳过

//                    //替换地址，爬两页数据，共30条
//                    cityUrl = cityUrl.replace("/1.html","/2.html");
//                    System.out.println(cityUrl);
//                    //爬取第二页数据
//                    Page cityPage2 = RequestAndResponseTool.sendRequstAndGetResponse(cityUrl);
//                    if (cityPage2==null)
//                        continue;
//                    Elements cityElements2 =  PageParserTool.select(cityPage2,".c_labf.table_zi");//a标签得到进入资料栏的地址
//                    Elements cityElementsType2 =  PageParserTool.select(cityPage2,".com_name >em");//em标签得到运输方式
//                    Elements introElements2 =  PageParserTool.select(cityPage,".com_info");//公司简介
//                    Elements aElements2 =  PageParserTool.select(cityPage,".com_name");//得到标题的a标签
//                    Elements qqElements2 = PageParserTool.select(cityPage,".c_labf.table_zi");//得到qq的标签
//                    if (cityElements2.size()==0||cityElementsType2.size()==0||introElements2.size()==0||aElements2.size()==0||qqElements2.size()==0)
//                        continue;
//                    //将数据整合一起
//                    cityElements.addAll(cityElements2);
//                    cityElementsType.addAll(cityElementsType2);
//                    introElements.addAll(introElements2);
//                    aElements.addAll(aElements2);
//                    qqElements.addAll(qqElements2);

                    /*
                    <a style="float: left;" href="http://shop.jctrans.com/F9E2DF12-7CFE-4824-B514-8590F6F1CB70.html" target="_blank" onclick="SetCookie('complist','·{a href=http://shop.jctrans.com/F9E2DF12-7CFE-4824-B514-8590F6F1CB70.html target=_blank title=北京环宇程信国际货运代理有限公司}北京环宇程信国际货运代理有限{/a}|',1)" title="北京环宇程信国际货运代理有限公司">
                                        北京环宇程信国际货运代理..</a>
                    <em style="float: left;">[航空公司]</em>
                     */
                    for (int i=0;i<cityElements.size();i++){

                        //得到qq
                        Elements qqInfo = qqElements.get(i).select("a");//得到qq的a标签
                        String qq = "暂无信息";
                        if (qqInfo.size()==4&&qqInfo.get(3).hasAttr("onclick")){
                            //得到onclick属性内容  SaveQqMsnRecord('bjhycx','2850509603','',1);
                            String  con = qqInfo.get(3).attr("onclick");
                            qq = con.split("'")[3];
                        }
                        //得到公司资料栏地址
                        String companyUrl = cityElements.get(i).select("a").get(0).attr("abs:href");
                        System.out.println(companyUrl);
                        //公司简介
                        String introduction = introElements.get(i).text();
                        //运输方式
                        String type =  cityElementsType.get(i).text().substring(1,3);
                        //根据URL得到相应公司的页面page;
                        Page companyPage = RequestAndResponseTool.sendRequstAndGetResponse(companyUrl);
                        if (companyPage==null)
                            continue;
                        //得到这个城市中的公司,公司的页面不一样，分几种
                        String companyName = null;
                        String name = "暂无信息";
                        String phone = "暂无信息";
                        String address ="暂无信息";
                        String detailIntroduction = "暂无信息";
                        String indexUrl = "暂无信息";
                        String logo = "暂无信息";
                        //第一种情况
                        Elements liElements =  PageParserTool.select(companyPage,".Companybar");//得到资料栏
                        if (liElements.size()!=0){
                            //进入a标签，公司首页地址，得到详细信息
                            String comUrl = aElements.get(i).select("a").get(0).attr("abs:href");
                            Page companyIndex = RequestAndResponseTool.sendRequstAndGetResponse(comUrl);
                            if (companyIndex==null)
                                continue;
                            Elements more =  PageParserTool.select(companyIndex,".more");//得到详细资料的标签
                            if (more.size()==0)
                                continue;
                            //详细资料的地址
                            String detailUrl = more.get(0).attr("abs:href");
                            Page detailPage = RequestAndResponseTool.sendRequstAndGetResponse(detailUrl);
                            if (detailPage==null)
                                continue;
                            Elements detail =  PageParserTool.select(detailPage,".about_info div");//得到详细资料div
                            if (detail.size()==0)
                                continue;
                            detailIntroduction = detail.get(1).text();//得到详细资料

                            //得到资料栏信息
                            Elements titleElements =  PageParserTool.select(companyPage,".contbar >h1");//得到公司名称
                            if (titleElements.size()==0)
                                continue;
                            companyName=titleElements.get(0).text();
                            System.out.println(companyName);
                            //联 系 人：崔荣防 电　　话：86-010-53269837 传　　真 手　　机：13683694233 地　　址：顺义区南法信航城广场B座302 邮　　编： 公司主页：http://www.hycxgroup.com
                            String info = liElements.get(0).text();
                            System.out.println(info);
                            String[] in = info.split("：");
                            name=in[1].substring(0,3).trim();
                            phone = in[2].split(" ")[0];
                            address = in[4].split(" ")[0];
                            indexUrl = in[5].trim();

                            //得到logo
                            Elements logoElements =  PageParserTool.select(companyPage,".cp_logo >img");//得到logo链接
                            if (logoElements.size()!=0)
                                logo = logoElements.get(0).attr("src");

                        }else {
                            //得到资料栏的信息
                            if (PageParserTool.select(companyPage,".comname").size()==0)
                                continue;
                            //第二种情况
                            companyName = PageParserTool.select(companyPage,".comname").get(0).text();
                            System.out.println(companyName);
                            liElements =  PageParserTool.select(companyPage,".contxt >dl");//得到资料栏
                            //这里也分两种情况，一种有7个dd标签，一个有6个dd标签
                            if (liElements.size()==7){
                                name = liElements.get(0).select("dd").get(0).text();
                                phone = liElements.get(1).select("dd").get(0).text();
                                address = liElements.get(4).select("dd").get(0).text();
                                indexUrl = liElements.get(6).select("dd >a").get(0).attr("abs:href");
                                System.out.println(name + phone+address);
                            }else if (liElements.size()==6){
                                name = liElements.get(0).select("dd").get(0).text();
                                phone = liElements.get(1).select("dd").get(0).text();
                                address = liElements.get(3).select("dd").get(0).text();
                                indexUrl = liElements.get(5).select("dd >a").get(0).attr("abs:href");
                                System.out.println(name + phone+address);
                            }else {
                                continue;
                            }


                            //进入a标签，公司首页地址,得到详细资料
                            String comUrl = aElements.get(i).select("a").get(0).attr("abs:href");
                            Page companyIndex = RequestAndResponseTool.sendRequstAndGetResponse(comUrl);
                            if (companyIndex==null)
                                continue;
                            Elements detail =  PageParserTool.select(companyIndex,".contxt");//得到详细资料的标签
                            if (detail.size()==0)
                                continue;
                            detailIntroduction = detail.get(0).text();


                            //得到logo
                            Elements logoElements =  PageParserTool.select(companyPage,".c_logo >img");//得到logo链接
                            if (logoElements.size()!=0)
                                logo = logoElements.get(0).attr("src");

                        }
                        //写进数据库
                        //1.先查询company里有没有这个公司
                        String sql = "select * from company where name = ?";
                        try {
                            Company company = JdbcUtil.getQuerrRunner().query(sql,new BeanHandler<Company>(Company.class),companyName);
                            if (company==null){
                                //2.没有，将数据写入company companydetail transport
                                sql = "insert into company values (null,?,?,?,?,?)";
                                JdbcUtil.getQuerrRunner().update(sql,companyName,provenceName,cityName,introduction,logo);
                                sql = "insert into companydetail values (null,?,?,?,?,?,?)";
                                JdbcUtil.getQuerrRunner().update(sql,detailIntroduction,name,phone,qq,address,indexUrl);
                                sql = "insert into transport values (null,?,?,?,?,?)";
                                JdbcUtil.getQuerrRunner().update(sql,0,0,0,0,0);
                                //改变运输方式
                                sql = "update transport set "+type+" = 1 where id = (select max(id) from company)";
                                JdbcUtil.getQuerrRunner().update(sql);
                            }else {
                                //3.有则改变transport表里的运输方式
                                int companyId = company.getId();
                                //改变运输方式
                                sql = "update transport set "+type+" = 1 where id = ?";
                                JdbcUtil.getQuerrRunner().update(sql,companyId);
                            }
                        } catch (Exception e) {
                            throw new RuntimeException(e);
                        }finally {
                            continue;
                        }

                            //写入txt文件
//                        String data = "省份："+provenceName+"\r\n"+"城市："+cityName+"\r\n"+"公司："+companyName+"\r\n"+"运输方式："+type+"\r\n"+"公司简介："+introduction+"\r\n"+"公司官网："+indexUrl+"\r\n"+"logo地址："+logo+"\r\n"+"官方QQ:"+qq+"\r\n"+"联系人:"+name+"\r\n"+"联系方式:"+phone+"\r\n"+"地址："+address+"\r\n"+"详细资料："+detailIntroduction+"\r\n"+"\r\n";
//                        FileTool.write(data);


//                        String name = liElements.get(0).select("b .username").get(0).text();
//                        String phone = liElements.get(2).select("span").get(1).text();
//                        String address = liElements.get(5).ownText();
//                        System.out.println(name+phone+address);

                    }
                }
            }
        }


    }

    private void initCrawlerWithSeeds(List<String> seeds) {
        for (int i=0;i<seeds.size();i++){
            Links.addUnvisitedUrlQueue(seeds.get(i));
        }
    }
}
