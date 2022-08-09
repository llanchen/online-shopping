<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta name="viewport" content="width=device-width" initial-scale=1.0”>
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/xhtx.js"></script>
    <!-- 雪花特效开始  -->
    <script type="text/javascript">
        (function($) {
            $.fn.snow = function(options) {
                var $flake = $('<div id="snowbox" />').css({
                    'position' : 'absolute',
                    'z-index' : '9999',
                    'top' : '-50px'
                }).html('&#10052;'), documentHeight = $(document).height(), documentWidth = $(
                    document).width(), defaults = {
                    minSize : 10,
                    maxSize : 20,
                    newOn : 1000,
                    flakeColor : "#AFDAEF" /* 此处可以定义雪花颜色，若要白色可以改为#FFFFFF */
                }, options = $.extend({}, defaults, options);
                var interval = setInterval(
                    function() {
                        var startPositionLeft = Math.random() * documentWidth
                            - 100, startOpacity = 0.5 + Math.random(), sizeFlake = options.minSize
                            + Math.random() * options.maxSize, endPositionTop = documentHeight - 200, endPositionLeft = startPositionLeft
                            - 500 + Math.random() * 500, durationFall = documentHeight
                            * 10 + Math.random() * 5000;
                        $flake.clone().appendTo('body').css({
                            left : startPositionLeft,
                            opacity : startOpacity,
                            'font-size' : sizeFlake,
                            color : options.flakeColor
                        }).animate({
                            top : endPositionTop,
                            left : endPositionLeft,
                            opacity : 0.2
                        }, durationFall, 'linear', function() {
                            $(this).remove()
                        });
                    }, options.newOn);
            };
        })(jQuery);
        $(function() {
            $.fn.snow({
                minSize : 5, /* 定义雪花最小尺寸 */
                maxSize : 50,/* 定义雪花最大尺寸 */
                newOn : 300
                /* 定义密集程度，数字越小越密集 */
            });
        });
    </script>
</head>
<style>
    #announcement_box {
        background-color: rgba(240, 239, 215, 0.5);
        background-color: #E3DEC0;
        padding-left: 15px;
        width: 100%;
        height: 30px;
        border: 1px dashed #C1C0AB;
        border-radius: 2px;
    }

    #announcement {
        background: url(http://wuzuowei.net/LOGO.PNG) left center no-repeat
        scroll;
        height: 25px;
        line-height: 25px;
        overflow: hidden;
        float: left;
    }

    #announcement a {
        color: #000;
    }

    #announcement a:hover {
        color: #94382B;
    }

    .announcement_remove {
        padding: 1px 10px;
        float: right;
        font-size: 14px;
    }

    .announcement_remove a {
        height: 18px;
        width: 18px;
        display: block;
        line-height: 16px;
        margin: 4px 0 3px 0;
        margin: 10px 0 3px 0 9;
        text-align: center;
    }

    .announcement_remove a:hover {
        background-color: #cdc8a0;
        box-shadow: 1px 1px 1px #66614c inset;
        -webkit-box-shadow: 1px 1px 1px #666 inset;
        -moz-box-shadow: 1px 1px 1px #666 inset;
        border-radius: 3px;
    }

    #announcement_close {
        color: #666;
    }

    #announcement span {
        color: #666;
    }

    #announcement ul {
        list-style-type: none
    }

    #progress {
        position: fixed;
        height: 2px;
        background: #9C0;
        transition: opacity 500ms linear;
        z-index: 1000000;
        top: 0;
    }

    #progress.done {
        opacity: 0
    }

    #progress span {
        position: absolute;
        height: 2px;
        -webkit-box-shadow: #2085c5 1px 0 6px 1px;
        -webkit-border-radius: 100%;
        opacity: 1;
        width: 150px;
        rightright: -10px;
        -webkit-animation: pulse 2s ease-out 0s infinite;
    }

    @
    -webkit-keyframes pulse { 30% {
        opacity: .6
    }
    60%
    {
        opacity




        :




                0;
    }
    100%
    {
        opacity




        :




                .6





    }
    }
</style>
<body>
<div id="progress">
    <span></span>
</div>
<script language="javascript">
    $({
        property : 0
    }).animate({
        property : 100
    }, {
        duration : 3000,
        step : function() {
            var percentage = Math.round(this.property);
            $("#progress").css("width", percentage + "%");
            if (percentage == 100) {
                $("#progress").addClass("done");
            }
        }
    });
</script>
<div id="announcement_box" class="ption_a">
    <div id="announcement">
        <ul style="margin-top: 0px;position: relative;left: 150px;width: 1000px;">
            <c:forEach items="${listBBS}" var="item">
                <li style="color: red">${item.time}&nbsp;&nbsp;&nbsp;<span style="color: red">公告：${item.BBS}</span></li>
            </c:forEach>
        </ul>
    </div>
    <div class="announcement_remove">
        <a title="关闭" href="javascript:void(0)" rel="external nofollow"
           onClick="$('#announcement_box').slideUp('slow');"><span
                id="announcement_close">×</span></a>
    </div>
</div>
<script>
    function AutoScroll(obj) {
        $(obj).find("ul:first").animate({
            marginTop : "-25px"
        }, 500, function() {
            $(this).css({
                marginTop : "0px"
            }).find("li:first").appendTo(this);
        });
    }
    $(document).ready(function() {
        setInterval('AutoScroll("#announcement")', 4000)
    });
</script>
<div class="top">
    <div class="topnav clear">
        <div class="user-entry">
            <c:if test="${empty user}">
                <b style="color: orange">阳阳商城</b>
                <a href="${pageContext.request.contextPath}/login.jsp" class="login"
                target="_self" >登录</a>
                <span> | </span>
                <a href="${pageContext.request.contextPath}/register.jsp" class="register"
                target="_self" >注册</a>
            </c:if>

            <c:if test="${!empty user}">
                <b>欢迎光临阳阳商城</b>
                <a style="color: red" href="javascript:void(0)">欢迎您 ${user.username}</a>
                <a style="color: black" href="${pageContext.request.contextPath}/logout">[安全退出]</a>

            </c:if>




        </div>
        <ul class="quick-menu">
            <%-- <li class="user-center">
                <div class="menu">
                    <a href="javascript:void(0)">我的商城</a> <i class="arrow"></i>

                </div> <span class="hline"></span>
                <div class="menu-bd menu-bdp">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/cart.jsp">购物车</a></li>
                        <li><a href="javascript:void(0)">个人主页</a></li>
                        <li><a href="javascript:void(0)">我的好友</a></li>
                    </ul>
                </div>
            </li> --%>
            <li class="user-center">
                <div class="menu">
                    <a href="http://localhost:8081/shoppingManage/" target="_blank">卖家中心</a> <!-- <i class="arrow"></i> --> <span
                        class="hline"></span>
                </div>
                <!-- <div class="menu-bd menu-bdp">
                    <ul>
                        <li><a href="javascript:void(0)">已售商品</a></li>
                        <li><a href="javascript:void(0)">销售商品</a></li>
                    </ul>
                </div> -->
            </li>
            <li class="user-center">
                <div class="menu">
                    <a href="findMsosByUserId">我的订单</a> <span class="hline"></span>
                </div>
            </li>
            <li class="user-center">
                <div class="menu">
                    <a href="javascript:void(0)">我的收藏</a> <i class="arrow"></i> <span
                        class="hline"></span>
                </div>
                <div class="menu-bd">
                    <ul>
                        <li><a href="javascript:void(0)">收藏的商品</a></li>
                        <li><a href="javascript:void(0)">收藏的店铺</a></li>
                    </ul>
                </div>
            </li>
            <li class="user-center">
                <div class="menu">
                    <a href="javascript:void(0)">站内消息</a> <span class="hline"></span>
                </div>
            </li>
            <li class="user-center">
                <div class="menu">
                    <a href="${pageContext.request.contextPath}/cart.jsp">购物车</a> <span class="hline"></span>
                </div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
