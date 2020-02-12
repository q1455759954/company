<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link href="css/base.css" rel="stylesheet">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/comm.js"></script>
</head>
<body>
<header>
    <div class="top">

    </div>
    <div class="profile">
        <div class="avatar fl"><a href="${pageContext.request.contextPath}/addCompanyInfo.jsp" target="_blank"><img src="images/logoC.jpg"></a></div>
        <div class="guanzhu fr">
            <ul>
                <li><img src="images/weizhi.png"><span>当前位置：${address}</span></li>
                <li><img src="images/qq.png"><span>QQ:1455759954</span></li>
            </ul>
        </div>
        <div class="userName">货代公司查询</div>
    </div>
    <nav>
        <ul id="startlist">
            <li><a href="IndexServlet">首页</a> </li>
            <li><a href="cargoTracking.jsp">货物追踪</a> </li>
            <li><a href="ShippingKnowledgeServlet">航运知识</a></li>
            <li><a href="HiringServlet">人才招聘</a></li>
        </ul>
    </nav>
</header>
</body>
</html>
