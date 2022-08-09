<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>阳阳商城——购物车</title>
    <script src="js/jquery-1.12.4.js"></script>
    <script src="js/jquery.color.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/cart.css">
    <link href="css/shopping_cart_new.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        $(function () {
            //点击复选框全选或全不选效果
            $(".checkAll").click(function () {
                //1.获取全选复选或者全不选效果
                var checkState = $(this).is(":checked");

                //2.获取下面的所有复选择框，并且设置他们的checked属性=上面那个checked
                $(".cartItem").prop("checked", checkState);
                calculatePrice();
            });

            //判断是否全选
            $(".cartItem").click(function () {
                var flag = true;
                $(".cartItem").each(function (i, e) {
                    if ($(e).is(":checked") == false) {
                        flag = false;
                    }
                });
                $(".checkAll").prop("checked", flag);
                calculatePrice();
            });

            //点击-号
            $(".num_minus").click(function () {
                //1.获取它右边的input的值
                var quantity = $(this).next().text();

                //2,-1
                quantity--;

                //3.重新给右边的input赋值
                if (quantity > 0) {
                    $(this).next().text(quantity);
                } else {
                    alert("数量不能为0")
                }

                calculatePrice();
                //获取商品id
                var proid = $(this).parent().parent().find(".cartItem").val();

                //修改后台数据
                //updateCart(proid,quantity);
            });


            //选择+号
            $(".num_add").click(function () {
                //1.获取它左边的input的值
                var quantity = $(this).prev().text();

                //获得库存
                var pnum = $(this).next().val();

                if (quantity < pnum) {
                    quantity++;
                } else {
                    alert("库存不足！");
                    return;
                }

                //重新给左边的input赋值
                $(this).prev().text(quantity);
                calculatePrice();

                //获取商品id
                var proid = $(this).parent().parent().find(".cartItem").val();

                //修改后台数据
                //updateCart(proid,quantity);
            });

            //计算总价与小计
            calculatePrice();

        });

        //计算总价与小计
        function calculatePrice() {
            //1.获取所有有id属性的tr
            //2.进行遍历，数量X价格，赋值给小记
            var amount = 0;
            $("tr.selected").each(function () {
                //1.数量
                var quantity = $(this).find(".buy_num").text();

                //2.价格
                var price = $(this).find(".cart_price").text();

                //3.数量X数量赋值给小计那个单元格<td></td>
                $(this).find(".subtotal").text(quantity * price);

                //4.对所有复选框进行遍历，有选中的就累加，否则不累加
                var flag = $(this).find(".cartItem").is(":checked");
                if (flag == true) {
                    amount += quantity * price;
                }
            });
            $("#total").text(amount);
        }

        //点击右侧删除链接
        function delProFromCart(obj, id) {
            if (confirm("你确定要删除该商品吗？")) {
                $(obj).parent().parent().remove();
                calculatePrice();
            }
        }

        //删除所选
        function delSelect() {
            $(".cartItem").each(function (i, e) {
                if ($(e).is(":checked") == true) {
                    var proid = $(e).val();
                    $(this).parent().parent().remove();
                }
            });
            calculatePrice();
        }

        //清空购物车
        function clearCart() {
            if (confirm("你确定要情况购物车吗？")) {
                location.href = "clearCart";
            }
            ;
        }


        //修改购物车
        function updateCart(proid, quantity) {
            $.ajax({
                url: "updateCart",
                type: "get",
                data: {
                    "proid": proid,
                    "quantity": quantity
                }
            });
        }


    </script>
</head>


<body>

<%-- <!-- 引入头部 -->
<jsp:include page="/header.jsp" ></jsp:include> --%>


<div class="nav clear"></div>
<!-- 123 -->
<div class="logo_line">
    <div class="w960">
        <div class="shopping_procedure">
            <span class="current">我的购物车</span><span>填写订单</span><span>完成订单</span>
        </div>
        <div class="logo">
            <a href="index.jsp"><img
                    style="width: 140px; height: 70px; position: relative; top: -5px"
                    ; src="images/jd.png" alt=""></a>
        </div>
    </div>
</div>
<div class="add_line" id="district">
    <div class="w960">
        <div class="address" id="dp_adress">
            <span class="icon_adr">&nbsp;</span>配送地址：
            <div class="select_add">
                <span class="text fn-select-address">北京市</span>
            </div>
            <!--<a href="#" class="tip"></a>-->
            <span class="tip_c" style="display: none;">针对不同配送地址，您的货物可能出现缺货或无货状态，敬请谅解。</span>
        </div>
    </div>
</div>
<!--头部条-->
<c:if test="${!empty cart}">
    <div class="container" id="hasCart">
        <div class="row">
            <div style="margin: 0 auto; margin-top: 10px; width: 1200px;">
                <strong style="font-size: 16px; margin: 5px 0;"><h3>&nbsp;</h3></strong>
                <table class="table cart_table">
                    <tbody>
                    <tr
                            style="background-color: #f3f3f3; height: 40px; text-align: center; border: 1px solid #e5e5e5;">
                        <!-- 								<th style="padding-left: 30px"><input type="checkbox" id="selectAll"/>全选</th> -->
                        <th style="padding-left: 30px">阳阳自营</th>
                        <th style="padding-left: 20px">图片</th>
                        <th style="padding-left: 56px">商品名称</th>
                        <th style="padding-left: 30px">价格</th>
                        <th style="padding-left: 30px">数量</th>
                        <th style="padding-left: 30px">合计</th>
                        <th>操作</th>
                    </tr>
                    <!-- 循环开始 -->
                    <c:forEach items="${cart}" var="entry">
                        <tr
                                style="border-bottom: 1px solid #fff; background-color: white; border: 1px solid #e5e5e5;"
                                class="selected">
                            <td style="padding-left: 36px" width="7%"><input
                                    class="cartItem" type="checkbox" value="${entry.key.id}"></td>
                            <td width="6%"><input type="hidden" name="id" value="22">
                                <a href="proDetail?proid=${entry.key.id }" target="_blank"><img
                                        src="${pageContext.request.contextPath}/${entry.key.pImg}"
                                        width="70" height="60"></a></td>

                            <td width="10%" style="text-align: center;"><a
                                    style="cursor: pointer; text-decoration: none" target="_blank">${entry.key.pSn}</a>
                            </td>
                            <td width="10%" style="padding-left: 20px;">￥<span
                                    class="cart_price">${entry.key.iPrice}</span></td>
                            <td width="10%" style="padding-left: 36px;"><img
                                    src="images/taobao_minus.jpg" class="num_minus"/>
                                &nbsp;&nbsp;<span class="buy_num">${entry.value}</span>&nbsp;&nbsp;
                                <img src="images/taobao_adding.jpg" class="num_add"/> <input
                                        type="hidden" value="${entry.key.pNum }"/></td>
                            <td width="15%" style="padding-left: 30px;"><span
                                    class="subtotal">${entry.key.iPrice*entry.value}</span></td>
                            <td width="5%"><a href="javascript:void(0);"
                                              onclick="delProFromCart(this,'${entry.key.id}')"
                                              class="delete">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>收藏</a></td>
                        </tr>
                    </c:forEach>
                    <!-- 循环结束 -->
                    </tbody>
                </table>
            </div>
        </div>

        <div id="float_bar" style="margin-right: 10px; margin-top: 10px;">

            <div style="text-align: right;">
                <input style="margin-left: 19px; margin-right: 2px;"
                       type="checkbox" class="checkAll pull-left"> <span
                    class="pull-left checkAll">[全选/全不选]</span> <em
                    style="color: #ff6600;"></em>&nbsp; <i
                    style="position: relative; left: -100px;">商品金额:</i> <strong
                    style="color: #ff6600; position: relative; left: -100px;">￥<font
                    id="total" color="red">0</font>元
            </strong>
            </div>

            <div
                    style="text-align: right; margin-top: 10px; margin-bottom: 10px; position: relative; top: -35px; left: 55px;">
                     <%--<a href="${pageContext.request.contextPath}/pro?method=submitMsoXQ">--%>
                <input type="button" width="100" value="结   算" name="submit" id="toOrder" onclick="toOrder()"
                       border="0"
                       style="background-color: #ff4646; border-color: #ff4a00; color: #fff; height: 35px; width: 100px; font-size: 18px; font-weight: 800">
             <%--  </a>--%>
            </div>
            <a class="btn btn-info btn-sm" style="color: white;"
               href="javascript:void(0);" onclick="delSelect()">删除所选</a>&nbsp;&nbsp;&nbsp;
            <a class="btn btn-danger btn-sm" style="color: white;"
               href="javascript:void(0);" onclick="clearCart()">清空购物车</a>
        </div>
    </div>
</c:if>


<!-- empty判断是否为空取决于是否有内容 -->
<c:if test="${empty cart}">
    <div class="container-fluid" id="page_main">
        <div class="row" style="margin-right: 0; margin-left: 111px;">
            <div class="col-md-3">
					<span style="font-size: 26px"
                          class="glyphicon glyphicon-shopping-cart"></span>
                <h3 style="display: inline">我的购物车</h3>
            </div>
        </div>
        <div class="cart_empty"
             style="position: relative; left: 320px; top: 20px;">
            <div class="content">
                <h2>您的购物车还是空的！</h2>
                <a class="btn_primary btn_goshoping" href="index.jsp">马上去购物</a>
            </div>

        </div>
    </div>


    <!-- 商品推荐 -->
    <div class="shopping_ads" id="J_weinituijian"
         style="position: relative; left: 300px; width: 875px;">
        <div class="ads_tab">为您推荐</div>
        <div class="ads_box">
            <a href="javascript:;" class="arrow left"></a><a href="javascript:;"
                                                             class="arrow right"></a>
            <div class="show_list">
                <div class="big_box">
                    <ul class="show_box line2">
                        <li><a href="javascript:void(0)" class="gpic" title=""><img
                                src="images/101.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">vivo X20
                                    王者荣耀限量版 双摄美颜游戏手机 6GB</a>
                            </p>
                            <p>
                                <span class="price">¥2577.50</span>
                            </p> <a href="javascript:;" data-item="23427436"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>28257</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/102.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">vivo X21 全面屏
                                    双摄美颜拍照手机 6GB+128GB </a>
                            </p>
                            <p>
                                <span class="price">¥3582.30</span>
                            </p> <a href="javascript:;" data-item="21005473"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>67237</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/103.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">华为 HUAWEI nova
                                    2S 全面屏四摄 4GB +64GB</a>
                            </p>
                            <p>
                                <span class="price">¥2340.80</span>
                            </p> <a href="javascript:;" data-item="23828979"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>1857</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/104.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">华为（HUAWEI）
                                    荣耀10 手机 幻影蓝 全网通 6GB</a>
                            </p>
                            <p>
                                <span class="price">¥3524.90</span>
                            </p> <a href="javascript:;" data-item="23967348"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>15960</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/105.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">猫人(MIIOW)男装短袖T恤内搭打底衫修身圆领简约</a>
                            </p>
                            <p>
                                <span class="price">¥75.00</span>
                            </p> <a href="javascript:;" data-item="23444350"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>22020</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/106.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">美的（Midea）电饭煲
                                    微压蒸汽阀 24小时预约 </a>
                            </p>
                            <p>
                                <span class="price">¥525.20</span>
                            </p> <a href="javascript:;" data-item="25246372"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>17225</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/110.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">长虹(CHANGHONG)2匹
                                    变频 0.1度控温 空调柜</a>
                            </p>
                            <p>
                                <span class="price">¥3237.50</span>
                            </p> <a href="javascript:;" data-item="23939834"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>5188</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title=" #"><img
                                src="images/107.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank"> 统帅（Leader）海尔
                                    455升 风冷无霜对开门冰箱</a>
                            </p>
                            <p>
                                <span class="price">¥11119.90</span>
                            </p> <a href="javascript:;" data-item="25230126"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>11129</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/108.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">盐津铺子 休闲零食
                                    送女友零食大礼包1001g 18种</a>
                            </p>
                            <p>
                                <span class="price">¥96.70</span>
                            </p> <a href="javascript:;" data-item="21114193"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>2056</span>位用户评价
                                </a>
                            </p></li>
                        <li><a href="javascript:void(0)" class="gpic" title="#"><img
                                src="images/109.jpg" height="150" width="150"></a>
                            <p>
                                <a href="javascript:void(0)" target="_blank">扬子（YAIR）3匹
                                    一级能效 变频 智能 无氟环保 冷暖</a>
                            </p>
                            <p>
                                <span class="price">¥2500.10</span>
                            </p> <a href="javascript:;" data-item="22924035"
                                    class="btn_add fn-btn-add">加入购物车</a>
                            <p class="pl">
                                <a target="_blank" href="javascript:void(0)">已有<span>62284</span>位用户评价
                                </a>
                            </p></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</c:if>
<!-- 引入js -->
<!-- <script src="js/cart.js"></script> -->
<script>
    function toOrder() {
        //1.获得总金额
        var amount=$("#total").text();
        if (amount==0){
            alert("请选择商品");
            return;
        }

        //2.获取选中的id号，并接成类似1,3,5这样的字符串
        var ids='';
        $(".cartItem").each(function (i,e) {
            if ($(e).is(":checked")==true){
                //要先修改后台数据
                var proid=$(e).val();
                ids=ids+","+proid;
            }
        });  //,1,3,5
        ids=ids.substring(1);  //去除第一个,号  1,3,5

        //异步请求获得orderCart(cart的子集)，再跳转到mso_info.jsp
        location.href="orderCart?ids="+ids+"&amount="+amount;
    }

</script>
<!-- 引入底部 -->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
.
