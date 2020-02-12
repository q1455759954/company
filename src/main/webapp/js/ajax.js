$(document).ready(function () {

    //监听运输方式
    $(".c_title li").each(function (index) {
        $(this).off("click").on("click",function () {
            $(".c_title li.click_type").removeClass("click_type");
            $(this).addClass("click_type");
            $(".topBox h1:eq(" + index + ")").show().siblings().hide();//#menu与#content在html层没有嵌套关联，但因为其ul序列相同，用index值可以巧妙的将两者关联。
            getData(index);
        })
    })
    //监听翻页
    $(".pagelist a").each(function (index) {
        $(this).off("click").on("click",function () {
            getDataByPage(index);
        })
    })


    function getData(index) {
        var type = "";
        var province = $(".province").text();
        var city = $(".city").text();
        var url = $(".url").text();
        if (index==0)
            type = "航空";
        else if (index==1)
            type = "陆运";
        else if (index==2)
            type = "散杂";
        else if (index==3)
            type = "船代";
        else if (index==4)
            type = "物流";

        $(".blue").remove();
        $(".white").remove();

        $.ajax({
            url:url+"/AjaxDataServlet", //处理页面的路径
            type:"post", //提交方式
            data:{
                "province":province,
                "city":city,
                "type":type,
            },
            dataType:"json",
            //TEXT字符串 JSON返回JSON XML返回XML
            success:function(data){
                console.log(data);
                //回调函数 ,成功时返回的数据存在形参data里
                for (i=0;i<data.pageData.length;i++) {
                    var ul = $("<ul>");
                    var logoLi = $("<li>");
                    var logoA = $("<a>");
                    var logoImg = $("<img>");
                    if (data.pageData[i].logo == "暂无信息") {
                        logoImg.attr("src", "images/kongLogo.jpg");
                        logoImg.attr("alt", data.pageData[i].logo);
                    } else {
                        logoImg.attr("src", data.pageData[i].logo);
                        logoImg.attr("alt", data.pageData[i].logo);
                    }
                    logoA.append(logoImg);
                    logoLi.append(logoA);
                    logoLi.addClass("c_laba").addClass("table_logo");
                    ul.append(logoLi);
                    if (i % 2 == 0) {
                        ul.addClass("white");
                    }else {
                        ul.addClass("blue");
                    }

                    $(".table_cont").append(ul);

                    var secondLi = $("<li>");
                    secondLi.addClass("c_labb");
                    var div = $("<div>");
                    div.addClass("com_name");
                    var titleA = $("<a>");
                    titleA.attr("href",url+"/CompanyDetailServlet?id=" + data.pageData[i].id);
                    titleA.attr("target", "_blank");
                    titleA.attr("title", data.pageData[i].companyName);
                    titleA.text(data.pageData[i].companyName);
                    var contentP = $("<p>");
                    contentP.addClass("com_info");
                    // contentP.innerHTML=data.pageData[i].introduction;
                    contentP.text(data.pageData[i].introduction);
                    var personP = $("<p>");
                    personP.addClass("link_person");
                    personP.text("联系人：" + data.pageData[i].peopleName);
                    div.append(titleA);
                    div.append(contentP);
                    div.append(personP);
                    secondLi.append(div);
                    ul.append(secondLi);

                    var thirdLi = $("<li>");
                    thirdLi.text(data.pageData[i].city);
                    thirdLi.addClass("c_labc").addClass("table_zi");
                    var fourthLi = $("<li>");
                    fourthLi.text(data.pageData[i].type);
                    fourthLi.addClass("c_labd").addClass("table_zi");
                    var fifthLi = $("<li>");
                    fifthLi.text(data.pageData[i].phone);
                    fifthLi.addClass("c_labe").addClass("table_zi");
                    ul.append(secondLi);
                    ul.append(thirdLi);
                    ul.append(fourthLi);
                    ul.append(fifthLi);
                }
                //设置省市，隐藏标签，提交的时候用到
                $(".province").text(data.province);
                $(".city").text(data.city);
                //设置翻页
                $('.pagelist').clone().appendTo('.table_cont');
                $('.pagelist').eq(0).remove();
                $(".pagelist >a").eq(0).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage=1");
                $(".pagelist >a").eq(1).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage="+(data.curPage-1));
                $(".pagelist >a").eq(2).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage="+(data.curPage+1));
                $(".pagelist >a").eq(3).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage="+(data.totalPage));
                $(".pagelist >span").eq(0).text("当前第"+data.curPage+"页");
                $(".pagelist >span").eq(1).text("共"+data.totalPage+"页");

            }
        });

        // alert("aaa");
        // $(".blue").eq(0).remove();
        // for (i=0;i<1;i++){
        //     $(".table_logo >a >img").attr("src","images/logo.png");
        // }
    }















});
// var ul = $("<ul>");
// var logoLi = $("<li>");
// var logoA = $("<a>");
// var logoImg = $("<img>");
// logoImg.attr("src","../images/logo.png");
// logoA.append(logoImg);
// logoLi.append(logoA);
// logoLi.addClass("c_laba").addClass("table_logo");
// ul.append(logoLi);
// ul.addClass("white");
// $(".table_cont").append(ul);
//
// var secondLi = $("<li>");
// secondLi.addClass("c_labb");
// var div = $("<div>");
// div.addClass("com_name");
// var titleA = $("<a>");
// titleA.attr("href","${pageContext.request.contextPath}/CompanyDetailServlet?id=${pro.id}");
// titleA.attr("target","_blank");
// titleA.attr("title","aaaa");
// titleA.text("这是标题");
// var contentP = $("<p>");
// contentP.addClass("com_info");
// contentP.text("adsdafdsfs");
// var personP = $("<p>");
// personP.addClass("link_person");
// personP.text("联系人：Long");
// div.append(titleA);
// div.append(contentP);
// div.append(personP);
// secondLi.append(div);
// ul.append(secondLi);
//
// var thirdLi = $("<li>");
// thirdLi.text("中国");
// thirdLi.addClass("c_labc").addClass("table_zi");
// var fourthLi = $("<li>");
// fourthLi.text("航空");
// fourthLi.addClass("c_labd").addClass("table_zi");
// var fifthLi = $("<li>");
// fifthLi.text("110110110");
// fifthLi.addClass("c_labe").addClass("table_zi");
// ul.append(secondLi);
// ul.append(thirdLi);
// ul.append(fourthLi);
// ul.append(fifthLi);






//
// <ul class="white">


// <li class="c_labc table_zi">${pro.city}</li>
//     <li class="c_labd table_zi">${pro.type}</li>
//     <li class="c_labe table_zi">${pro.phone}</li>
//     </ul>




//实现换页按钮在列表下面
if($(".white").prev("div").hasClass("pagelist")){
    $('.pagelist').clone().appendTo('.table_cont');
    $('.pagelist').eq(0).remove();
}
function getDataByPage(ele) {
    //得到这个标签
    $(".blue").remove();
    $(".white").remove();
    var type = "";
    var url = $(".url").text();

    $.ajax({
        url:ele, //处理页面的路径
        type:"post", //提交方式
        dataType:"json",
        //TEXT字符串 JSON返回JSON XML返回XML
        success:function(data){
            //回调函数 ,成功时返回的数据存在形参data里
            for (i=0;i<data.pageData.length;i++) {
                var ul = $("<ul>");
                var logoLi = $("<li>");
                var logoA = $("<a>");
                var logoImg = $("<img>");
                if (data.pageData[i].logo == "暂无信息") {
                    logoImg.attr("src", "images/kongLogo.jpg");
                    logoImg.attr("alt", data.pageData[i].logo);
                } else {
                    logoImg.attr("src", data.pageData[i].logo);
                    logoImg.attr("alt", data.pageData[i].logo);
                }
                logoA.append(logoImg);
                logoLi.append(logoA);
                logoLi.addClass("c_laba").addClass("table_logo");
                ul.append(logoLi);
                if (i % 2 == 0) {
                    ul.addClass("white");
                }else {
                    ul.addClass("blue");
                }

                $(".table_cont").append(ul);

                var secondLi = $("<li>");
                secondLi.addClass("c_labb");
                var div = $("<div>");
                div.addClass("com_name");
                var titleA = $("<a>");
                titleA.attr("href", url+"/CompanyDetailServlet?id=" + data.pageData[i].id);
                titleA.attr("target", "_blank");
                titleA.attr("title", data.pageData[i].companyName);
                titleA.text(data.pageData[i].companyName);
                var contentP = $("<p>");
                contentP.addClass("com_info");
                contentP.text(data.pageData[i].introduction);
                var personP = $("<p>");
                personP.addClass("link_person");
                personP.text("联系人：" + data.pageData[i].peopleName);
                div.append(titleA);
                div.append(contentP);
                div.append(personP);
                secondLi.append(div);
                ul.append(secondLi);

                var thirdLi = $("<li>");
                thirdLi.text(data.pageData[i].city);
                thirdLi.addClass("c_labc").addClass("table_zi");
                var fourthLi = $("<li>");
                fourthLi.text(data.pageData[i].type);
                fourthLi.addClass("c_labd").addClass("table_zi");
                var fifthLi = $("<li>");
                fifthLi.text(data.pageData[i].phone);
                fifthLi.addClass("c_labe").addClass("table_zi");
                ul.append(secondLi);
                ul.append(thirdLi);
                ul.append(fourthLi);
                ul.append(fifthLi);
            }
            //设置省市，隐藏标签，提交的时候用到
            $(".province").text(data.province);
            $(".city").text(data.city);
            //设置翻页
            $('.pagelist').clone().appendTo('.table_cont');
            $('.pagelist').eq(0).remove();
            $(".pagelist >a").eq(0).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage=1");
            $(".pagelist >a").eq(1).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage="+(data.curPage-1));
            $(".pagelist >a").eq(2).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage="+(data.curPage+1));
            $(".pagelist >a").eq(3).attr("href",url+"/AjaxDataServlet?province="+data.province+"&city="+data.city+"&type="+data.type+"&currentPage="+(data.totalPage));
            $(".pagelist >span").eq(0).text("当前第"+data.curPage+"页");
            $(".pagelist >span").eq(1).text("共"+data.totalPage+"页");

        }
    });
    return false;

    // alert("aaa");
    // $(".blue").eq(0).remove();
    // for (i=0;i<1;i++){
    //     $(".table_logo >a >img").attr("src","images/logo.png");
    // }
}
