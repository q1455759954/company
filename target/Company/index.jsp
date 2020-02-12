<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
         <%--手机兼容--%>
        <%--H5页面窗口自动调整到设备宽度，并禁止用户缩放页面--%>
        <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
        <%--忽略将页面中的数字识别为电话号码--%>
        <meta name="format-detection" content="telephone=no" />
        <%--忽略Android平台中对邮箱地址的识别--%>
        <meta name="format-detection" content="email=no" />
        <%--viewport模板--%>
        <meta charset="utf-8">
        <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="black" name="apple-mobile-web-app-status-bar-style">
        <meta content="telephone=no" name="format-detection">
        <meta content="email=no" name="format-detection">

    <meta http-equiv="Content-Type" content="text/html";charset="utf-8"/>
    <meta name="referrer" content="no-referrer">
    <title>货代公司</title>
    <link href="css/base.css" rel="stylesheet">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/ajax.js"></script>
    <script type="text/javascript" src="js/comm.js"></script>
    <script src="js/select.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<article>
    <main class="box">
        <div class="topBox">
            <h1 class="main_title">航空公司</h1>
            <h1 class="main_title">陆运公司</h1>
            <h1 class="main_title">散杂公司</h1>
            <h1 class="main_title">船代公司</h1>
            <h1 class="main_title">物流公司</h1>
        </div>

        <div class="company_list">
            <div class="c_title">
                <ul>
                    <li class="click_type" id="firstClick"><h2><b>航空公司查询</b></h2></li>
                    <li><h2><b>陆运公司查询</b></h2></li>
                    <li><h2><b>散杂公司查询</b></h2></li>
                    <li><h2><b>船代公司查询</b></h2></li>
                    <li><h2><b>物流公司查询</b></h2></li>
                </ul>
            </div>
            <div class="table_list">
                <div class="table_name">
                    <ul>
                        <li>
                            <span class="c_laba">公司logo</span>
                            <span class="c_labb">公司名称|公司介绍|联系人</span>
                            <span class="c_labc">公司所在地</span>
                            <span class="c_labd">运输方式</span>
                            <span class="c_labe">联系方式</span>
                        </li>
                    </ul>
                </div>
                <div class="table_cont">
                    <c:forEach items="${pageBean.pageData}" var="pro" varStatus= "status">
                        <c:if test="${status.index % 2 ==0}">
                            <ul class="white">
                                <li class="c_laba table_logo">
                                    <c:choose>
                                    <c:when test="${pro.logo eq '暂无信息'}">
                                        <a><img src="http://style.jctrans.com/sp0907/kong.png"  alt="${pro.logo}"></a>
                                        </c:when>
                                    <c:otherwise>
                                        <a><img src="${pro.logo}" alt="${pro.logo}"></a>
                                    </c:otherwise>
                                    </c:choose>
                                </li>
                                <li class="c_labb">
                                    <div class="com_name">
                                        <a href="${pageContext.request.contextPath}/CompanyDetailServlet?id=${pro.id}" target="_blank" title="${pro.companyName}">${pro.companyName}</a>
                                        <p class="com_info">
                                            ${pro.introduction}
                                        </p>
                                        <p class="link_person">联系人：${pro.peopleName}</p>
                                    </div>
                                </li>
                                <li class="c_labc table_zi">${pro.city}</li>
                                <li class="c_labd table_zi">${pro.type}</li>
                                <li class="c_labe table_zi">${pro.phone}</li>
                            </ul>
                        </c:if>
                        <c:if test="${status.index % 2 ==1}">
                            <ul class="blue">
                                <li class="c_laba table_logo">
                                    <c:choose>
                                        <c:when test="${pro.logo eq '暂无信息'}">
                                            <a><img src="http://style.jctrans.com/sp0907/kong.png"  alt="${pro.logo}"></a>
                                        </c:when>
                                        <c:otherwise>
                                            <a><img src="${pro.logo}" alt="${pro.logo}"></a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li class="c_labb">
                                    <div class="com_name">
                                        <a href="${pageContext.request.contextPath}/CompanyDetailServlet?${pro.id}" target="_blank" title="${pro.companyName}">${pro.companyName}</a>
                                        <p class="com_info">
                                                ${pro.introduction}
                                        </p>
                                        <p class="link_person">联系人：${pro.peopleName}</p>
                                    </div>
                                </li>
                                <li class="c_labc table_zi">${pro.city}</li>
                                <li class="c_labd table_zi">${pro.type}</li>
                                <li class="c_labe table_zi">${pro.phone}</li>
                            </ul>
                        </c:if>
                    </c:forEach>
                        <%--翻页--%>
                        <div class="pagelist pagebg">
                            <a onclick="getDataByPage(this);return false" href="${pageContext.request.contextPath}/IndexServlet?province=${province}&city=${city}&type=${type}&currentPage=1">首页</a>
                            <span>当前第${requestScope.pageBean.curPage}页</span>
                            <a onclick="getDataByPage(this);return false" href="${pageContext.request.contextPath}/IndexServlet?province=${province}&city=${city}&type=${type}&currentPage=${pageBean.curPage-1}">上一页</a>
                            <a onclick="getDataByPage(this);return false" href="${pageContext.request.contextPath}/IndexServlet?province=${province}&city=${city}&type=${type}&currentPage=${pageBean.curPage+1}">下一页</a>
                            <span>共${requestScope.pageBean.totalPage}页</span>
                            <a onclick="getDataByPage(this);return false" href="${pageContext.request.contextPath}/IndexServlet?province=${province}&city=${city}&type=${type}&currentPage=${pageBean.totalPage}">尾页</a>
                        </div>
                </div>

            </div>

        </div>

    </main>
    <!--右边-->
    <aside class="r_box">
        <!--图片-->
        <div class="img_top">
            <img src="images/adv.gif">
        </div>

        <!--搜索-->
        <div class="search">
            <h2>搜索</h2>
            <div class="search_box">
                <ul>
                    <li>
                        <span>省 份：</span>
                        <select style="width: 110px" id="province" onchange="getCity()" form="searchForm" name="province">
                            <option value="">省份</option>
                            <option value= "北京" >北京</option>
                            <option value= "上海" >上海</option>
                            <option value= "天津" >天津</option>
                            <option value= "重庆" >重庆</option>
                            <option value= "河北" >河北</option>
                            <option value= "山西" >山西</option>
                            <option value= "内蒙古" >内蒙古</option>
                            <option value= "辽宁" >辽宁</option>
                            <option value= "吉林" >吉林</option>
                            <option value= "黑龙江" >黑龙江</option>
                            <option value= "江苏" >江苏</option>
                            <option value= "浙江" >浙江</option>
                            <option value= "安徽" >安徽</option>
                            <option value= "福建" >福建</option>
                            <option value= "江西" >江西</option>
                            <option value= "山东" >山东</option>
                            <option value= "河南" >河南</option>
                            <option value= "湖北" >湖北</option>
                            <option value= "湖南" >湖南</option>
                            <option value= "广东" >广东</option>
                            <option value= "广西" >广西</option>
                            <option value= "海南" >海南</option>
                            <option value= "四川" >四川</option>
                            <option value= "贵州" >贵州</option>
                            <option value= "云南" >云南</option>
                            <option value= "西藏" >西藏</option>
                            <option value= "陕西" >陕西</option>
                            <option value= "甘肃" >甘肃</option>
                            <option value= "宁夏" >宁夏</option>
                            <option value= "青海" >青海</option>
                            <option value= "新疆" >新疆</option>
                            <option value= "香港" >香港</option>
                            <option value= "澳门" >澳门</option>
                            <option value= "台湾" >台湾</option>
                    </select>
                    </li>
                    <li>
                        <span>城 市：</span>
                        <select style="width: 110px" id="city" form="searchForm" name="city">
                            <option value="">城市</option>
                        </select>
                    </li>
                    <li>
                        <span>类 型：</span>
                        <select style="width: 110px" id="type" form="searchForm" name="type">
                            <option value="">主营业务</option>
                            <option value="航空">航空</option>
                            <option value="陆运">陆运</option>
                            <option value="散杂">散杂</option>
                            <option value="船代">船代</option>
                            <option value="物流">物流</option>

                        </select>
                    </li>
                    <form action="${pageContext.request.contextPath}/IndexServlet" method="get" id="searchForm" >
                    <input type="submit"  value="" class="btn_search">
                    </form>
                </ul>
            </div>
        </div>
    </aside>
    <div style="height:1005px;background: #FFFFFF">
        <span style="visibility: hidden" class="province">${province}</span>
        <span style="visibility: hidden" class="city">${city}</span>
        <span style="visibility: hidden" class="type">${type}</span>
        <span style="visibility: hidden" class="url">${pageContext.request.contextPath}</span>
    </div>
</article>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
