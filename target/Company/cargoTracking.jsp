<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="utf-8"/>
    <title>货物追踪</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<article>
    <main class="box" style="background: #EFF9FF">
        <div class="topBox">
            <h1 class="main_title">请到以下专业网站查询</h1>
        </div>
        <div class="company_list">
            <div class="table_list">
                <div class="cargoTracking">
                    <li>
                        <i><a href="http://www.likecha.com/tools/airCargo.html" title="立刻查"><img src="images/logo_likecha.png" alt="立刻查"></a></i>
                        <h3><a href="http://www.likecha.com/tools/airCargo.html" target="_blank">立刻查</a></h3>
                        <p>苏州立刻电子商务有限公司（以下简称“立刻公司”）是国际物流领域领先的互联网技术支持和软件应用服务提供商。公司始终专注于国际物流行业发展规律，致力于打通国际物流供应链体系中业务流、信息流、人脉流的传输链条，通过整合物流、通关、货代及进出口贸易用户需求，为现代国际物流开启崭新的信息化交互时代。</p>
                    </li>
                    <li>
                        <i><a href="http://www.ztky.com/GoodsTrace?funcid=14&companyid=1" title="中铁物流集团"><img src="images/logo_zhongtie.gif" alt="中铁物流集团"></a></i>
                        <h3><a href="http://www.ztky.com/GoodsTrace?funcid=14&companyid=1" target="_blank">中铁物流集团</a></h3>
                        <p>中铁物流集团成立于1993年3月，作为国家AAAAA级（最高级）综合服务型物流企业，业务涵盖仓储与供应链、整车运输、零担快运、末端配送、铁路、跨境、冷链、金融、代理报关报检等。截至2018年，集团全网营业网点5000多个，运营车辆12000多台，从业员工5万多人，仓储管理面积超过千万平方米，并在美国、加拿大、英国、韩国、尼泊尔、香港等多个国家及地区开通境外物流和海外仓业务，为全球客户提供专业、便捷、安全的综合物流服务。</p>
                    </li>
                    <li>
                        <i><a href="http://hyfw.12306.cn/gateway/DzswNewD2D/Dzsw/page/business-chcx-hwzz" title="中国铁路货运电子商务系统"><img src="images/logo_tielu.png" alt="中国铁路货运电子商务系统"></a></i>
                        <h3><a href="http://hyfw.12306.cn/gateway/DzswNewD2D/Dzsw/page/business-chcx-hwzz" target="_blank">中国铁路货运电子商务系统</a></h3>
                        <p>中国铁路总公司以铁路客货运输服务为主业，实行多元化经营。负责铁路运输统一调度指挥，负责国家铁路客货运输经营管理，承担国家规定的公益性运输，保证关系国计民生的重点运输和特运、专运、抢险救灾运输等任务。负责拟订铁路投资建设计划，提出国家铁路网建设和筹资方案建议。负责建设项目前期工作，管理建设项目。负责国家铁路运输安全，承担铁路安全生产主体责任。</p>
                    </li>

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
                            <option value="0">省份</option>
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
                        <span>省 份：</span>
                        <select style="width: 110px" id="city" form="searchForm" name="city">
                            <option value="0">城市</option>
                        </select>
                    </li>
                    <li>
                        <span>类 型：</span>
                        <select style="width: 110px" id="type" form="searchForm" name="type">
                            <option value="0">主营业务</option>
                            <option value="航空">航空</option>
                            <option value="陆运">陆运</option>
                            <option value="陆运">散杂</option>
                            <option value="陆运">船代</option>
                            <option value="陆运">物流</option>

                        </select>
                    </li>
                    <form action="/" method="get" id="searchForm" >
                        <input type="submit"  value="" class="btn_search">
                    </form>
                </ul>
            </div>
        </div>
    </aside>
    <div style="height:700px;background: #FFFFFF">

    </div>
</article>
<jsp:include page="footer.jsp"></jsp:include></body>
</html>
