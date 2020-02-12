<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang=zh_CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>后台管理</title>
    <link rel="stylesheet" href="css/layui.css">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" src="js/editBacInfo.js"></script>
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
                <li id="1" class="layui-nav-item" style="background-color: black"><a href="addCompanyInfo.jsp"><p>增加公司信息</p></a></li>
                <li id="2" class="layui-nav-item" ><a href="editShippingInfo.jsp"><p>航运知识</p></a></li>
                <li id="3" class="layui-nav-item" ><a href="editHiringInfo.jsp"><p>人才招娉</p></a></li>
                <li id="4" class="layui-nav-item" ><a href="editCompanyInfo.jsp"><p>编辑公司信息</p></a></li>
            </ul>
        </div>
    </div>
    <div class="layui-body" style="">
        <!-- 内容主体区域 -->
        <div class="topTitleBox" style="font-size: 30px;color: white;position: relative">
            <b style="margin: 44px;position: absolute">增加公司信息</b>
        </div>
        <div class="inputBox" style="">
            <div class="search_Box">
                <img src="images/1.png">
                <input id="9" type="text" form="subForm" name="indexUrl" placeholder="请输入官网地址">
                <p>网址 :</p>
            </div>
            <div class="search_Box" style="width: 585px">
                <img src="images/2.png">
                <select form="subForm" name="city" id="city" disabled="disabled" style="float: right;width: 98px;margin-right: 302px;margin-top: 5px">
                    <option value="0">--请选择市--</option>
                </select>
                <select form="subForm" name="province" id="province" onchange="choose(this.value)" style="float: right;width: 98px;margin-top: 5px">
                    <option value="0">--请选择省--</option>
                    <option value="广东">广东</option>
                    <option value="北京">北京</option>
                    <option value="河北">河北</option>
                    <option value="上海">上海</option>
                    <option value="天津">天津</option>
                    <option value="重庆">重庆</option>
                    <option value="河北">河北</option>
                    <option value="山西">山西</option>
                    <option value="内蒙古">内蒙古</option>
                    <option value="辽宁">辽宁</option>
                    <option value="吉林">吉林</option>
                    <option value="黑龙江">黑龙江</option>
                    <option value="江苏">江苏</option>
                    <option value="浙江">浙江</option>
                    <option value="安徽">安徽</option>
                    <option value="福建">福建</option>
                    <option value="江西">江西</option>
                    <option value="山东">山东</option>
                    <option value="河南">河南</option>
                    <option value="湖北">湖北</option>
                    <option value="湖南">湖南</option>
                    <option value="广东">广东</option>
                    <option value="广西">广西</option>
                    <option value="海南">海南</option>
                    <option value="贵州">贵州</option>
                    <option value="云南">云南</option>
                    <option value="四川">四川</option>
                    <option value="西藏">西藏</option>
                    <option value="陕西">陕西</option>
                    <option value="甘肃">甘肃</option>
                    <option value="宁夏">宁夏</option>
                    <option value="青海">青海</option>
                    <option value="新疆">新疆</option>
                    <option value="香港">香港</option>
                    <option value="澳门">澳门</option>
                    <option value="台湾">台湾</option>

                </select>
                <%--<input id="inCity" type="text" name="search" placeholder="请输入所在城市">--%>
                <p>城市 :</p>
            </div>
            <div class="search_Box">
                <img src="images/3.png">
                <input form="subForm" type="text" name="companyName" form="subForm" placeholder="请输入公司名称">
                <p>公司 :</p>
            </div>
            <div class="search_Box" style="height: 180px">
                <img src="images/4.png">
                <p style="float: left;margin-left: 14px">运输:</p>
                <p style="font-size: 13px"><input form="subForm"  name="type" style="height: 15px;margin-top: 0px" type="checkbox" value="航空" style="margin-top: 0px"/>航空</p>
                <p style="font-size: 13px"><input form="subForm"  name="type" style="height: 15px;margin-top: 0px" type="checkbox" value="陆运" style="margin-top: 0px"/>陆运</p>
                <p style="font-size: 13px"><input form="subForm"  name="type" style="height: 15px;margin-top: 0px" type="checkbox" value="散杂" style="margin-top: 0px"/>散杂</p>
                <p style="font-size: 13px"><input form="subForm"  name="type" style="height: 15px;margin-top: 0px" type="checkbox" value="船代" style="margin-top: 0px"/>船代</p>
                <p style="font-size: 13px"><input form="subForm"  name="type"style="height: 15px;margin-top: 0px" type="checkbox" value="物流" style="margin-top: 0px"/>物流</p>
                <%--<select form="subForm" name="type" id="tansfrom" style="float: right;width: 130px;margin-right: 173px;margin-top: 5px">--%>
                    <%--<option value="0">--请选运输方式--</option>--%>
                    <%--<option value="航空">航空</option>--%>
                    <%--<option value="陆运">陆运</option>--%>
                    <%--<option value="散杂">散杂</option>--%>
                    <%--<option value="船代">船代</option>--%>
                    <%--<option value="物流">物流</option>--%>
                <%--</select>--%>
                <%--<input type="text" name="search" placeholder="请输入运输方式">--%>
            </div>
            <div class="search_Box">
                <img src="images/5.png">
                <input form="subForm" type="text" name="phone" placeholder="请输入联系方式">
                <p>电话 :</p>
            </div>
            <div class="search_Box">
                <img src="images/7.png">
                <input form="subForm" type="text" name="qq" placeholder="请输入官方QQ">
                <p>qq :</p>
            </div>
            <div class="search_Box">
                <img src="images/9.png">
                <input form="subForm" type="text" name="peopleName" placeholder="请输入联系人姓名">
                <p>C.P:</p>
            </div>
            <div class="search_Box">
                <img src="images/8.png">
                <input form="subForm" type="text" name="address" placeholder="请输入公司地址">
                <p>ADD:</p>
            </div>
        </div>
        <div class="inputBox" style="width: 40%;position: relative">
            <div class="search_Box" style="width: 100%;position: absolute;margin-left:0px">
                <img src="images/6.png">
                <p style="float: left;margin-left: 10px">请输入公司简介 :</p>
                <form action="${pageContext.request.contextPath}/BacAddServlet" method="get" id="subForm" >
                <div id="editor" style="height: 300px;width: 100%;margin-top: 20px;float: left">
                    <script type="text/javascript" charset="utf-8">UE.getEditor('editor');</script>
                </div>
                    <input type="submit"  value="确认编辑" class="" style="text-align:center;width:100px;padding:0px;cursor:pointer;border-radius: 20%;box-shadow: 0px 2px 4px 2px black;background-color: gainsboro;margin-top: 20px;margin-right: 230px" >
                </form>
            </div>
        </div>
        <%--<div class="search_Box" style="margin-top: 170px;width: 200px;float: none;height: 100px">--%>
        <%----%>
        <%--</div>--%>
        <%--<div class="text" style="padding-left:6px;background-color: grey;width: 200px;height: 365px;float: right;font-size: 20px;margin: 46px;box-shadow: 0px 2px 4px 2px dimgrey;font-family: 华文行楷">--%>
        <%--货代是货运代理人，不是船公司实际承运人。 货代与物流（第三方）、货运公司本质上是一样的。货代又不同于船代，船代可以代表船公司处理有关订舱，签单，改单，放箱等工作。货代有一级与二级之分，一级货代有美金发票，二级没有而且必须要到国税局开票。一级货代可直接向船公司订舱，但不一定有资格订舱，有许多船公司只指定了几个少数的货代做为订舱口。--%>
        <%--</div>--%>

    </div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
    </div>
    <span style="visibility: hidden" class="re">${re}</span>
</div>
</body>

</html>