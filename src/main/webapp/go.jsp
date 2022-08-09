<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>阳阳商城——会员注册成功</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/css/home_header.css" rel="stylesheet" type="text/css">
<link href="css/css/home_login.css" rel="stylesheet" type="text/css">
<link href="css/css/font-awesome.min.css" rel="stylesheet">
<link href="css/css/dialog.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.12.4.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<!-- 表单校验插件 -->
<style>
.container{
background-color: white;
}
.container-fluid {
	border-bottom: 2px solid red;
}

#myform .form-group {
	padding: 10px;
	margin-left: 200px;
}
</style>

<body>
	<div class="header-wrap">
		<header class="public-head-layout wrapper">
		<h1 class="site-logo">
			<a href="index.jsp"><img
				style="position:relative;top:-10;width: 140;height: 70;"
				src="images/jd.png" class="pngFix"></a>
		</h1>
		<div class="nc-regist-now">
			<span class="avatar"><img src="images/66.gif"></span>
			<span>您好，您已注册成功！<br>请<a title=""
                                    href="login.jsp" class="register">登录</a></span>
		</div>
		</header>
	</div>
	<!-- 注册 -->
	<div class="container" style="margin-top: 20px;height: 550">
		<div class="row" style="padding-top: 10px;margin-right:0px;">
			<div class="col-md-9" style="padding-left:45px">
				<h3
					style="font-weight:bold;border-left: 3px solid red;padding:0px 10px;display: inline-block">新用户注册成功</h3><br><br><br><br><br>
			</div>
		</div>
		<form id="myform" class="form-horizontal"
              action="login.jsp" method="post"
              style="margin-top: 15px;">
			<h1 align="center"><img width="140" height="63px" src="images/jd.png">恭喜您,注册成功!<br><br></h1>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" style="width: 395px; height: 81px">
					<input type="submit" width="100" value="前往登录" name="submit"
						style=" padding: 5px;font-family:'Microsoft YaHei UI';border:2;height: 35px; width: 200px; color: white;background-color: #e60000">
				</div>
			</div>
		</form>
	</div>

	<div class="footers"style="position: relative;top:20px;left: 500px;">
						<p style="position: relative;left: 50px;">
							<a href="index.jsp">返回首页</a> <span>|</span> <a href="#"> 特卖 </a>
							<span>|</span> <a href="#"> 闪购 </a> <span>|</span> <a href="#">
								关于我们 </a> <span>|</span> <a target="_blank" href="#"> 店铺 </a> <span>|</span>
							<a href="#">友情链接</a> <span>|</span> <a
								href="http://m.kuaidi100.com/" target="_blank">快递查询</a>
						</p>
						<p>
							<!-- Copyright -->
							Copyright © 2018 Beijin YouLeGou.,Ltd. allright reserved.
							北京优乐购版权所有<br> <a href="#" target="_blank" style="color:#666"></a>
						</p>
	</div>
</body>
</html>
