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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function receive(obj, msoid) {

		$.ajax({
			url : 'updateDelivery',
			data : "msoid=" + msoid,
			success : function(data) {
				if(data>0){
					$(obj).parent().text("已收货");
				}
			}

		})

	}
</script>
</head>


<body>

	<!-- 引入头部 -->
	<jsp:include page="/header.jsp"></jsp:include>


	<p>&nbsp;</p>
	<div class="concent" style="margin-top: 5px; margin-left: 150px;">


			<div class="concent"
			style="position: relative; left: -100px; width: 1140px;margin-left: 150px;">
			<div id="payTable">


				<div class="container order_info">
					<div class="row" style="margin-right: 0">
						<div style="width: 1000px; position: relative; left: -105px">
							<table class="table ">
								<tbody>

									<tr class="order_des"
										style="background-color: #f3f3f3; border: 1px solid #e5e5e5;">
										<th style="padding-left: 50px">订单编号</th>
										<th style="padding-left: 10px">总金额</th>
										<th style="padding-left: 10px">付款状态</th>
										<th style="padding-left: 10px">物流状态</th>

									</tr>


										<tr class="order_con"
											style="border-bottom: 1px solid #fff; background-color: white; border: 1px solid #e5e5e5;">
											<td >${mso.msoid}</td>
											<td >
													￥${mso.msomoney} </td>
											<td >${mso.paystate}</td>
											<td>${mso.deliveryState}
												<c:if test="${mso.deliveryState=='已发货'}">
													<input type="button" value="确认收货"  style="width:100px;height:30px;background-color:red;text-align:center;"
														onclick="receive(this,'${mso.msoid }')" />
												</c:if>


												</td>

										</tr>


								</tbody>
							</table>
						</div>

					</div>
				</div>
				<!--信息 -->
				<div class="box" style="position: relative; left: -50px;">
					<div tabindex="0" id="holyshit267" class="realPay">
						<em class="t">实付款：</em> <span class="price g_price "> <span>¥</span>
							<em class="style-large-bold-red " id="J_ActualFee">${mso.msomoney}元</em>
						</span>
					</div>
					<div>
					<!-- request.getParamter("msoid") -->
						<c:if test="${mso.paystate=='未付款' }">
							<form method="post" action="succ.jsp">
								<input type="hidden" name="msoid" value="${mso.msoid }" />
								<input
									type="hidden" name="amount" value="${mso.msomoney }" />
								<button type="submit"
									style="width: 100px; height: 30px; background-color: red; text-align: center;">
									<font color="white">去付 款</font>
								</button>
							</form>
						</c:if>
					</div>
				</div>


				<div class="clear"></div>
			</div>
		</div>



		<div class="clear"></div>

		<!--订单 -->
		<div class="concent"
			style="position: relative; left: -100px; width: 1140px;margin-left: 150px;">
			<div id="payTable">
			<!-- 	<h3>订单明细信息</h3> -->

				<div class="container order_info">
					<div class="row" style="margin-right: 0">
						<div style="width: 1000px; position: relative; left: -105px">
							<table class="table ">
								<tbody>
									<tr class="order_id" style="background-color: f3f3f3">
										<th colspan="5"
											style="font-size: 19px; border: 1px solid #e5e5e5;">订单明细</th>
									</tr>
									<tr class="order_des"
										style="background-color: #f3f3f3; border: 1px solid #e5e5e5;">
										<th style="padding-left: 50px">商品图片</th>
										<th style="padding-left: 50px">商品名称</th>
										<th style="padding-left: 60px">价格</th>
										<th style="padding-left: 20px">数量</th>
										<th style="padding-left: 60px">合计</th>
									</tr>

									<!-- 循环开始 -->
									<c:forEach items="${mso.msoxqs}" var="msoxq">
										<tr class="order_con"
											style="border-bottom: 1px solid #fff; background-color: white; border: 1px solid #e5e5e5;">
											<td width="16%"><img src="${msoxq.pro.pImg}" width="70"
												style="margin-left: 36px" height="60"></td>
											<td width="16%"
												style="padding-left: 39px; padding-top: 26px; font-size: 16px;"><a
												target="_blank"
												style="cursor: pointer; text-decoration: none">
													${msoxq.pro.pSn} </a></td>
											<td width="20%"
												style="padding-left: 39px; padding-top: 26px; font-size: 16px;">￥${msoxq.pro.iPrice}</td>
											<td width="10%"
												style="padding-left: 29px; padding-top: 26px; font-size: 16px;">${msoxq.count}</td>
											<td width="15%"
												style="padding-left: 39px; padding-top: 26px; font-size: 16px;"><span
												class="subtotal">￥${msoxq.pro.iPrice*msoxq.count}</span></td>
										</tr>
									</c:forEach>
									<!-- 循环结束 -->
								</tbody>
							</table>
						</div>

					</div>
				</div>
				<!--信息 -->
				<div class="box" style="position: relative; left: -50px;">
					<div tabindex="0" id="holyshit267" class="realPay">
						<em class="t">实付款：</em> <span class="price g_price "> <span>¥</span>
							<em class="style-large-bold-red " id="J_ActualFee">${mso.msomoney}元</em>
						</span>
					</div>
					<div>
					<!-- request.getParamter("msoid") -->
						<c:if test="${mso.paystate=='未付款' }">
							<form method="post" action="succ.jsp">
								<input type="hidden" name="msoid" value="${mso.msoid }" /> <input
									type="hidden" name="amount" value="${mso.msomoney }" />
								<button type="submit"
									style="width: 100px; height: 30px; background-color: red; text-align: center;">
									<font color="white">去付 款</font>
								</button>
							</form>
						</c:if>
					</div>
				</div>

				<!-- <div id="holyshit269" class="submitOrder"
						style="position: relative; left: -50px;">
						<div class="go-btn-wrap">
							<button
								style="background-color: #ff4646; border-color: #ff4a00; color: #fff;"
								class="btn-go" tabindex="0" id="J_Go" type="submit" tabindex="0"
								title="点击此按钮，提交订单">提交订单</button>
						</div>
					</div> -->
				<div class="clear"></div>
			</div>
		</div>


	</div>

	<!-- 引入底部 -->
	<jsp:include page="/footer.jsp"></jsp:include>

	<div class="clear"></div>

</body>
</html>
