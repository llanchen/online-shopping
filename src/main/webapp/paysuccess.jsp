<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>阳阳商城</title>
<script type="text/javascript">
	var time = 5;
	var timer;
	timer = setInterval(
		function(){
			if(time>1){
				time--;
				document.getElementById("second").innerHTML = time;
			}else{
				clearInterval(timer);
				location.href="index.jsp";
			}
		},
		1000
	);
</script>
</head>

<body>

	<jsp:include page="/header.jsp"></jsp:include>
	<div id="divcontent">
		<table width="850px" border="0" cellspacing="0">
			<tr>
				<td style="padding:30px; text-align:center"><table width="60%"
						border="0" cellspacing="0" style="margin-top:70px">
						<tr>
							<td style="width:98"><img
								src="images/IconTexto_WebDev_009.jpg" width="128" height="128" />
							</td>
							<td style="padding-top:30px"><font
								style="font-weight:bold; color:#FF0000">支付成功</font><br />
								<br />
								<c:if test="${amount>=100 }">
								 <a href="choujian/index.html">购物满100,点击此处可参加抽奖,若不抽,
								 <span id="second" style="color: red;">5</span>
								 秒后自动为您转跳到抽奖页面</a></td>
								</c:if>
								<c:if test="${amount<100 }">
								 <a href="index.jsp"><span id="second">5</span>秒后自动为您转跳回首页</a></td>
								</c:if>
						</tr>
					</table>
					<h1>&nbsp;</h1></td>
			</tr>
		</table>
	</div>



		<jsp:include page="/footer.jsp"></jsp:include>


</body>
</html>
