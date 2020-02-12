<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html";charset="utf-8"/>
    <title>航运知识</title>
    <link href="css/shipping.css" rel="stylesheet">
</head>
<body style="background: white">
<jsp:include page="header.jsp"></jsp:include>

<article>
    <div id="pic" style="width: 100%;height: 200px;margin-bottom: 20px;text-align:center;opacity: 1.0">
        <img id="picT" src="images/151.png"  style="width: 100%;height: 200px">
    </div>
    <table class="hang" border="0" cellspacing="0" cellpadding="0" width="80%" align="left" STYLE="float: right">
        <div  style="float:left;width: 18%;height:300px">
            <ul style="list-style-type: none;padding: 0px;margin: 0px">
                <li style="height: 50px;width: 100%;border-bottom: 1px dashed gray;cursor: pointer">
                    <div style="height: 48px;width:100%;box-shadow:inset 5px 0px 30px 20px dimgrey;font-size: 18px;position: relative"><b style="margin: 10px;position: absolute;width: 100%;display: block;FONT-FAMILY: Arial, Helvetica, sans-serif">>航运知识</b></div>
                </li>
                <li id="a" class="LongGuanLinHunzi" onclick="aa()" style="height: 35px;width: 100%;border-bottom: 1px dashed gray;width:100%;font-size: 14px;position: relative;cursor: pointer">
                    <b id="a1" style="margin-left: 10px;position: absolute;margin-top: 7px;width: 100%;display: block;FONT-FAMILY: Arial, Helvetica, sans-serif">行业动态</b>
                </li>
                <li id="b" class="LongGuanLinHunzi" onclick="bb()" style="height: 35px;width: 100%;border-bottom: 1px dashed gray;width:100%;font-size: 14px;position: relative;cursor: pointer">
                    <b id="b1" style="margin-left: 10px;position: absolute;margin-top: 7px;width: 100%;display: block;FONT-FAMILY: Arial, Helvetica, sans-serif">海运常识</b>
                </li>
            </ul>
        </div>
        <div id="bbb" style="float: right;width: 80%;box-shadow: 0px 2px 4px 2px gray">
            <ul style="list-style-type: none;width: 100%">
                <c:forEach items="${pageBean.pageData}" var="pro" varStatus= "status">
                    <li style="width: 100%;height: 60px;border-bottom: 1px dashed black;padding-top: 15px">
                        <a href="${pageContext.request.contextPath}/ShippingKnowledgeDetailServlet?id=${pro.id}"><b style="font-size: 25px">${pro.title}</b></a>
                    </li>
                </c:forEach>
                <div class="pagelist pagebg" style="background-color: black">
                    <a href="${pageContext.request.contextPath}/ShippingKnowledgeServlet?currentPage=1">首页</a>
                    <span style="color: white">当前第${requestScope.pageBean.curPage}页</span>
                    <a href="${pageContext.request.contextPath}/ShippingKnowledgeServlet?currentPage=${pageBean.curPage-1}">上一页</a>
                    <a href="${pageContext.request.contextPath}/ShippingKnowledgeServlet?currentPage=${pageBean.curPage+1}">下一页</a>
                    <span style="color: white">共${requestScope.pageBean.totalPage}页</span>
                    <a href="${pageContext.request.contextPath}/ShippingKnowledgeServlet?currentPage=${pageBean.totalPage}">尾页</a>
                </div>
            </ul>
        </div>
        <tbody id="aaa">
        <tr>
            <td class="hang" height="220" valign="top">
                <table border="0" cellspacing="1" cellpadding="6" width="100%" bgcolor="#99ccff" align="center">
                    <tbody>
                    <tr>
                        <td bgcolor="#e1f0ff">
                            <p><a href="#01">一. 集装箱（container）</a></p>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#02">二. 集装箱外尺寸（container's overall external dimensions）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#03">三. 集装箱内尺寸（container's internal dimensions）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff">
                            <div><a href="#04">四. 集装箱内容积（container's unobstructed capacity）</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#05">五. 集装箱计算单位（twenty-feet equivalent units 简称：TEU)</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#06">六. 集装箱租赁 （container leasing)</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff">
                            <div><a href="#07">七. 集装箱装卸区（container terminal)</a></div>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#08">八. 集装箱前方堆场（marshalling yard）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#09">九. 集装箱后方堆场（container yard）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#10">十. 空箱堆场（van pool）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#11">十一. 中转站或内路站（container depot or inland depot）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#12">十二. 集装箱货运站（container freight station 简称：CFS）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#13">十三. 托运人责任（shipper's liabilities）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#14">十四. 责任限制（limits of liability）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#15">十五. 同一责任制（uniform liability system）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#16">十六. 网状责任制（network liability system）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#17">十七. 航运公会集装箱规则（container rules of freight conference）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#18">十八. 交接方式（receiving and delivery system)</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#19">十九. 整箱货 （full container load 简称：FCL）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#20">二十. 拼箱货 （less than container load 简称：LCL）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#21">二十一. 箱位数（number of slots）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#22">二十二. 箱位（slots）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#23">二十三. 排号（bay number）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#24">二十四. 行号（row number）</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#e1f0ff"><a href="#25">二十五. 货运代理基本知识</a></td>
                    </tr>
                    <tr>
                        <td bgcolor="#bfdfff"><a href="#26">二十六. 英文缩略语汇编</a></td>
                    </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><span style="color: #003a7d"><strong>一. 集装箱（container）</strong></span><strong><a name="01"></a> </strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>1、所谓集装箱，是指具有一定强度、刚度和规格专供周转使用的大型装货容器。使用集装箱转运货物，可直接在发货人的仓库装货，运到收货人的仓库卸货，中途更换车、船时，无须将货物从箱内取出换装。按所装货物种类分，有杂货集装箱、散货集装箱、液体货集装箱、冷藏箱集装箱等；按制造材料分，有木集装箱、钢集装箱、铝合金集装箱、玻璃钢集装箱、不锈钢集装箱等；按结构分，有折叠式集装箱、固定式集装箱等，在固定式集装箱中还可分密闭集装箱、开顶集装箱、板架集装箱等；按总重分，有30吨集装箱、20吨集装箱、10吨集装箱、5吨集装箱、2.5吨集装箱等。</div>
                <div>2、集装箱（又称货柜）的种类：</div>
                <div>(1)按规格尺寸分:目前，国际上通常使用的干货柜(DRYCONTAINER)有：</div>
                <div>外尺寸为20英尺X8英尺X8英尺6寸，简称20尺货柜；</div>
                <div>40英尺X8英尺X8英尺6寸，简称40尺货柜；及近年较多使用的40英尺X8英尺X9英尺6寸，简称40尺高柜。</div>
                <div>20尺柜：内容积为5.69米X2.13米X2.18米,配货毛重一般为17.5吨,体积为24-26立方米.</div>
                <div>40尺柜:内容积为11.8米X2.13米X2.18米,配货毛重一般为22吨,体积为54立方米.</div>
                <div>40尺高柜:内容积为11.8米X2.13米X2.72米.配货毛重一般为22吨,体积为68立方米.</div>
                <div>45尺高柜:内容积为:13.58米X2.34米X2.71米,配货毛重一般为29吨,体积为86立方米.</div>
                <div>20尺开顶柜:内容积为5.89米X2.32米X2.31米,配货毛重20吨,体积31.5立方米.</div>
                <div>40尺开顶柜:内容积为12.01米X2.33米X2.15米,配货毛重30.4吨,体积65立方米.</div>
                <div>20尺平底货柜:内容积5.85米X2.23米X2.15米,配货毛重23吨,体积28立方米.</div>
                <div>40尺平底货柜:内容积12.05米X2.12米X1.96米,配货毛重36吨,体积50立方米.</div>
                <div>(2)按制箱材料分:有铝合金集装箱,钢板集装箱,纤维板集装箱,玻璃钢集装箱.</div>
                <div>(3)按用途分:有干集装箱;冷冻集装箱(REEFER CONTAINER);挂衣集装箱(DRESS HANGER CONTAINER);开顶集装箱(OPENTOP CONTAINER);框架集装箱(FLAT RACK CONTAINER);罐式集装箱(TANK CONTAINER).</div>
                <div>3、集装箱运输的关系方:主要有:无船承运人,集装箱实际承运人,集装箱租赁公司,集装箱堆场和集装箱货运站等.</div>
                <div>(1)无船经营人(NON-VESSEL OPERATING COMMON CARRIER:NVOCC):他们专门经营集装货运的揽货,装拆箱,内陆运输及经营中转站或内陆站业务,可以具备实际运输工具,也可不具备.对真正货主来讲,他是承运人,而对实际承运人来说,他有是托运人,通常无船承运人应受所在国法律制约,在政府有关部门登记.</div>
                <div>(2)实际承运人(ACTUAL CARRIER):掌握运输工具并参与集装箱运输的承运人.通常拥有大量集装箱,以利于集装箱的周转,调拨,管理以及集装箱与车船机的衔接.</div>
                <div>(3)集装箱租赁公司(CONTAINER LEASING COMPANY):专门经营集装箱出租业务的新行业.</div>
                <div>(4)集装箱堆场(CONTAINER YARD:CY):指办理集装箱重箱或空箱装卸,转运,保管,交接的场所.</div>
                <div>(5)集装箱货运站(CONTAINER FREIGHT STATION:CFS):是处理拼箱货的场所,它办理拼箱货的交接,配载积载后,将箱子送往CY,并接受CY交来的进口货箱,进行拆箱,理货,保管,最后拨给各收货人.同时也可按承运人的委托进行铅封和签发场站收据等业务. <a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong><span style="color: #003a7d">二. 集装箱外尺寸（container's overall external dimensions）</span><a name="02"></a> </strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>包括集装箱永久性附件在内的集装箱外部最大的长、宽、高尺寸。它是确定集装箱能否在船舶、底盘车、货车、铁路车辆之间进行换装的主要参数。是各运输部门必须掌握的一项重要技术资料。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">三. 集装箱内尺寸（container's internal dimensions）<a name="03"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>集装箱内部的最大长、宽、高尺寸。高度为箱底板面至箱顶板最下面的距离，宽度为两内侧衬板之间的距离，长度为箱门内侧板量至端壁内衬板之间的距离。它决定集装箱内容积和箱内货物的最大尺寸。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">四. 集装箱内容积（container's unobstructed capacity）<a name="04"></a></strong>
                    <table border="0" cellspacing="0" cellpadding="0" width="780">
                        <tbody>
                        <tr>
                            <td height="10">&nbsp;</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div>按集装箱内尺寸计算的装货容积。同一规格的集装箱，由于结构和制造材料的不同，其内容积略有差异。集装箱内容积是物资部门或其他装箱人必须掌握的重要技术资料。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">五. 集装箱计算单位（twenty-feet equivalent units 简称：TEU)<a name="05"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>又称20英尺换算单位，是计算集装箱箱数的换算单位。目前各国大部分集装箱运输，都采用20英尺和40英尺长的两种集装箱。为使集装箱箱数计算统一化，把20英尺集装箱作为一个计算单位，40尺集装箱作为两个计算单位，以利统一计算集装箱的营运量。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">六. 集装箱租赁 （container leasing)<a name="06"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>即所有人将空箱租给使用人的一项业务。集装箱所有人为出租的一方集装箱，与使用人，一般是船公司或货主，为承租的一方，双方签订租赁合同。由出租人提供合格的集装箱交由承租人在约定范围内使用。集装箱的租赁，国际上有多种不同的方式，总括起来有：程租、期租、活期租用和航区内阻赁等。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">七. 集装箱装卸区（container terminal)<a name="07"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>是集装箱运输中，箱或货装卸交换保管的具体经办部门。它受承运人或其代理人的委托，进行下列各项业务：对整箱货运的交换、保管； 设有集装箱货运站者，办理拼箱货的交接； 安排集装箱船的靠泊，装卸集装箱，每航次编制配载图； 办理有关货运单证的编签；</div>
                <div>编制并签验集装箱运用运载工具的出入及流转的有关单证； 办理集装箱及运载工具、装卸工具的情况检查、维修，以及空箱的清扫、熏蒸等工作；空箱的收发、存贮和保管；</div>
                <div>安排空箱和重箱在堆场的堆码，及编制场地分配计划； 其他有关业务工作。</div>
                <div>集装箱装卸区一般由专用码头、前沿、堆场、货运站、指挥塔、修理部门、大门和办公室组成。有时堆场或货运站等可延伸到市区内部事5-15公里的中转站。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">八. 集装箱前方堆场（marshalling yard）<a name="08"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>是指在集装箱码头前方，为加速船舶装卸作业，暂时堆放集装箱的场地。其作用是：当集装箱船到港前，有计划有次序地按积载要求将出口集装箱整齐地集中堆放，卸船时将进口集装箱暂时堆放在码头前方，以加速船舶装卸作业。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">九. 集装箱后方堆场（container yard）<a name="09"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>集装箱重箱或空箱进行交接、保管和堆存的场所。有些国家对集装箱堆场并不分前方堆场或后方堆场，统称为堆场。集装箱后方堆场是集装箱装卸区的组成部分。是集装箱运输“场到场”交接方式的整箱货办理交接的场所（实际上是在集装箱卸区“大门口”进行交接的）。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十. 空箱堆场（van pool）<a name="10"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>专门办理空箱收集、保管、堆存或交接的场地。它是专为集装箱装卸区或转运站堆场不足时才予设立。这种堆场不办理重箱或货物交接。它可以单独经营，也可以由集装箱装卸区在区外另设。有些国家，经营这种空箱堆场，须向航运公会声明。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十一. 中转站或内路站（container depot or inland depot）<a name="11"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>海港以外的集装箱运输的中转站或集散地。它的作用除了没有集装箱专用船的装卸作业外，其余均与集装箱装卸区业务相同。中转站或内陆站的度量，包括集装箱装卸港的市区中转站、内陆城市、内河港口的内陆站均在内。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十二. 集装箱货运站（container freight station 简称：CFS）<a name="12"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>为拼箱货装箱和拆箱的船、货双方办理交接的场所。承运人在一个港口或内陆城市只能委托一个集装箱货运站的经营者。由它代表承运人办理下列主要业务：</div>
                <div>拼箱货的理货和交接； 对货物外表检验如有异状时，就办理批注； 拼箱货的配箱积载和装箱； 进口拆箱货的拆箱和保管；代承运人加铅封并签发站收据； 办理各项单证和编制等。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十三. 托运人责任（shipper's liabilities）<a name="13"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>托运人在集装箱运输中应有的责任，这种责任是不完全同于传统海运方面的。拼箱货托运人的责任与传统海运相同。整箱货托运人的责任不同于传统运输的有：应保证所报货运资料的正确和完整； 承运人有权核对箱内所装货物，因核对而发生的费用，有托运人承担； 海关或其他权力机关开箱检查，其费用和由此发生货损货差，由托运人承担；如集装箱货不满，或是垫衬不良，积载不当，或是装了不适于集装箱运输的货物，因而引起货损、货差，概由托运人负责； 如使用了托运人自有的不适航的集装箱，所引起的货损事故，应由托运人负责；在使用承运人集装箱及设备其间造成第三者财产或生命的损害，应由托运人负责赔偿。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十四. 责任限制（limits of liability）<a name="14"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>集装箱运输中发生货损货差，承运人应承担的最高赔偿额。拼箱货的责任限制与传统运输相同。整箱货的赔偿按照目前国际上的一些判例：如果提单上没有列明箱内所装货物的件数，每箱作为一个理赔计算单位；如提单上列明箱内载货件数的，仍按件数计算；如果货物的损坏和灭失，不属海运，而是在内陆运输中发生的，则按陆上运输最高赔偿额办理；如集装箱是由托运人所有或提供时，遇有灭失或损坏，其责任确属承运人应承担者，亦应视作一个理赔计算单位。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十五. 同一责任制（uniform liability system）<a name="15"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>联运经营人对货物损害责任的一种赔偿责任制度。按照这种制度，统一由签发联运提单的承运人对货主负全程运输责任，即货损货差不论发生在哪一个运输阶段，都按同一的责任内容负责。如果能查清发生损害的运输阶段，联运承运人在赔偿以后，可以向该段运输的实际承运人追偿。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十六. 网状责任制（network liability system）<a name="16"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>联运经营人对货物损害责任的一种赔偿责任制度。按照这种制度，签发联运提单的承运人，虽然对货方仍负全程运输的责任，但遇损害赔偿不象同一责任制那样，而是按发生损害的运输阶段的责任内容负责。例如，损害发生在海上运输阶段，按国际货运规则办理；如发生在铁路或公路运输阶段，则按有关国际法或国内法处理。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十七. 航运公会集装箱规则（container rules of freight conference）<a name="17"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>在一些国家集装箱船航线上，各航运公会为了垄断各自航线上的集装箱运输，都分别制订了供货方使用的集装箱运输规则。这些规则，是由各公会针对公会营运范围内的航线情况制订的。因此，各公会的规则内容各不相同，但基本精神是相同的，即船货双方的责任是一样的。规则内容一般包括以下几个方面：</div>
                <div>集装箱装卸港，集散运输； 集装箱运输专用术语解释； 各种运输交接方式船货双方责任； 订舱手续及货运资料申报；各类条款包括提单，加批条款，港口条款和意外条款；</div>
                <div>提单签发； 设备交接手续，使用免费时间和滞期费计收； 交货手续； 运费计算方法及支付； 各种费用项目计收办法，费率变更规定；币制，贬值，增值规定；</div>
                <div>内陆运输规定及收费。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十八. 交接方式（receiving and delivery system)<a name="18"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>集装箱运输中，整箱货和拼箱货在船货双方之间的交接方式有以下几种:</div>
                <div>门到门 （door to door): 由托运人负责装载的集装箱,在其货仓或厂库交承运人验收后,负责全程运输,直到收货人的货仓或工厂仓库交箱为止。这种全程连线运输，称为“门到门”运输；</div>
                <div>门到场（door to cy）: 由发货人货仓或工厂仓库至目的地或卸箱港的集装箱装卸区堆场；</div>
                <div>门到站 （door to cfs）: 由发货人货仓或工厂仓库至目的地或卸箱港的集装箱货运站；</div>
                <div>场到门（cy to door）： 由起运地或装箱港的集装箱装卸区堆场至收货人的货仓或工厂仓库；</div>
                <div>场到场 （cy to cy）： 由起运地或装箱港的集装箱装卸区堆场至目的地或卸箱港的集装箱装卸区堆场；</div>
                <div>场到站 （cy to cfs）： 由起运地或装箱港的集装箱装卸区堆场至目的地或卸箱港的集装箱货运站；</div>
                <div>站到门 （cfs to door）： 由起运地或装箱港的集装箱货运站至收货人的货仓或工厂仓库；</div>
                <div>站到场 （cfs to cy）： 由起运地或装箱港的集装箱货运站至目的地或卸箱港的集装箱装卸区堆场；</div>
                <div>站到站 （cfs to cfs）： 由起运地或装箱港的集装箱货运站至目的地或卸箱港的集装箱货运站；<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">十九. 整箱货 （full container load 简称：FCL）<a name="19"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>为拼箱货的相对用语。由发货人负责装箱、计数、积载并加铅封的货运。整箱货的拆箱，一般由收货人办理。但也可以委托承运人在货运站拆箱。可是承运人不负责箱内的货损、货差。除非货方举证确属承运人责任事故的损害，承运人才负责赔偿。承运人对整箱货，以箱为交接单位。只要集装箱外表与收箱时相似和铅封完整，承运人就完成了承运责任。整箱货运提单上，要加上“委托人装箱、计数并加铅封”的条款。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">二十. 拼箱货 （less than container load 简称：LCL）<a name="20"></a></strong></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="10">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div>整箱货的相对用语，指装不满一整箱的小票货物。这种货物，通常是由承运人分别揽货并在集装箱货运站或内陆站集中，而后将两票或两票以上的货物拼装在一个集装箱内，同样要在目的地的集装箱货运站或内陆站拆箱分别交货。对于这种货物，承运人要负担装箱与拆箱作业，装拆箱费用仍向货方收取。承运人对拼箱货的责任，基本上与传统杂货运输相同。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">二十一. 箱位数（number of slots）<a name="21"></a></strong></div>
                <div>全集装箱船所能记载的集装箱箱数。每一艘全集装箱专用船，均以20英尺换算单位来表示它的载箱量。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">二十二. 箱位（slots）<a name="22"></a></strong></div>
                <div>在集装箱堆场上，按照集装箱相应的尺度画成有规则的用以指示堆放集装箱的格状位置。在箱位上编有号码，以利装船。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">二十三. 排号（bay number）<a name="23"></a></strong></div>
                <div>集装箱在专用船上的横排积载位置。编号方法，是从船首至船尾依此标明：01，02，03……。<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><strong style="color: #003a7d">二十四. 行号（row number）<a name="24"></a></strong></div>
                <div>又称列号，集装箱在专用船上的纵列积载位置。有两种标号方法：一种是自左舷端向右依此标明：01，02……另一种是从中间的左右分标。左舷为单号，由中线向左编为：01，<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><span style="color: #003a7d"><strong>二十五、货运代理基本知识</strong></span><strong><a name="25"></a> </strong></div>
                <div>（一）接受货主询价</div>
                <div>1、海运费询价：</div>
                <div>①需掌握发货港至各大洲，各大航线常用的，及货主常需服务的港口，价格；问清工厂货何时可以好，由此判断要提供给货主的船公司的船期以及报关时间是否来得及。</div>
                <div>②主要船公司船期信息；</div>
                <div>③需要时应向询价货主问明一些类别信息，如货名，危险级别等。（水路危规）</div>
                <div>2、陆路询价：（人民币费用）</div>
                <div>①需掌握各大主要城市公里数和拖箱价格；</div>
                <div>②各港区装箱价格；</div>
                <div>③报关费、商检、动植检收费标准。</div>
                <div>（二）接单（接受货主委托）</div>
                <div>接受货主委托后（一般为传真件）需明确的重点信息：</div>
                <div>1、船期、件数</div>
                <div>2、箱型、箱量</div>
                <div>3、毛重</div>
                <div>4、体积</div>
                <div>5、付费条款、货主联系方法</div>
                <div>6、装箱情况，拖装还是场装</div>
                <div>（三）订舱</div>
                <div>1、缮制委托书（十联单）；</div>
                <div>制单时应最大程度保证原始托单的数据正确、相符性，以减少后续过程的频繁更改。</div>
                <div>2、加盖公司订舱章订舱：</div>
                <div>需提供订舱附件的（如船公司价格确认件），应一并备齐方能去订舱。</div>
                <div>3、取得配舱回单，摘取船名、航次、提单号信息。</div>
                <div>（四）装箱</div>
                <div>1、拖装</div>
                <div>填妥装箱计划中：时间、船名、航次、中转港、目的港、毛重、件数、体积、联系人、地址，电话等要因，提前1~2天排好车班。</div>
                <div>2、场装</div>
                <div>填妥装箱计划中:船期船名航次、中转港、目的港、毛重、件数、体积、进舱编号等要因，先1~2天排好计划。</div>
                <div>（五）报关（有时同时、有时先于做箱）</div>
                <div>1、 了解常出口货物报关所需资料。</div>
                <div>①需商检</div>
                <div>②需配额</div>
                <div>③需许可证</div>
                <div>④需产地证</div>
                <div>⑤需提供商标授权、商标品名</div>
                <div>⑥出口香港地区货值超过$10万，其他地区超过$50万，核销时需提供结汇水单（复印件）</div>
                <div>⑦需提供商会核价章</div>
                <div>2、填妥船名航次，提单号，对应装箱单(packing list)，发票，所显示的毛重净重，件数，包装种类，金额，体积，审核报关单的正确性（单证一致）。</div>
                <div>3、显示报关单所在货物的 “中文品名”，对照海关编码大全，查阅商品编码，审核两者是否相符，按编码确定计量单位，并根据海关所列之监管条件点阅所缺乏报关要件。</div>
                <div>4、备妥报关委托书，报关单，手册，发票，装箱单，核销单，配舱回单（十联单第五联以后），更改单（需要的话）和其他所需资料，于截关前一天通关。</div>
                <div>5、跟踪场站收据，确保配载上船。</div>
                <div>6、凡是退关改配的，若其中有下个航次，出运仍然需要，诸如许可证，配额，商检，动植检之类的文件资料，退关、改配通知应先于该配置船期一个星期到达，以便（报运部）顺利抽回资料，重新利用。否则只会顺延船期，造成麻烦。</div>
                <div>（六）提单确认和修改</div>
                <div>1、问明顾客“提单”的发放形式：</div>
                <div>①电放</div>
                <div>需顾客提供正本“电放保函”（留底），后出具公司“保函”到船公司电放。</div>
                <div>②预借（如可行）<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></div>
                <table border="0" cellspacing="0" cellpadding="0" width="780">
                    <tbody>
                    <tr>
                        <td height="5">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <div><span style="color: #003a7d"><strong>二十六、英文缩略语汇编</strong></span><strong><a name="26"></a></strong><strong> </strong></div>
                <div>1. IGO inter-government organization 政府间国际组织
                    <p>2. NGO non-government organization 非政府间国际组织</p>
                    <p>3. ICS international chamber shipping 国际航运公会</p>
                    <p>4. BIMCO baltic and international maritime council 波罗的海国际海事协会</p>
                    <p>5. CMI committee maritime international 国际海事委员会</p>
                    <p>6. IMO international maritime organization 国际海事组织</p>
                    <p>7. LNG liquified natural gas 液化天然气</p>
                    <p>8. LPG liquified petroleum gas液化石油气</p>
                    <p>9. SF stowgae factor 货物积载因数</p>
                    <p>10. IMDG Code international maritime dangerous goods code 国际海运危险货物规则</p>
                    <p>11. ISO international standard organization 国际标准化组织</p>
                    <p>12. SOC shipper’s own container 货主箱</p>
                    <p>13. COC carrier’s own container船公司箱</p>
                    <p>14. TEU twenty-foot equivalent units 计算单位,也称20英尺换算单位</p>
                    <p>15. FCL full container load整箱货</p>
                    <p>16. LCL less container load 拼箱货</p>
                    <p>17. CY container yard集装箱堆场</p>
                    <p>18. CFS container freight station 集装箱货运站</p>
                    <p>19. DOOR 货主工厂或仓库</p>
                    <p>20. DPP damage protection plan 损害修理条款</p>
                    <p>21. SC service contract 服务合同</p>
                    <p>22. B/N booking note 托运单</p>
                    <p>23. S/O shipping order 装货单，也称下货纸、关单</p>
                    <p>24. M/R mate’s receipt收货单，也称大副收据</p>
                    <p>25. M/F manifest 载货清单，也称舱单</p>
                    <p>26. S/P stowage plan货物积载图，也称船图、舱图</p>
                    <p>27. D/O delivery order 提货单，也称小提单</p>
                    <p>28. MSDS maritime shipping document of safety 危险货物安全资料卡</p>
                    <p>29. D/R dock’s receipt场站收据</p>
                    <p>30. EIR(E/R) equipment interchange receipt 设备交接单</p>
                    <p>31. CLP container load plan集装箱装箱单</p>
                    <p>32. SOF statement of facts 装卸事实记录</p>
                    <p>33. B/L bill of lading提单</p>
                    <p>34. HB/L house bill of lading 代理行提单，或称子提单、分提单、货代提单、无船承运人提单、仓至仓提单等</p>
                    <p>35. Sea B/L (Master B/L,Ocean B/L,Memo B/L) 海运提单，或称母提单、主提单、船公司提单、备忘提单等</p>
                    <p>36. On board B/L, Shipped B/L 已装船提单</p>
                    <p>37. Received for Shipment B/L 收货待运提单</p>
                    <p>38. Straight B/L 记名提单</p>
                    <p>39. Open B/L (Blank B/L, Bearer B/L) 不记名提单</p>
                    <p>40. Order B/L 指示提单</p>
                    <p>41. Clean B/L清洁提单</p>
                    <p>42. Foul B/L (Unclean B/L) 不清洁提单</p>
                    <p>43. Direct B/L直达提单</p>
                    <p>44. Transhipment B/L转船提单</p>
                    <p>45. Through B/L 联运提单</p>
                    <p>46. Combined Transport B/L (Intermodal Transport B/L, Multimodal Transport B/L) 多式联运提单</p>
                    <p>47. Minimum B/L最低运费提单，也称起码提单</p>
                    <p>48. Advanced B/L 预借提单</p>
                    <p>49. Anti-dated B/L倒签提单</p>
                    <p>50. Stale B/L 过期提单</p>
                    <p>51. On Deck B/L 甲板货提单过期</p>
                    <p>52. Switch B/L 转换提单</p>
                    <p>53. NVOCC non-vessel operations common carrier 无船公共承运人或无船承运人</p>
                    <p>54. 《Hague Rules》《海牙规则》，正式名称为《统一关于提单若干法律规定的国际公约》</p>
                    <p>55. 《Visby Rules》《维斯比规则》，正式名称为《关于修订统一提单若干法律规定的国际公约》</p>
                    <p>56. 《Hamburg Rules》《汉堡规则》，正式名称为《1978年联合国海上货物运输公约》</p>
                    <p>57. SDR special drawing rights 特别提款权</p>
                    <p>58. LOI letter of indemnity 保函，也称损害赔偿保证书</p>
                    <p>59. SLAC shipper’s load and count 货主装载、计数</p>
                    <p>60. SLACS shipper’s load, count and seal 货主装载、计数和加封</p>
                    <p>61. STC said to contain 内容据称</p>
                    <p>62. SWB seaway bill海运单</p>
                    <p>63. V/C voyage charter 航次租船，简称程租</p>
                    <p>64. T/C time charter 定期租船，简称期租</p>
                    <p>65. TCT time charter on trip basis 航次期租</p>
                    <p>66. COA contract of affreightment 包运租船，简称包船</p>
                    <p>67. C/P charter party 租船合同</p>
                    <p>68. F/N fixture note 确认备忘录，也称订租确认书</p>
                    <p>69. GENCON “金康”合同，全称为BIMCO 统一杂货租船合同</p>
                    <p>70. NYPE Form “土产格式”，全称美国纽约土产品交易定期租船合同</p>
                    <p>71. BALTIME “波尔的姆格式”，全称为BIMCO标准定期租船合同</p>
                    <p>72. BARECON‘A’标准光船租船合同A格式</p>
                    <p>73. SINO TIME 中租期租合同</p>
                    <p>74. DWT dead weight tonnage 载重吨</p>
                    <p>75. GRT gross registered tonnage 总登记吨，简称总吨</p>
                    <p>76. NRT net rigistered tonnage 净登记吨，简称净吨</p>
                    <p>77. LOA length over all船舶总长</p>
                    <p>78. BM beam 船宽</p>
                    <p>79. MT metric tons公吨（1000千克）</p>
                    <p>80. LAYCAN layday/canceling date 受载期与解约日</p>
                    <p>81. LINER TERMS 班轮条款，即船方负担装卸费</p>
                    <p>82. BERTH TERMS 泊位条款，即船方负担装卸费</p>
                    <p>83. GROSS TERMS 总承兑条款，即船方负担装卸费</p>
                    <p>84. FAS free alongside ship 船边交接货条款，即船方负担装卸费</p>
                    <p>85. FI free in 船方不负担装货费</p>
                    <p>86. FO free out 船方不负担卸货费</p>
                    <p>87. FILO free in ,liner out 船方不负担装货费但负担卸货费</p>
                    <p>88. LIFO liner in, free out 船方不负担卸货费但负担装货费</p>
                    <p>89. FIO free in and out 船方不负担装卸费</p>
                    <p>90. FIOST free in and out, stowed and trimmed 船方不负担装卸费、平舱费和堆舱费</p>
                    <p>91. N/R (NOR) notice of readiness 装卸准备就绪通知书</p>
                    <p>92. WIBON whether in berth or not 不论靠泊与否</p>
                    <p>93. WICCON whether in custom clearance or not 不论海关手续办妥与否</p>
                    <p>94. WIFPON whether in free pratique or not 不论通过检疫与否</p>
                    <p>95. WWDSHEXUU weather working days, Sunday, holidays excepted, unless used 晴天工作日，星期天和节假日除外，除非已使用</p>
                    <p>96. WWDSHEXEIU weather working days , Sunday, holidays excepted, even if used 晴天工作日，星期天和节假日除外，即使已使用也除外</p>
                    <p>97. WWDSATPMSHEX weather working days, Saturday PM, Sundays, holidays excepted 晴天工作日，星期六下午、星期天和节假日除外</p>
                    <p>98. WWDSSHEX weather working days, Saturday, Sundays, holidays excepted 晴天工作日，星期六、星期天和节假日除外</p>
                    <p>99. CQD customary quick dispatch 按港口习惯快速装卸</p>
                    <p>100. WTS working time saved 节省的工作时间</p>
                    <p>101. BFI Baltic freight index 波罗的海运价指数</p>
                    <p>102. CCFI China container freight index 中国出口集装箱运价指数</p>
                    <p>103. BAF, BS bunker adjustment factor; or bunker surcharge 燃油附加费</p>
                    <p>104. CAF currency adjustment factor 货币附加费</p>
                    <p>105. THC terminal handling charges 码头作业附加费，或称码头操作费</p>
                    <p>106. PSS peak season surcharge 旺季附加费</p>
                    <p>107. DDC destination delivery charges 目的地交货费</p>
                    <p>108. FAK freight all kinds均一包箱费率</p>
                    <p>109. FCS freight for class基于商品等级的包箱费率</p>
                    <p>110. FCB freight for class and basis 基于商品等级和计算标准的包箱费率</p>
                    <p>111. ICAO international civil aviation organization 国际民用航空组织</p>
                    <p>112. IATA international air transport association 国际航空运输协会</p>
                    <p>113. SITA 国际电信协会</p>
                    <p>114. AWB air waybill 航空货运单</p>
                    <p>115. HAWB （HWB） house air waybill 航空分运单</p>
                    <p>116. MAWB （MWB） master air waybill 航空主运单</p>
                    <p>117. TC1，TC2，TC3 traffic conference area 航空区划1、航空区划2、航空区划3</p>
                    <p>118. GMT greenwich mean time 世界标准时，也称格林尼治时</p>
                    <p>119. TACT the air cargo tariff 航空货物运价</p>
                    <p>120. TACT Rules 航空货物运价手册</p>
                    <p>144. CAO cargo aircraft only 仅限货机</p>
                    <p>145. DIP diplomatic mail 外交信袋</p>
                    <p>146. SLI shippers letter of instruction空运托运书</p>
                    <p>147. CBA cargo booking advance 国际航空货物订舱单</p>
                    <p>148. TRM cargo transfer manifest 转运舱单</p>
                    <p>149. LAR live animal regulation 活动物规则</p>
                    <p>150. DGR dangerous goods regulations 危险物品手册</p>
                    <p>151. GCR general cargo rate 普通货物运价</p>
                    <p>152. SCR specific commodity rate 指定商品运价</p>
                    <p>153. AW air waybill fee 货运单费，承运人收取此费为AWC；代理人收取此费为AWA</p>
                    <p>154. CH clearance charge for agency 清关费，代理人收取此费为CHA</p>
                    <p>155. SU surface charge 地面运输费，代理人收取此费为SUA</p>
                    <p>156. DB disbursement fee 垫付款手续费，承运人收取此费为DBC，代理人收取此费为DBA</p>
                    <p>157. RA dangerous goods surcharge 危险品处理费，承运人收取此费为RAC，代理人收取此费为RAA</p>
                    <p>158. SD surface charge destination 目的站地面运输费</p>
                    <p>159. CC charges collect 运费到付</p>
                    <p>160. PP charges prepaid 运费预付</p>
                    <p>161. ULD unit load device 集装器，集装化设备</p>
                    <p>162. MCO 旅费证，也称杂费证</p>
                    <p>163. NVD no value declared 没有声明价值</p>
                    <p>164. NCV no commericial value 无商业价值</p>
                    <p>165. CCA cargo charges correction advice 货物运费更改通知</p>
                    <p>166. OFLD offloaded 卸下，拉货</p>
                    <p>167. SSPD shortshiped 漏（少）装</p>
                    <p>168. Ovcd overcarried 漏卸</p>
                    <p>169. POD proof of delivery 交付凭证</p>
                    <p>170. CASS, cargo account settlement system 货运帐目清算系统</p>
                    <p>171. IPI interior point intermodal 内陆公共点多式联运</p>
                    <p>172. SLB siberian landbridge traffic 西伯利亚大陆桥运输</p>
                    <p>173. OCP overland common point 内陆公共点或陆上公共点运输</p>
                    <p>174. MLB miniland bridge 小陆桥运输</p>
                    <p>175. Combidoc 由BIMCO 制定的供经营船舶的多式联运经营人所使用的国际多式联运单证</p>
                    <p>176. FBL 由FIATA制定的供作为多式联运经营人的货运代理使用的国际多式联运单证</p>
                    <p>177. Multidoc 由UNCTAD 依据《联合国国际货物多式联运公约》制定的国际多式联运单证</p>
                    <p>178. MTO multimodal transport operator 多式联运经营人</p>
                    <p>179. NVO non vessel operator 无船经营人<a style="color: #003a7d" href="#top"><strong>TOP</strong></a></p>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
</article>
<a href="#" class="cd-top">Top</a>
</body>
<script>
    // var curIndex = 0;
    // var arr = new Array();
    // arr[0] = "/images/1.png";
    // arr[1] = "/images/2.png";
    // arr[2] = "/images/3.png";
    // setInterval(changeImg, 3000);
    // function changeImg() {
    //     var obj = document.getElementById("pic");
    //     if(curIndex == arr.length - 1) {
    //         curIndex = 0;		}
    //         else {
    //             curIndex += 1;
    //         }
    //         obj.src = arr[curIndex];
    // }
    // var hide = function() {
    //     if(interval1) {
    //         clearInterval(interval1);
    //     }
    //     j = document.getElementById('pic').style.opacity*100;
    //     interval2 = setInterval("hideRound()",20);
    // };
    // var hideRound = function(){
    //     j--;
    //     var testDiv = document.getElementById('pic');
    //     testDiv.style.opacity = j/100;
    // };
    var curIndex = 0;
    var arr = new Array();
    arr[0] = "images/121.png";
    arr[1] = "images/131.png";
    arr[2] = "images/141.png";
    arr[3] = "images/151.png";
    // setInterval(changeImg, 3000);
    // function changeImg() {
    //     var obj = document.getElementById("pic");
    //     if(curIndex == arr.length - 1) {
    //         curIndex = 0;		}
    //         else {
    //             curIndex += 1;
    //         }
    //         obj.src = arr[curIndex];
    // }
    //---------------------------------------------------------------------
    var clear,clear2;
    function newRound(){
        j = document.getElementById('pic').style.opacity*100;
        // if(i==0)
        // {
        //     setInterval(showrRound,100);
        // }
        if(j==100){
            clearInterval(clear2);
            clear=setInterval(hideRound,30);
        }
    }
    function hideRound(){
        j--;
        var obj = document.getElementById("picT");
        var testDiv=document.getElementById("pic");
        testDiv.style.opacity=j/100;
        if(j==5){
            if(curIndex == arr.length - 1) {
                curIndex = 0;		}
            else {
                curIndex += 1;
            }
            obj.src = arr[curIndex];
            i=0;
            newRound();
            clearInterval(clear);
            clear2=setInterval(showrRound,20);
        }
    }
    function  showrRound() {
        i++;
        var testDiv=document.getElementById("pic");
        testDiv.style.opacity=i/100;
        if(i==100){
            newRound();
        }
    }


    var a=document.getElementById("a");
    var b=document.getElementById("b");
    var a1=document.getElementById("a1");
    var b1=document.getElementById("b1");
    var aaa=document.getElementById("aaa");
    var bbb=document.getElementById("bbb");
    window.onload=function () {
        // var testDiv = document.getElementById('pic'); ''
        // pic.style.opacity=0.9;
        var testDiv = document.getElementById('pic');
        testDiv.style.opacity = 1.0;
        newRound();

        a.click();
    }
    function aa() {
        b.style="height: 35px;width: 100%;border-bottom: 1px dashed gray;width:100%;font-size: 14px;position: relative;cursor: pointer";
        a.style="height: 35px;width: 100%;border-bottom: 1px dashed gray;width:100%;font-size: 14px;position: relative;cursor: pointer;color:black;box-shadow:inset 0px 2px 4px 2px gray";
        a1.innerText=">航运动态";
        b1.innerText="海运常识";
        aaa.style.display="none";
        bbb.style.display="block";
        $("body").css("background","linear-gradient(to bottom, rgba(200,170,244,1) 0%, rgba(235,224,251,1) 100%)");
    }
    function bb() {
        $("body").css("background","white");
        aaa.style.display="block";
        bbb.style.display="none";
        a1.innerText="航运动态";
        b1.innerText=">海运常识";
        a.style="height: 35px;width: 100%;border-bottom: 1px dashed gray;width:100%;font-size: 14px;position: relative;cursor: pointer";
        b.style="height: 35px;width: 100%;border-bottom: 1px dashed gray;width:100%;font-size: 14px;position: relative;cursor: pointer;color:black;box-shadow:inset 0px 2px 4px 2px gray";
    }
</script>
</html>
