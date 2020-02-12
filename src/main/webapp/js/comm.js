$(document).ready(function () {

    //nav
	$("#mnavh").click(function(){
    $("#starlist").toggle();
	$("#mnavh").toggleClass("open");
	});


    var obj=null;
    var As=document.getElementById('startlist').getElementsByTagName('a');
    obj = As[0];
    for(i=1;i<As.length;i++){
        if(window.location.href.indexOf(As[i].href)>=0)
            obj=As[i];
        else if (window.location.href.indexOf("photoDetail")>=0){
            obj=As[4];
        }else if(window.location.href.indexOf("diary")>=0){
            obj=As[2];
        }
    }
    obj.id='selected';


    // var hr,wi;
    // $(".nav_list li").each(function(){
    //     alert("aaaaaaaaa");
    //     hr=$(this).find('a').attr("href");
    //     wi=window.document.location.pathname.replace('/','');
    //     if(hr==wi)
    //     {
    //         $(this).addClass("selected");
    //     }else
    //     {
    //         $(this).removeClass("selected");
    //     }
    // });

	//aside
    var Sticky = new hcSticky('aside', {
      stickTo: 'body',
      innerTop: -200,
      followScroll: false,
      queries: {
        250: {
          disable: true,
          stickTo: 'body'
        }
      }
    });
    //人才招聘
    var Sticky = new hcSticky('hireAside', {
        stickTo: 'main',
        innerTop: -100,
        followScroll: false,
        queries: {
            250: {
                disable: true,
                stickTo: 'body'
            }
        }
    });
//scroll to top
    var offset = 300,
        offset_opacity = 1200,
        scroll_top_duration = 700,
        $back_to_top = $('.cd-top');

    $(window).scroll(function () {
        ($(this).scrollTop() > offset) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
        if ($(this).scrollTop() > offset_opacity) {
            $back_to_top.addClass('cd-fade-out');
        }
    });
    $back_to_top.on('click', function (event) {
        event.preventDefault();
        $('body,html').animate({
                scrollTop: 0,
            }, scroll_top_duration
        );
    });
	
	});