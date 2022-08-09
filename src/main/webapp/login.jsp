<%@ page language="java" import="java.util.*"
         contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>阳阳商城 - 登&nbsp;&nbsp;&nbsp;录</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/login.css" type="text/css"/>
    <link rel="stylesheet" href="css/pop.css" type="text/css"/>
    <script src="js/jquery-1.12.4.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href="css/css/home_header.css" rel="stylesheet" type="text/css">
    <link href="css/css/home_login.css" rel="stylesheet" type="text/css">
    <link href="css/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/css/dialog.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="header-wrap">
    <header class="public-head-layout wrapper">
        <h1 class="site-logo">
            <a href="index.jsp"><img
                    style="position: relative; top: -10; width: 100px; height: 75px;"
                    src="images/xx.jpg" class="pngFix"></a>
        </h1>
        <div class="nc-regist-now">
            <span class="avatar"><img src="images/66.gif"></span> <span>您好，欢迎来到阳阳商城<br>已注册的会员请登录，或立即<a
                title="" href="register.jsp" class="register">注册新会员</a></span>
        </div>
    </header>
</div>
<!-- 登入 -->
<div class="container-fluid loginWrap">
    <div class="loginForm" style="height: 600px;">

        <div class="loginTitle">
            <b>用户登录</b>
        </div>

        <div class="loginInputWrap">
            <div class="inputItem">
                <div class="labInpWr">
                    <div class="label">
                        <span>用户名：</span>
                    </div>
                    <%--<div class="inputWrap">
							<span class="inputPad"> <input class="inputBlock"
                                                           id="username" name="username" type="text"
                                                           placeholder="用户名/邮箱/已验证手机" value="" autocomplete="off">
							</span> <span class="clearInput" style="display: none;"></span>
                    </div>--%>
                    <input class="inputWrap" id="username" name="username" type="text"
                           placeholder="用户名" value="" autocomplete="off">



                </div>
                <%-- <div class="megTip">
                     <span>请输入用户名/邮箱/已验证手机</span>
                 </div>--%>
            </div>

            <div class="inputItem">
                <div class="labInpWr">
                    <div class="label">
                        <span>密码：</span>
                    </div>
                    <%--<div class="inputWrap">
							<span class="inputPad"> <input class="inputBlock" name="password" id="password"
                            type="password" placeholder="密码" autocomplete="off">
							</span> <span class="clearInput" style="display: none;"></span>
                    </div>--%>

                 <input class="inputWrap" name="password" id="password"
                 type="password" placeholder="密码" autocomplete="off">

                </div>
                <%--<div class="megTip">
                    <span>请输入密码</span>
                </div>--%>


            </div>
            <div class="inputItem">
                <div class="labInpWr">
                    <div class="label">
                        <span>验证码：</span>
                    </div>
                    <%--<div class="inputWrap imgCodeWrap">
							<span class="inputPad"> <input class="inputBlock"
                                                           id="imgcode" type="text" placeholder="图片验证码"
                                                           autocomplete="off">
							</span> <span class="clearInput" style="display: none;"></span>
                    </div>--%>
                    <input class="inputWrap imgCodeWrap"id="imgcode" type="text"
                    placeholder="图片验证码" autocomplete="off">


                    <div class="imgWrap">
                        <img id="checkImg" src="getCaptcha">
                    </div>
                    <div class="changeImgCoad">
                        <a href="javascript:void(0)"
                           onclick="document.getElementById('checkImg').src='getCaptcha?temp='+ (new Date().getTime().toString(36))">换一换</a>&nbsp;&nbsp;<font
                            id="vcode" color="red"></font>
                    </div>
                </div>
            </div>
            <div class="loginBtn" id="loginBtn">
                <a href="javascript:void(0)">登录</a>
            </div>
            <div class="otherLink">
                <a class="fogotPas" href="javascript:void(0)" target="_blank">忘记密码？</a>
                <a class="newUserReg"
                   href="${pageContext.request.contextPath}/register.jsp"
                   target="_blank">新用户注册&gt;&gt;</a>
            </div>
            <div class="otherLogin">
                <a class="tsinalogin" id="tsinalogin" href="javascript:void(0)"><span
                        class="icon"></span>新浪微博账号登录</a> <a class="qqlogin" id="qqlogin"
                                                            href="javascript:void(0)"><span
                    class="icon"></span>QQ账号登录</a> <a
                    class="wxlogin" id="wxlogin" href="javascript:void(0)"><span
                    class="icon"></span>微信账号登录</a>
            </div>
        </div>
    </div>
</div>
<!-- pop层 -->
<div class="popMask"
     style="display: none; filter: none; opacity: 0.4; background-color: rgb(0, 0, 0);">
</div>
<div class="popMain"
     style="width: 596px; top: 200px; display: none; position: relative; top: 10px; left: 500px; top: -660px;">
    <div class="popTitle" style="display: block; cursor: auto;">
        <span class="text">提示</span><span class="close">×</span>
    </div>
    <div class="popContent">
        <div class="dialogContent">
            <span class="warnIcon"></span>
            <div class="text">
                <h3 class="txt_02">用户名或密码错误，请重新输入!</h3>
                <button type="button" class="close">确定</button>
            </div>
        </div>
    </div>
</div>

<!-- 脚本 -->
<script>
    (function ($) {
        <!--点击输入框提示-->
        $(".loginForm input").each(
            function (index) {
                $(this).on(
                    "click",
                    function () {
                        $(".loginInputWrap .inputItem").eq(index)
                            .addClass("focus").siblings()
                            .removeClass("focus").removeClass(
                            "error");
                    })
            });

        <!--登录-->
        $("#loginBtn")
            .on("click", function () {
                //先检验
                //检验成功则获取值
                var username = $("#username").val();
                if (username == "") {
                    $(".loginInputWrap .inputItem").eq(0)
                        .addClass("error").removeClass(
                        "focus");
                    return false;
                }
                var password = $("#password").val();
                if (password == "") {
                    $(".loginInputWrap .inputItem").eq(1)
                        .addClass("error").removeClass(
                        "focus");
                    return false;
                }
                var autoLogin = $("#autoLogin").prop("checked");
                //在ajax提交
                var validCode = $("#imgcode").val();
                $("#vcode").html("");
                $.ajax({
                    "async": false,
                    "url": "login",
                    "data": {
                        "username": username,
                        "password": password,
                        "validCode": validCode,


                    },
                    "type": "POST",
                    "dataType": "json",

                    "success": function (data) {
                        if (data.vcode == false) {
                            $("#vcode").html("验证码错误!");
                            return;
                        }

                        if (data.isRedirect) {
                            $("#loginBtn a").text("正在登录.."),
                                location.href = data.path; //重定向到登录前的页面
                        } else {
                            $(".popMask").fadeIn(600);
                            $(".popMain").fadeIn(600);
                        }

                    }
                });
            });

        <!--pop层隐藏-->
        $(".popMain .close").on("click", function () {
            //遮罩层渐隐
            $(".popMask").fadeOut(600);
            //高亮层渐隐
            $(".popMain").fadeOut(600);
        });

    })(jQuery);
</script>
<div class="footers"
     style="position: relative; top: 20px; left: 500px;">
    <p style="position: relative; left: 50px;">
        <a href="index.jsp">返回首页</a> <span>|</span> <a href="#"> 特卖 </a> <span>|</span>
        <a href="#"> 闪购 </a> <span>|</span> <a href="#"> 关于我们 </a> <span>|</span>
        <a target="_blank" href="#"> 店铺 </a> <span>|</span> <a href="#">友情链接</a>
        <span>|</span> <a href="http://m.kuaidi100.com/" target="_blank">快递查询</a>
    </p>
    <p>
        <!-- Copyright -->
        Copyright © 2018 Beijin YouLeGou.,Ltd. allright reserved. 阳阳科技版权所有<br>
        <a href="#" target="_blank" style="color: #666"></a>
    </p>
</div>
</body>
</html>
,
