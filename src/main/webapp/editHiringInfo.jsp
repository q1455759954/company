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
    <%--<script src="js/DivLocalSwitch.js"></script>--%>
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
                <li id="2" class="layui-nav-item" ><a href="editShippingInfo.jsp"><p>航运知识</p></a></li>
                <li id="3" class="layui-nav-item" style="background-color: black"><a href="editHiringInfo.jsp"><p>人才招娉</p></a></li>
                <li id="4" class="layui-nav-item" ><a href="editCompanyInfo.jsp"><p>编辑公司信息</p></a></li>
            </ul>
        </div>
    </div>
    <div class="layui-body" style="">
        <!-- 内容主体区域 -->
        <div class="topTitleBox" style="font-size: 30px;color: white;position: relative">
            <b style="margin: 44px;position: absolute">编辑货代公司信息</b>
        </div>
        <form action="${pageContext.request.contextPath}/BacHiringServlet" method="get">
        <div class="inputBox" style="margin-left: 50px;width: 40%">
            <div class="search_Box">
                <img src="images/3.png">
                <input type="text" name="companyName" placeholder="请输入公司名称">
                <p>公司 :</p>
            </div>
            <div class="search_Box">
                <img src="images/111.png">
                <input type="text" name="job" placeholder="请输入招聘职位">
                <p>职位 :</p>
            </div>
            <div class="search_Box">
                <img src="images/222.png" style="float: left">
                <%--<input type="text" name="search" placeholder="请输入招聘要求">--%>
                <p style="margin-right: 306px">要求 :</p>
            </div>
            <div id="editor" style="height: 300px;width: 100%;margin-top: 20px;margin-left: 0px">
                <script type="text/javascript" charset="utf-8">UE.getEditor('editor');</script>
            </div>
        </div>
        <div class="inputBox" style="margin-right: 100px;float: right;margin-top: 0px;width: 40%">
            <div class="search_Box">
                <img src="images/333.png">
                <input type="text" name="num" placeholder="请输入招聘人数">
                <p>人数 :</p>
            </div>
            <div class="search_Box">
                <img src="images/444.png">
                <input type="text" name="money" placeholder="请输入工资">
                <p>薪金 :</p>
            </div>
            <div class="search_Box">
                <img src="images/5.png">
                <input
                        type="text" name="mail" placeholder="请输入联系方式">
                <p>电话 :</p>
            </div>
            <div class="search_Box" style="width: 100px;height: 50px;float: right;margin-right: 170px">
                <button style="cursor:pointer;border-radius: 20%;box-shadow: 0px 2px 4px 2px black;background-color: gainsboro;margin-left: 0;margin-top: 50px">确认编辑</button>
            </div>
        </div>
        <%--<div class="search_Box" style="margin-top: 170px;width: 200px;float: none;height: 100px">--%>
        <%----%>
        <%--</div>--%>
        <%--<div class="text" style="padding-left:6px;background-color: grey;width: 200px;height: 365px;float: right;font-size: 20px;margin: 46px;box-shadow: 0px 2px 4px 2px dimgrey;font-family: 华文行楷">--%>
        <%--货代是货运代理人，不是船公司实际承运人。 货代与物流（第三方）、货运公司本质上是一样的。货代又不同于船代，船代可以代表船公司处理有关订舱，签单，改单，放箱等工作。货代有一级与二级之分，一级货代有美金发票，二级没有而且必须要到国税局开票。一级货代可直接向船公司订舱，但不一定有资格订舱，有许多船公司只指定了几个少数的货代做为订舱口。--%>
        <%--</div>--%>
        </form>
    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
    </div>
</div>
</body>
</html>