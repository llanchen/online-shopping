<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>

<title>商品信息</title>
<link href="css/xq/amazeui.css" rel="stylesheet" type="text/css">
<link href="css/xq/demo.css" rel="stylesheet" type="text/css" />
<link type="text/css" href="css/xq/optstyle.css" rel="stylesheet" />
<link type="text/css" href="css/xq/style.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/css/style.css">




<script type="text/javascript" src="js/xq/quick_links.js"></script>
<script type="text/javascript" src="js/xq/amazeui.js"></script>
<script type="text/javascript" src="js/xq/jquery.imagezoom.min.js"></script>
<script type="text/javascript" src="js/xq/jquery.flexslider.js"></script>
<script type="text/javascript" src="js/xq/list.js"></script>
<!-- 配置文件 -->
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery.enlarge.min.js"></script>
<script>
$(function(){
	$("#demo").enlarge(
	{
		//鼠标遮罩层样式
		shadecolor: "#FFD24D",
		shadeborder: "#FF8000",
		shadeopacity: 0.4,
		cursor:"move",

		//大图外层样式
		layerwidth: 480,
		layerheight: 360,
		layerborder: "#DDD",
		fade:true,

		//大图尺寸
		largewidth: 960,
		largeheight: 720

	});
});




	//增加商品到购物车
 	function addCart(id) {
		//获得购买商品的数量
		//location.href="pro?method=addProCart&proid=${item.id}&buyNum=1";

		$.ajax({
			url:'addCart',
			type:'get',
			data:'proid='+id,

			success:function (data) {
				if (data=="true"){
					alert("添加购物车成功");
				}else {
					alert("对不起，该商品库存不足！");
				}

			},
			error:function () {
				alert("ajax执行失败！");
			}
		})
	}





</script>

</head>
<body>
	<!-- 引入头部 -->
	<jsp:include page="/header.jsp"></jsp:include>
	<div class="head">
		<div class="logo fl">
			<a href="index.jsp"><img src="images/jd.png"
				style="position: relative; top: 5; left: 20; width: 154; height: 70"></a>
		</div>
		<div class="search fl" style="position: relative; top: 30; left: 50;">
			<div class="sch-form">
				<input type="text" class="stext"> <input type="button"
					class="sbtn" value="搜索">
			</div>
			<div class="sch-hint">
				<a href="javascript:void(0)">笔记本电脑</a> <a href="javascript:void(0)">|</a>
				<a href="javascript:void(0)">女装</a> <a href="javascript:void(0)">|</a>
				<a href="javascript:void(0)">0元试用</a> <a href="javascript:void(0)">|</a>
				<a href="javascript:void(0)">微波炉</a> <a href="javascript:void(0)">|</a>
				<a href="javascript:void(0)">空调</a> <a href="javascript:void(0)">|</a>
				<a href="javascript:void(0)">厨卫5折秒</a> <a href="javascript:void(0)">|</a>
				<a href="javascript:void(0)">国际米兰</a>
			</div>
		</div>
		<div class="cart fr" style="position: relative; top: 30; left: -40;">
			<img alt="阳阳商城" src="images/ma.png" width="100px" ;height="100px";>
		</div>
	</div>
	<br />
	<br />
	<div class="dtw">
		<div class="dtww clear">
			<div class="dt fl">
				<a href="javascript:void(0)">阳阳商城——商品信息</a>
			</div>
			<ul class="navbar fl">
				<li><a href="index.jsp" class="sy">首页</a></li>
				<li><a href="shopping?cid=32" class="sy">食品饮料</a></li>
				<li><a href="shopping?cid=5" class="sy">特价手机</a></li>
				<li><a href="shopping?cid=11" class="sy">品牌闪购</a></li>
				<li><a href="shopping?cid=8" class="sy">电器城</a></li>
				<li><a href="shopping?cid=31" class="sy">生鲜</a></li>
				<li><a href="http://a2.rabbitpre.com/m2/aUe1ZicePv" class="sy">合伙人招募</a></li>
			</ul>
		</div>
	</div>
	<div class="nav clear"></div>
	<!-- 商品信息 -->

	<div class="item-inform">
		<div class="clearfixLeft" id="clearcontent">

			<div class="box">

				<div class="tb-booth tb-pic tb-s310">


						<a href="${item.pImg }" id="demo" style="position: relative; float: left;">
							<img src="${item.pImg }">
							<img src="${item.pImg }" width="800" height="800" style="display: none;">
						</a>
				</div>

			</div>

			<div class="clear"></div>
		</div>

		<div class="clearfixRight">

			<!--规格属性-->
			<!--名称-->
			<div class="tb-detail-hd">
				<h1>${item.pSn}</h1>
			</div>
			<div class="tb-detail-list">
				<!--价格-->
				<div class="tb-detail-price">
					<li class="price iteminfo_price">
						<dt>促销价</dt>
						<dd>
							<em>¥</em><b class="sys_item_price">${item.iPrice}</b>
						</dd>
					</li>
					<li class="price iteminfo_mktprice">
						<dt>原价</dt>
						<dd>
							<em>¥</em><b class="sys_item_mktprice">${item.mPrice}</b>
						</dd>
					</li>
					<div class="clear"></div>
				</div>

				<!--销量-->
				<ul class="tm-ind-panel">
					<li class="tm-ind-item tm-ind-sellCount canClick">
						<div class="tm-indcon">
							<span class="tm-label">月销量</span><span class="tm-count">${item.isHot}</span>
						</div>
					</li>
					<li class="tm-ind-item tm-ind-sumCount canClick">
						<div class="tm-indcon">
							<span class="tm-label">累计销量</span><span class="tm-count">6015</span>
						</div>
					</li>
					<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
						<div class="tm-indcon">
							<span class="tm-label">累计评价</span><span class="tm-count">640</span>
						</div>
					</li>
				</ul>
				<div class="clear"></div>

				<!--各种规格-->
				<dl class="iteminfo_parameter sys_item_specpara">
					<dt class="theme-login">
						<div class="cart-title">
							可选规格<span class="am-icon-angle-right"></span>
						</div>
					</dt>
					<dd>
						<!--操作页面-->

						<div class="theme-popover-mask"></div>

						<div class="theme-popover">
							<div class="theme-span"></div>
							<div class="theme-poptit">
								<a href="javascript:;" title="关闭" class="close">×</a>
							</div>
							<div class="theme-popbod dform">
								<form class="theme-signin" name="loginform" action=""
									method="post">

									<div class="theme-signin-left">

										<div class="theme-options">
											<div class="cart-title">品牌</div>
											<ul>
												<li class="sku-line selected">${item.pName}<i></i></li>

											</ul>
										</div>
										<div class="theme-options">
											<div class="cart-title">型号</div>
											<ul>
												<li class="sku-line selected">${item.pSn}<i></i></li>

											</ul>
										</div>

										<div class="clear"></div>

										<div class="btn-op">
											<div class="btn am-btn am-btn-warning">确认</div>
											<div class="btn close am-btn am-btn-warning">取消</div>
										</div>
									</div>
									<div class="theme-signin-right">
										<div class="img-info">
											<img src="images/songzi.jpg" />
										</div>
										<div class="text-info">
											<span class="J_Price price-now">¥${item.iPrice}</span> <span
												id="Stock" class="tb-hidden">库存<span class="stock">${item.pNum}</span>件
											</span>
										</div>
									</div>

								</form>
							</div>
						</div>

					</dd>
				</dl>
				<div class="clear"></div>
				<!--活动	-->
				<div class="shopPromotion gold">

					<div class="clear"></div>

				</div>
			</div>

			<div class="pay">
				<div class="pay-opt">
					<a href="javascript:void(0)"><span
						class="am-icon-home am-icon-fw">首页</span></a> <a><span
						class="am-icon-heart am-icon-fw">收藏</span></a>

				</div>
				<li>
					<div class="clearfix tb-btn tb-btn-buy theme-login">
						<a id="LikBuy" title="点此按钮到下一步确认购买信息" href="#">加入收藏</a>
					</div>
				</li>
				<li>
					<div class="clearfix tb-btn tb-btn-basket theme-login">
						<a id="LikBasket" title="加入购物车" onclick="addCart(${item.id})"><i></i>加入购物车</a>
					</div>
				</li>
			</div>

		</div>

		<div class="clear"></div>

	</div>

	<!-- introduce-->

	<div class="introduce">
		<div class="browse">
			<div class="mc">
				<ul>
					<div class="mt">
						<h2>猜你喜欢</h2>
					</div>

					<li class="first">
						<div class="p-img">
							<a href="javascript:void(0)"> <img class=""
								src="images/brand1.jpg">
							</a>
						</div>
						<div class="p-name">
							<a href="javascript:void(0)">
								【漫步者（EDIFIERP】漫步者S90震撼发售，首发期间优质晒单送优酷VIP会员年卡~~立即抢购 ~【抢购请戳】 </a>
						</div>
						<div class="p-price">
							<strong>￥69.90</strong>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a href="javascript:void(0)"> <img class=""
								src="images/brand2.jpg">
							</a>
						</div>
						<div class="p-name">
							<a href="javascript:void(0)"> 【联想（lenovo】联想（lenovo）拯救者Star
								Y360头戴式7.1电竞电脑游戏 </a>
						</div>
						<div class="p-price">
							<strong>￥299.90</strong>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a href="javascript:void(0)"> <img class=""
								src="images/brand03.jpg">
							</a>
						</div>
						<div class="p-name">
							<a href="javascript:void(0)"> 【西门子（SIEMENS】西门子（SIEMENS）
								BCD-610W(KA92NV02TI) 610升 变频风冷无霜 对开门</a>
						</div>
						<div class="p-price">
							<strong>￥5199.00</strong>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a href="javascript:void(0)"> <img class=""
								src="images/brand3.jpg">
							</a>
						</div>
						<div class="p-name">
							<a href="javascript:void(0)"> 【Apple 】 (A1865) 64GB 银白色
								移动联通电信4G手机</a>
						</div>
						<div class="p-price">
							<strong>￥8316.00</strong>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a href="javascript:void(0)"> <img class=""
								src="images/brand06.jpg">
							</a>
						</div>
						<div class="p-name">
							<a href="javascript:void(0)">
								【先科广场舞】12英寸户外便携式音箱插卡无线蓝牙播放器大功率低音炮移动拉杆扩音器套装U段话筒影响 无线U段话筒1只+16GU盘
							</a>
						</div>
						<div class="p-price">
							<strong>￥35.90</strong>
						</div>
					</li>

				</ul>
			</div>
		</div>
		<div class="introduceMain">
			<div class="am-tabs" data-am-tabs>
				<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="javascript:void(0)"> <span
							class="index-needs-dt-txt">宝贝详情</span></a></li>
				</ul>

				<div class="am-tabs-bd">

					<div class="am-tab-panel am-fade am-in am-active">
						<div class="J_Brand">

							<div class="attr-list-hd tm-clear">
								<h4>产品参数：</h4>
							</div>
							<div class="clear"></div>
							<ul id="J_AttrUL">
								<li title="javascript:void(0)">产品类型:&nbsp;${item.pSn}</li>
								<li title="javascript:void(0)">上架日期:&nbsp;${item.pubTime}</li>
								<li title="javascript:void(0)">产品标准号:&nbsp;GB/T 22165</li>
								<li title="javascript:void(0)">生产许可证编号：&nbsp;QS4201 1801
									0226</li>
							</ul>
							<div class="clear"></div>
						</div>

						<div class="details">
							<div class="attr-list-hd after-market-hd">
								<h4>商品细节</h4>
							</div>
							<div class="twlistNews">
								<img src="${item.xqImg}" />

							</div>
						</div>
						<div class="clear"></div>

					</div>

				</div>

			</div>

		</div>



		<h2>&nbsp;</h2>
		<table border=1 width=80%
			style="border: 1px #eee solid; border-collapse: collapse; text-align: left;">
			<tr>
				<td colspan=3
					style="background-color: #eee; text-align: center; font-size: 24px; height: 30px;">买家评论</td>
			</tr>

			<c:forEach items="${comments }" var="comment">
				<tr style="border: 1px #eee solid;">
					<td>评论人:${empty comment.username?"游客":comment.username }<br /></td>
					<td>评论时间:${comment.time }<br /></td>
					<td>星级评价:<font color="red" style="color: red;">${comment.score }</font>星<br /></td>
				</tr>
				<tr style="border: 1px #eee solid;">

					<td>评论内容:<br />${comment.comments }<br /></td>
				</tr>

			</c:forEach>

		</table>

		<h2>发表评论</h2>
		<form action="addComment" method="post">
			<div>

				<!-- 加载编辑器的容器  原始的文本域-->
				<textarea id="container" name="container"
					style="width: 89%; height: 400px; margin-left: 240px; z-index: 1;">
			</textarea>
				<script type="text/javascript">
				/*转换为富文本编辑器*/
				UE.getEditor("container");
			</script>

				<div style="margin-left: 300px;">
					<br />
					<table>
						<tr>
							<td>星级:<input type="text" id="score" name="score" />
							</td>
							<td>
								<ul class="comment">
									<li class="light"></li>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</td>
						</tr>
					</table>

				</div>



				<input type="hidden" value="${item.id}" name="proid" /> <br /> <input
					type="submit" value="发表评论"
					style="width: 100px; height: 30px; background-color: red; margin-left: 200px;" />
			</div>
		</form>

	</div>

	<div style="position: fixed; top: 10px; right: 10px; z-index: 100;">
		<a target="_blank"
			href="http://wpa.qq.com/msgrd?v=3&uin=1349777251&site=qq&menu=yes">
			<img border="0" src="http://wpa.qq.com/pa?p=2:1349777251:53"
			width=60px height=80px alt="点击这里给我发消息" title="点击这里给我发消息" />
	</div>
	<!-- 引入底部 -->
	<jsp:include page="/footer.jsp"></jsp:include>
	<script>
		$("#score").val(1);

		//为li元素注册mouseover事件
		$('.comment>li').mouseover(function () {
			//1.它本身变亮
			$(this).addClass('light');

			//2.它前面的变亮
			$(this).prevAll("li").addClass('light');

			//3.它后面变暗
			$(this).nextAll('li').removeClass('light');
		});

		//为li元素注册mouseout事件
		$('.comment>li').mouseout(function () {
		//1.先全部清除变亮
			$('.comment').find('li').removeClass('light');

			//2.有点击过的星星变亮
			$('.comment>li[light=on]').addClass('light');

			//3.有点击过的星星前面的所有星星也变亮
			$('.comment>li[light=on]').prevAll('li').addClass('light');
		});

		//为li元素注册click事件
		$('.comment>li').click(function () {
			//1.点击过的星星添加light属性
			$(this).attr('light','on');

			//2.点击过的星星其他兄弟移除light属性
			$(this).siblings('li').removeAttr('light');
			var score=0;

			$("li.light").each(function () {
				score++;
			});
			$("#score").val(score);
		});
    </script>
</body>
</html>
