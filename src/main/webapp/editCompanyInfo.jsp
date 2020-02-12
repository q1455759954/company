<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/layui.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bac.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" src="js/editBacInfo.js"></script>
    <style>
        .layui-body{
            background-color: gray;
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
                <li id="3" class="layui-nav-item" ><a href="editHiringInfo.jsp"><p>人才招娉</p></a></li>
                <li id="4" class="layui-nav-item" style="background-color: black"><a href="editCompanyInfo.jsp"><p>编辑公司信息</p></a></li>
            </ul>
        </div>
    </div>
    <div class="layui-body" style="">
        <!-- 内容主体区域 -->
        <div class="topTitleBox" style="font-size: 30px;color: white;position: relative">
            <b style="margin: 44px;position: absolute">编辑公司信息</b>
        </div>
        <div class="searchBox">
            <form>
                <input  name="companyName" id="companyName" type="text" placeholder="请输入公司名称搜索">
                <button type="submit" onclick="showCompanyData();return false"></button>
            </form>
        </div>
        <div class="alterBox" style="width: 90%;height: 625px;margin-left: 75px;margin-top: 30px;box-shadow: 2px 4px 8px 4px black;padding-top: 10px">
            <ul style="list-style-type: none;margin-left: 20px;padding: 0px;float: left">
                <li style="width: 390px;margin-top: 15px;height: 30px">
                    <img src="images/1.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <input form="subForm" id="indexUrl" name="indexUrl" type="text"  placeholder="请输入官网地址">
                    <p style="float: right;font-size: 15px;margin-top: 5px;margin-right: 5px;">网址 :</p>
                </li>
                <li style="width: 390px;margin-top: 30px;height: 30px">
                    <img src="images/3.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <input form="subForm" id="name" name="companyName" type="text" placeholder="请输入公司名称">
                    <p style="float: right;font-size: 15px;margin-top: 5px;margin-right: 5px;">公司 :</p>
                </li>
                <li style="width: 390px;margin-top: 30px;height: 30px">
                    <img src="images/5.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <input form="subForm" id="phone" name="phone" type="text"  placeholder="请输入联系方式">
                    <p style="float: right;font-size: 15px;margin-top: 5px;margin-right: 5px;">电话 :</p>
                </li>
                <li style="width: 390px;margin-top: 30px;height: 30px">
                    <img src="images/7.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <input form="subForm" id="qq" name="qq" type="text"  placeholder="请输入官方QQ">
                    <p style="float: right;font-size: 15px;margin-top: 5px;margin-right: 5px;">qq :</p>
                </li>
                <li style="width: 390px;margin-top: 30px;height: 30px">
                    <img src="images/9.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <input form="subForm" id="peopleName" name="peopleName" type="text"  placeholder="请输入联系人姓名">
                    <p style="float: right;font-size: 15px;margin-top: 5px;margin-right: 5px;">C.P :</p>
                </li>
                <li style="width: 390px;margin-top: 30px;height: 30px">
                    <img src="images/8.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <input form="subForm" id="address" type="text" name="address" placeholder="请输入公司地址">
                    <p style="float: right;font-size: 15px;margin-top: 5px;margin-right: 5px;">ADD :</p>
                </li>
                <li style="width: 390px;margin-top: 30px;height: 200px">
                    <img src="images/4.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <p style="float: left;font-size: 15px;margin-top: 5px;margin-left: 13px;">运输 :</p>
                    <p style="font-size: 15px;margin-left: 200px;height: 15px"><input form="subForm" name="type" id="hangKong" style="height: 20px;margin-top: 0px;width: 15px" type="checkbox" value="航空" style="margin-top: 0px"/>航空</p>
                    <p style="font-size: 15px;margin-left: 200px;height: 15px"><input form="subForm" name="type" id="luYun" style="height: 20px;margin-top: 0px;width: 15px" type="checkbox" value="陆运" style="margin-top: 0px"/>陆运</p>
                    <p style="font-size: 15px;margin-left: 200px;height: 15px"><input form="subForm" name="type" id="sanZa" style="height: 20px;margin-top: 0px;width: 15px" type="checkbox" value="散杂" style="margin-top: 0px"/>散杂</p>
                    <p style="font-size: 15px;margin-left: 200px;height: 15px"><input form="subForm" name="type" id="chuanDai" style="height: 20px;margin-top: 0px;width: 15px" type="checkbox" value="船代" style="margin-top: 0px"/>船代</p>
                    <p style="font-size: 15px;margin-left: 200px;height: 15px"><input form="subForm" name="type" id="wuLiu" style="height: 20px;margin-top: 0px;width: 15px" type="checkbox" value="物流" style="margin-top: 0px"/>物流</p>
                </li>
            </ul>
            <ul style="list-style-type: none;margin-left: 20px;padding: 0px;float: right;margin-right: 25px;width: 500px">
                <form action="${pageContext.request.contextPath}/BacUpdateServlet" method="get" id="subForm">
                <li style="width: 390px;margin-top: 15px;height: 30px;margin-right: 20px">
                    <img src="images/6.png" style="width: 30px; height: 30px;float: left;border-radius: 100%;">
                    <p style="float: left;font-size: 15px;margin-top: 5px;margin-left: 10px;">请输入公司简介 :</p>
                    <div id="editor" style="height: 200px;width: 500px;margin-top: 20px;float: left">
                        <script type="text/javascript" charset="utf-8">UE.getEditor('editor');</script>
                    </div>
                    <input type="hidden" name="companyId" id="companyId">
                </li>
                <li style="width: 390px;margin-top: 30px;height: 200px">
                    <button type="submit" style="cursor:pointer;border-radius: 20%;box-shadow: 0px 2px 4px 2px black;background-color: gainsboro;margin-left: 0;margin-top: 50px">确认编辑</button>
                </li>
                </form>
            </ul>
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