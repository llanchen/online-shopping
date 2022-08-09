<%--
  Created by IntelliJ IDEA.
  User: Feb
  Date: 2021/8/24
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>阳阳商城 - 登&nbsp;&nbsp;&nbsp;录</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/ou/util.css">
    <link rel="stylesheet" type="text/css" href="css/ou/main.css">



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

<div class="dowebok">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="images/img-01.jpg" alt="IMG">
            </div>

            <form class="login100-form validate-form">
				<span class="login100-form-title">
					用户登陆
				</span>

                <div class="wrap-input100 validate-input">
                    <input class="input100" type="text" name="username" id="username" placeholder="用户名"
                           value="" autocomplete="off">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
                </div>

                <div class="wrap-input100 validate-input">
                    <input class="input100" type="password" name="pass" placeholder="密码">
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
						<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
                </div>

                <div class="wrap-input100 validate-input">
                    <input class="input100" name="code" placeholder="验证码" id="imgcode" type="text" autocomplete="off">
                    <div class="imgWrap">
                        <img id="checkImg" src="getCaptcha">
                    </div>
                    <div class="changeImgCoad">
                        <a href="javascript:void(0)"
                           onclick="document.getElementById('checkImg').src='getCaptcha?temp='+ (new Date().getTime().toString(36))">换一换</a>&nbsp;&nbsp;<font
                            id="vcode" color="red"></font>
                    </div>
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
						<i class="glyphicon glyphicon-check" aria-hidden="true"></i>
					</span>
                </div>


                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        登陆
                    </button>
                </div>

                <div class="text-center p-t-12">
                    <a class="txt2" href="javascript:">
                        忘记密码？
                    </a>
                </div>

                <div class="text-center p-t-136">
                    <a class="txt2" href="https://www.helloweba.net/" target="_blank">
                        还没有账号？立即注册
                        <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                    </a>
                </div>
            </form>

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



        </div>
    </div>
</div>



<script>
    (function ($) {
        <!--点击输入框提示-->
        $(".login100-form input").each(
            function (index) {
                $(this).on(
                    "click",
                    function () {
                        $(".login100-form .wrap-input100").eq(index)
                            .addClass("focus").siblings()
                            .removeClass("focus").removeClass(
                            "error");
                    })
            });

        <!--登录-->
        $(".login100-form-btn")
            .on("click", function () {
                //先检验
                //检验成功则获取值
                var username = $("#username").val();
                if (username == "") {
                    $(".login100-form .wrap-input100").eq(0)
                        .addClass("error").removeClass(
                        "focus");
                    return false;
                }
                var password = $("#password").val();
                if (password == "") {
                    $(".login100-form .wrap-input100").eq(1)
                        .addClass("error").removeClass(
                        "focus");
                    return false;
                }
                // var autoLogin = $("#autoLogin").prop("checked");
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

</body>
</html>
