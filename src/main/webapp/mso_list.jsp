<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>阳阳商城—订单列表</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
.order_list .warning {
	font-size: 16px;
}
</style>
<script src="js/jquery-1.12.4.js"></script>
<script>
function delMso(obj){
	//获取订单号
	var msoid=$(obj).parent().parent().children(".msoid").text();

	$.ajax({

		url:"delMso",
		type:'get',
		data:{"msoid":msoid},
		success:function(data){
			if(data>0){
				$(obj).parent().parent().remove();
			}
		}

	});
}
</script>
</head>

<body>

	<!-- 引入头部 -->
	<jsp:include page="/header.jsp"></jsp:include>
	<div class="container order_list" style="padding-left: 110px;">
		<div class="row ">
			<div style="width: 950px;">
				<strong style="font-size:16px;margin:5px 0;">
					<h3>&nbsp;</h3>
				</strong>
				<table class="table" style="font-size:13px;">
					<!-- 循环开始 -->
<%-- 					<c:forEach items="${orderList}" var="order"> --%>
						<tbody>
							<tr
								style="background-color:#eff;height: 40px;text-align: center">
								<th style="padding-left: 30px">订单编号</th>
								<th style="padding-left: 30px">收货人</th>
								<!-- <th style="padding-left: 20px">地址</th>
								<th style="padding-left: 56px">电话</th>
								<th style="padding-left: 30px">订购日期</th>-->
								<th style="padding-left: 30px">付款状态</th>
								<th >发货状态</th>
								<th style="padding-left: 30px">总金额</th>
								<th>操作</th>
							</tr>
							<!-- 循环开始 -->
							<c:forEach items="${orderList}" var="mso">
								<tr style="border-bottom:1px solid #fff;background-color:white;"
									class="selected">
									<td style="padding-left:30px " class="msoid">${mso.msoid}</td>
									<td style="padding-left:30px ">${mso.msoname}</td>

									<%-- <td width="10%" style="text-align:center;">${mso.address}	</td>
									<td width="10%" style="padding-left:20px;">${mso.telephone}</td>
									<td width="10%" style="padding-left:36px;">${mso.msoTime.toLocaleString()}</td>--%>
									<td  style="padding-left:30px;">${mso.paystate}</td>
									<td>${mso.deliveryState}</td>
									<td style="padding-left:30px;">￥${mso.msomoney}</td>
									<td><a href="javascript:void(0);" onclick="delMso(this)">删除/取消订单</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="getMsoxq?msoid=${mso.msoid}" >查看订单明细</a>


										</td>
								</tr>
							</c:forEach>
							<%--
							<tr
								style="background-color:#f3f3f3;height: 40px;text-align: center">
								<th style="padding-left: 30px">阳阳自营</th>
								<th style="padding-left: 20px">图片</th>
								<th style="padding-left: 56px">商品名称</th>
								<th style="padding-left: 30px">价格</th>
								<th style="padding-left: 30px">数量</th>
								<th style="padding-left: 30px">合计</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${cart.cartItems}" var="entry">
								<tr style="border-bottom:1px solid #fff;background-color:white;"
									class="selected">
									<td style="padding-left:36px " width="7%"><input
										class="cartItem" checked="checked" type="checkbox"
										value="${entry.value.pro.id}"></td>
									<td width="6%"><input type="hidden" name="id" value="22">
										<img
										src="${pageContext.request.contextPath}/${entry.value.pro.pImg}"
										width="70" height="60"></td>

									<td width="10%" style="text-align:center;"><a
										style="cursor:pointer;text-decoration: none " target="_blank">${entry.value.pro.pName}</a>
									</td>
									<td width="10%" style="padding-left:20px;">￥${entry.value.pro.iPrice}</td>
									<td width="10%" style="padding-left:36px;">${entry.value.buyNum}</td>
									<td width="15%" style="padding-left:30px;"><span
										class="subtotal">${entry.value.subTotal}</span></td>
									<td width="5%"><a href="javascript:void(0);"
										onclick="delProFromCart('${entry.value.pro.id}')"
										class="delete">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>收藏</a></td>
								</tr>
							</c:forEach> --%>
							<!-- 循环结束 -->
						</tbody>
<%-- 					</c:forEach> --%>
					<!-- 循环结束 -->
				</table>
				<!-- empty判断是否为空取决于是否有内容 -->
				<c:if test="${empty orderList}">
					<div class="container-fluid" id="page_main" >
						<div class="row" style="margin-right: 0;margin-left: 111px;">
							<div class="col-md-3"style="position: relative;left: -100px;">
								<span style="font-size: 26px"
									class="glyphicon glyphicon-shopping-cart"></span>
								<h3 style="display: inline">订单详情</h3>
							</div>
						</div>
						<img alt="" src="images/ddxq.png" style="width: 200px;height: 200px;position: relative;left: 350px;">
						<div class="cart_empty"
							style="position: relative;left: 320px;top: 20px;">
							<div class="content"style="position: relative;left: 70px;">
								<p style="font-size: 16px;font-weight: 800px;">您还没有订单！</p>
								<a class="btn_primary btn_goshoping" href="index.jsp" style="color: red;font-size: 16px;">去逛逛!</a>
							</div>

						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<!-- 引入底部 -->
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
