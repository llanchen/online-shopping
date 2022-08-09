//toggle效果
var toggleEffect=function(){
    $(".js_toggle").each(function(index){
        var i=$(this).find(".submenu")
        var j=$(this).find(".occlusion_focus")
        $(this).hover(
            function() {
                $(this).css("border","2px solid red");
                i.css("display","block");
                j.css("display","block");
                var high=i.height();
                if(index<2&&index>0){
                    i.css("top",-(index)*125+"px");
                }else if(index>1){
                    i.css("top",-(high/2)+42+"px");
                }
            },function(){
                $(this).css("border","0");
                i.css("display","none");
                j.css("display","none");
            }
        )
    })
}
toggleEffect();
//轮播图
var myCarousel=function(){
    var carousel = $('.carousel');
    var list = $('#carousel-list');
    var buttons = $('#buttons span');
    var prev = $('#previous');
    var next = $('#next');
    var index = 1;
    var len = 5;
    var interval = 3000;
    var timer;
    /*移动函数*/
    function animate (offset) {
        var left = parseInt(list.css('left')) + offset;
        if (offset>0) {
            offset = '+=' + offset;
        }
        else {
            offset = '-=' + Math.abs(offset);
        }
        list.animate({'left': offset}, 600, function () {
            if(left > -990){
                list.css('left', -990 * len);
            }
            if(left < (-990 * len)) {
                list.css('left', -990);
            }
        });
    }
    //按钮样式
    function showButton() {
        buttons.eq(index-1).addClass('on').siblings().removeClass('on');
    }
    //开始
    function play() {
        timer = setTimeout(function () {
            next.trigger('click');
            play();
        }, interval);
    }
    //结束
    function stop() {
        clearTimeout(timer);
    }
    //右箭头事件
    next.bind('click', function (event) {
    	 event.stopPropagation(); 
        if (list.is(':animated')) {
            return;
        }
        if (index == 5) {
            index = 1;
        }
        else {
            index += 1;
        }
        animate(-990);
        showButton();
    });
    //左箭头事件
    prev.bind('click', function (event) {
    	 event.stopPropagation();
        if (list.is(':animated')) {
            return;
        }
        if (index == 1) {
            index = 5;
        }
        else {
            index -= 1;
        }
        animate(990);
        showButton();
    });
    //循环绑定
    buttons.each(function () {
        $(this).bind('click', function () {
            if (list.is(':animated') || $(this).attr('class')=='on') {
                return;
            }
            var myIndex = parseInt($(this).attr('index'));

            var offset = -990 * (myIndex - index);
            animate(offset);
            index = myIndex;
            showButton();
        })
    });
    //悬浮事件
    carousel.hover(stop, play);
    play();
}
myCarousel();
//hot book效果
var toggleHb=function(){
  //遍历tabTit下的选项
    $(".tabTit a").each(function(index){
        $(this).mouseover(function(){
           //添加选中选项的样式，移除其余选项的样式
            $(this).addClass("cur").siblings().removeClass("cur");
           //显示与之对应的tabCon
            $(".tabCon>div").eq(index).addClass("cur").siblings().removeClass("cur");
        })
    })
}
toggleHb();

//显示搜索选项
(function(){
    $(".dropSearch dl").hover(function(){$(this).find("dd").show()},function(){$(this).find("dd").hide()})
    $("#search_cates li").each(function(){
        $(this).click(function(){
            $(".dropSearch dl dd").hide();
            $(this).addClass("on").siblings().removeClass("on");
            $(".dropSearch dl dt span").text($(this).text());
        })
    })
})();
//右侧广告轮播
(function(){
    var tempWrap=$(".noticePanel .tempWrap ul");
    (function play(offset){
        setTimeout(function(){
            var top = parseInt(tempWrap.css('top')) + offset;
            offset = '-=' + Math.abs(offset);
            tempWrap.animate({'top': offset}, 1000, function () {
                if(top < (-40)) {
                    tempWrap.css('top',"0");
                }
            });
            play(-40);
        },3000)
    })(-40);
})();
