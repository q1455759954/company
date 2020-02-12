function showCompanyData() {

    var name = document.getElementById("companyName").value;

    $.ajax({
        url:"http://localhost:8080/Company/BacSearchCompanyServlet",//处理页面的路径
        type:"post", //提交方式
        dataType:"json",
        data:{
            "companyName":name,
        },
        //TEXT字符串 JSON返回JSON XML返回XML
        success:function(data){
            console.log(data);
            //回调函数 ,成功时返回的数据存在形参data里
            // var indexUrl= document.getElementById('indexUrl');
            // indexUrl.text(data.index);
            if (data.state=='ok'){
                $("#indexUrl").val(data.index);
                $("#name").val(data.companyName);
                $("#phone").val(data.phone);
                $("#qq").val(data.qq);
                $("#peopleName").val(data.peopleName);
                $("#address").val(data.address);
                $("#companyId").val(data.id);
                UE.getEditor('editor').setContent(data.introduction);
                if (data.hangKong=="航空"){
                    var hang = document.getElementById('hangKong');
                    hang.checked=true;
                }
                if (data.luYun=="陆运"){
                    var lu = document.getElementById('luYun');
                    lu.checked=true;
                }
                if (data.sanZa=="散杂"){
                    var san = document.getElementById('sanZa');
                    san.checked=true;
                }
                if (data.chuanDai=="船代"){
                    var chuan = document.getElementById('chuanDai');
                    chuan.checked=true;
                }
                if (data.wuLiu=="物流"){
                    var wu = document.getElementById('wuLiu');
                    wu.checked=true;
                }
            } else {
                alert("公司不存在");
            }

        }
    });
    return false;

    // alert("aaa");
    // $(".blue").eq(0).remove();
    // for (i=0;i<1;i++){
    //     $(".table_logo >a >img").attr("src","images/logo.png");
    // }
}
