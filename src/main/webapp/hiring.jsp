<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="utf-8"/>
    <title>人才招聘</title>
    <script src="js/select.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<article>
    <main class="box" style="background: #EFF9FF">
        <div class="topBox">
            <h1 class="main_title">以下为招聘信息</h1>
        </div>
        <div class="company_list">
            <div class="table_list">
                <div class="hiring">
                    <c:forEach items="${pageBean.pageData}" var="pro" varStatus= "status">
                        <li>
                            <i><a href="${pageContext.request.contextPath}/CompanyHiringServlet?id=${pro.companyid}" target="_blank" title="${company.get(status.index).name}">
                                <c:choose>
                                    <c:when test="${company.get(status.index).logo eq '暂无信息'}">
                                    <img src="http://style.jctrans.com/sp0907/kong.png" alt=""></a></i>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${company.get(status.index).logo}" alt=""></a></i>
                                    </c:otherwise>
                                </c:choose>
                            <h3><a href="${pageContext.request.contextPath}/CompanyHiringServlet?id=${pro.companyid}" target="_blank">${company.get(status.index).name}</a></h3>
                            <span>职位：${pro.job}</span>
                            <span>人数：${pro.num}人</span>
                            <span>薪金：${pro.money}</span><br>
                            <p> 岗位描述：${pro.content}</p>
                        </li>
                    </c:forEach>
                    <div class="pagelist pagebg" style="background: #EFF9FF">
                        <a href="${pageContext.request.contextPath}/HiringServlet?currentPage=1">首页</a>
                        <span>当前第${requestScope.pageBean.curPage}页</span>
                        <a href="${pageContext.request.contextPath}/HiringServlet?currentPage=${pageBean.curPage-1}">上一页</a>
                        <a href="${pageContext.request.contextPath}/HiringServlet?currentPage=${pageBean.curPage+1}">下一页</a>
                        <span>共${requestScope.pageBean.totalPage}页</span>
                        <a href="${pageContext.request.contextPath}/HiringServlet?currentPage=${pageBean.totalPage}">尾页</a>
                    </div>
                </div>

            </div>

        </div>

    </main>
    <!--右边-->
    <hireAside class="r_box">
        <!--图片-->
        <div class="img_top" style="padding-top: 10px">
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
    </hireAside>
    <div style="height:1050px;background: #FFFFFF">
        <span style="visibility: hidden" class="province">${province}</span>
        <span style="visibility: hidden" class="city">${city}</span>
        <span style="visibility: hidden" class="type">${type}</span>
        <span style="visibility: hidden" class="url">${pageContext.request.contextPath}</span>
    </div>
</article>
<jsp:include page="footer.jsp"></jsp:include></body>
</body>
</html>
