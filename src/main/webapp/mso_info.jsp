<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>阳阳商城—订单详情</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="css/demo.css" rel="stylesheet" type="text/css" />
<link href="css/cartstyle.css" rel="stylesheet" type="text/css" />
<link href="css/jsstyle.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" />
<script type="text/javascript" src="js/address.js"></script>
<script src="js/scripts.js" type="text/javascript"></script>
<style>
.order_info {
	padding-left: 121px;
}

.order_id {
	background-color: #fffcf3;
	height: 40px;
	text-align: center;
}

.order_con {
	background-color: #fff9e7;
}
</style>
</head>


<body>

	<!-- 引入头部 -->
	<jsp:include page="/header.jsp"></jsp:include>

	<div class="clear"></div>
	<div class="concent">
		<!--地址 -->
		<form class="form-horizontal" name="thisform" method="post"
				action="submitOrder" style="margin-top: 5px; margin-left: 150px;">
		<div style="margin-left:-100px;background-color: #f3f3f3">
			<hr />
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">收货人</label>
					<div class="col-sm-5">
						<input placeholder="请输入联系人" type="text" class="form-control"
							name="msoname" id="name">
					</div>
				</div>
				<div class="form-group">
					<label for="username" class="col-sm-1 control-label">地址</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="address"
							name="address" placeholder="请输入收货地址">
					</div>
				</div>
			<div class="form-group">
				<label for="confirmpwd" class="col-sm-1 control-label">电话</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="confirmpwd"
						name="telephone" placeholder="请输入联系方式">
				</div>
			</div>
			<hr />
		</div>

		<div class="clear"></div>

		<!--支付方式-->
		<div class="logistics" style="background-color: #f3f3f3;position: relative;left: -100px; width: 1140px;">
			<h3>选择支付方式</h3>
			<ul class="pay-list">

				<li class="pay qq"><img src="images/weizhifu.jpg" />微信<span></span></li>
				<li class="pay taobao"><img src="images/zhifubao.jpg" />支付宝<span></span></li>
			</ul>
		</div>
		<div class="clear"></div>

		<!--订单 -->
		<div class="concent" style="position: relative;left: -100px;width: 1140px;">
			<div id="payTable">
				<h3>确认订单信息</h3>

				<div class="container order_info">
					<div class="row" style="margin-right: 0">
						<div style="width: 1000px;position: relative;left: -105px">
							<table class="table ">
								<tbody>
									<tr class="order_id" style="background-color: f3f3f3">
										<th colspan="5"
											style="font-size: 19px;border: 1px solid #e5e5e5;">订单详情：</th>
									</tr>
									<tr class="order_des"
										style=" background-color: #f3f3f3; border: 1px solid #e5e5e5;">
										<th style="padding-left: 50px">商品图片</th>
										<th style="padding-left: 50px">商品名称</th>
										<th style="padding-left: 60px">价格</th>
										<th style="padding-left: 20px">数量</th>
										<th style="padding-left: 60px">合计</th>
									</tr>

									<!-- 循环开始 -->
									<c:forEach items="${orderCart}" var="entry">
										<tr class="order_con"
											style="border-bottom:1px solid #fff;background-color:white;border: 1px solid #e5e5e5;">
											<td width="16%"><img
												src="${pageContext.request.contextPath}/${entry.key.pImg}"
												width="70" style="margin-left: 36px" height="60"></td>
											<td width="16%"
												style="padding-left: 39px;padding-top: 26px;font-size:16px;"><a
												target="_blank"
												style="cursor: pointer;text-decoration: none">
													${entry.key.pSn} </a></td>
											<td width="20%"
												style="padding-left: 39px;padding-top: 26px;font-size:16px;">￥${entry.key.iPrice}</td>
											<td width="10%"
												style="padding-left: 29px;padding-top: 26px;font-size:16px;">${entry.value}</td>
											<td width="15%"
												style="padding-left: 39px;padding-top: 26px;font-size:16px;"><span
												class="subtotal">￥${entry.key.iPrice*entry.value}</span></td>
										</tr>
									</c:forEach>
									<!-- 循环结束 -->
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<!--信息 -->
				<div class="box" style="position: relative;left: -50px;">
					<div tabindex="0" id="holyshit267" class="realPay">
						<em class="t">实付款：</em> <span class="price g_price "> <span>¥</span>
							<em class="style-large-bold-red " id="J_ActualFee">${amount}元</em>
						</span>
					</div>
				</div>

				<div id="holyshit269" class="submitOrder" style="position: relative;left: -50px;">
					<div class="go-btn-wrap">
						<button
							style="background-color: #ff4646;border-color: #ff4a00;color: #fff;"
							class="btn-go" tabindex="0" id="J_Go" type="submit" tabindex="0"
							title="点击此按钮，提交订单">提交订单</button>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		</form>
	</div>

	<!-- 引入底部 -->
	<jsp:include page="/footer.jsp"></jsp:include>

	<div class="clear"></div>

</body>
</html>
