<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>后台管理</title>
    <link rel="stylesheet" href="css/layui.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/lang/zh-cn/zh-cn.js"></script>
    <style>
        .layui-body{
            background: url("images/762.jpg");
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">货代公司黄页后台</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li id="1" class="layui-nav-item" ><a href="addCompanyInfo.jsp"><p>增加公司信息</p></a></li>
                <li id="2" class="layui-nav-item" style="background-color: black"><a href="editShippingInfo.jsp"><p>航运知识</p></a></li>
                <li id="3" class="layui-nav-item" ><a href="editHiringInfo.jsp"><p>人才招娉</p></a></li>
                <li id="4" class="layui-nav-item"><a href="editCompanyInfo.jsp"><p>编辑公司信息</p></a></li>
            </ul>
        </div>
    </div>
    <div class="layui-body" style="">
        <!-- 内容主体区域 -->
        <div class="topTitleBox" style="font-size: 30px;color: white;position: relative">
            <b style="margin: 44px;position: absolute">航运知识</b>
        </div>
        <div class="inputBox" >
            <div class="search_Box" style="float:left">
                <img src="images/1.png">
                <input form="subForm" type="text" name="title" placeholder="请输入标题">
                <p>标题 :</p>
            </div>
            <form action="${pageContext.request.contextPath}/BacShippingKnowledgeServlet" method="get" id="subForm" >
                <button type="submit" style="width: 100px;cursor:pointer;float: right;border-radius: 20%;box-shadow: 0px 2px 4px 2px black;background-color: gainsboro;margin-top: -45px">确认</button>

                <div id="editor" style="height: 300px;width: 800px;margin-top: 100px;margin-left: 100px">
                    <script type="text/javascript" charset="utf-8">UE.getEditor('editor');</script>
                </div>
            </form>

            <%--<div class="search_Box" style="margin-top: 170px">--%>

            <%--</div>--%>
        </div>
        <div class="text" style="opacity:0.8;padding-left:6px;width: 400px;height: 500px;float: right;font-size: 20px;margin: 46px;box-shadow: 0px 2px 4px 2px dimgrey;font-family: 华文行楷">
            航运（Shipping）表示透过水路运输和空中运输等方式来运送人或货物。一般来说水路运输的所需时间较长，但成本较为低廉，这是空中运输与陆路运输所不能比拟的。水路运输每次航程能运送大量货物，而空运和陆运每次的负载数量则相对较少。因此在国际贸易上，水路运输是较为普遍的运送方式。15世纪以来航运业的蓬勃发展极大的改变了人类社会与自然景观。
            定期船运指船只在固定航线上的港口之间，接受零星杂货或货柜货运，依照预先安排的船期往复航行。定期船运的优点之一是运费较为稳定。
            与定期船运相对的是不定期船运。不定期船运以运送散装干货或石油为主，既无固定班期，亦无固定航线，端视货物流动之需要而决定其航程，与定期船运有所区别。
            船上交货（Free on Board，FOB）- 卖家负责运到港口的成本费，之后的费用由买家承担；卖家承担货物责任至起运港，之后责任由买家承担。
            成本，保险加运费（Cost & Insurance & freight，CIF）：保险和运费都是由卖家支付，至目的地为止；卖家承担货物责任至目的地港。 [1]

        </div>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
    </div>
</div>
</body>
<script>
</script>
</html>
