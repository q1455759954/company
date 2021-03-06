<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="utf-8"/>
    <link href="css/companyDetailCss.css" rel="stylesheet">
    <title>${companyDetail.companyName}</title>
</head>
<body>
<header>
    <div class="bac">
        <p>${companyDetail.companyName}</p>
        <!--<img src="../images/conpanyDetail_bac.gif">-->
    </div>
    <div class="menu">
        <ul >
            <li><a class="tab-on" href="${pageContext.request.contextPath}/CompanyDetailServlet?id=${companyDetail.id}">公司介绍</a></li>
            <li><a href="${pageContext.request.contextPath}/CompanyHiringServlet?id=${companyDetail.id}">人才招聘</a></li>
        </ul>
    </div>
</header>

<article>
    <main class="leftBox">
        <div>
            <h1 class="title">公司介绍</h1>
            <div class="context">
                <h1 class="comName">${companyDetail.companyName}</h1>
                <c:choose>
                    <c:when test="${companyDetail.logo eq '暂无信息'}">
                        <img src="http://style.jctrans.com/sp10/pt/img/compic.gif" alt="${companyDetail.companyName}" class="comPic" width="160" height="207">
                    </c:when>
                    <c:otherwise>
                        <img src="${companyDetail.logo}" alt="${companyDetail.companyName}" class="comPic" width="160" height="207">
                    </c:otherwise>
                </c:choose>
                <p>
                    ${companyDetail.introduction}
                </p>
            </div>
        </div>
    </main>
    <aside class="rightBox">
        <h1 class="title">企业名片</h1>
        <div class="contentInfo">
            <h1 class="nameInfo">${companyDetail.companyName}</h1>
            <ul class="fei">
                <li><span class="name">联 系 人：</span><b class="username">${companyDetail.peopleName}</b></li>
                <li><span class="name">联系电话：</span><span title="userInfo.phone">${companyDetail.phone}</span></li>
                <li><span class="name">Q&nbsp;&nbsp;Q：</span>${companyDetail.qq}</li>
                <li><span class="name">联系地址：</span>${companyDetail.address}</li>
                <li><span class="name">官&nbsp;&nbsp;网：</span>${companyDetail.index}</li>
            </ul>
        </div>
    </aside>
</article>
<footer>
    <div class="foot">
        <p class="map">
            <a href="">关于我们</a>
            ┆ <a href="" >服务条款</a>
            ┆ <a href="" >法律声明</a>
            ┆ <a href="" >支付方式</a>
            ┆ <a href="" >视频教程</a>
            ┆ <a href="" >广告服务</a>
            ┆ <a href="" >网站地图</a>
            ┆ <a href="" >联系我们</a>
            ┆ <a href="http://www.jctrans.com/youqing/html/youqing.htm" target="_blank">友情链接</a>
        </p>
        <p class="copyright">
            中国物流网版权所有2000-2010 京ICP证060822号
        </p>
    </div>
</footer>
</body>
</html>
