<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>商品列表</title>
    <link href="css/list.css" rel="stylesheet">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">


    </script>
</head>
<body>
<!-- 引入头部 -->
<jsp:include page="/header.jsp"></jsp:include>
<!-- 商品信息 -->
<div class="head">
    <div class="logo fl">
        <a href="index.jsp"><img src="images/jd.png"
                                 style="position: relative;top:5;left:20;width: 154;height: 70"></a>
    </div>
    <div class="search fl" style="position: relative;top: 30;left: 50;">
        <div class="sch-form">
            <input type="text" class="stext"> <input type="button"
                                                     class="sbtn" value="搜索" onclick="">
            <div id="context1"
                 style="display: none; width: 450px; background-color: white; position: absolute; overflow: scroll; left: 0px; top: 32px; z-index: 100; border: 1px #ccc solid;"></div>
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
    <div class="cart fr" style="position: relative;top: 30;left: -40;">

        <img alt="阳阳商城" src="images/ma.png" width="100px" ;height="100px" ;>

    </div>
</div>
<br/>
<br/>
<div class="dtw">
    <div class="dtww clear">
        <div class="dt fl">
            <a href="javascript:void(0)">全部商品分类</a>
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
<!-- 详情 -->
<div class="content clear">
    <div class="left">

        <div class="sidebar">
            <h2>店连店热卖</h2>
            <ul class="hotbox">
                <li class="hotlist">
                    <div class="hotpic">
                        <a href="#"><img width="150" src="proimages/110.png"></a>
                    </div>
                    <div class="hotinfo">
                        <div class="hot-name">
                            <a href="#">地中海灯饰电风扇吊灯餐厅卧室家用电扇灯具</a>
                        </div>
                        <div class="hot-price">
                            <a href="#"><i>¥</i><span>1656.00</span></a>
                        </div>
                    </div>
                </li>
                <li class="hotlist">
                    <div class="hotpic">
                        <a href="#"><img width="150" src="proimages/120.png"></a>
                    </div>
                    <div class="hotinfo">
                        <div class="hot-name">
                            <a href="#">长方形水晶灯LED吸顶灯大气客厅灯卧室餐厅灯欧式水晶灯</a>
                        </div>
                        <div class="hot-price">
                            <a href="#"><i>¥</i><span>5178.00</span></a>
                        </div>
                    </div>

                </li>
            </ul>
        </div>
    </div>
    <div class="right">
        <div class="sidebar rec"></div>
        <div class="filter">
            <dl>
                <dt>阳阳渠道：</dt>
                <dd class="list">
                    <ul>
                        <li><a href="">阳阳自营</a></li>

                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>价格：</dt>
                <dd class="list">
                    <ul>
                        <li><a href="shopping?maxPrice=50&cid=${cid}&pName=${pName}&pSn=${pSn}">50元以下</a></li>
                        <li><a href="shopping?minPrice=50&maxPrice=100&cid=${cid}&pName=${pName}&pSn=${pSn}">50-100元</a>
                        </li>
                        <li>
                            <a href="shopping?minPrice=100&maxPrice=200&cid=${cid}&pName=${pName}&pSn=${pSn}">100-200元</a>
                        </li>
                        <li>
                            <a href="shopping?minPrice=200&maxPrice=1000&cid=${cid}&pName=${pName}&pSn=${pSn}">200-1000元</a>
                        </li>
                        <li><a href="shopping?minPrice=1000&maxPrice=10000&cid=${cid}&pName=${pName}&pSn=${pSn}">1000-10000元</a>
                        </li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>品牌：</dt>
                <dd class="list">
                    <ul>
                        <li>

                            <c:if test="${not empty pList}">
                                <c:forEach items="${pList}" var="pName">
                                    <a href='shopping?cid=${cid}&pName=${pName}&pSn=${pSn}&minPrice=${minPrice}&maxPrice=${maxPrice}'>${pName}</a>
                                </c:forEach>
                            </c:if>

                        </li>
                    </ul>
                </dd>
            </dl>
        </div>
        <div class="sorbar"></div>
        <br> <br>
        <div class="goods-list">
            <ul class="list clear">
                <c:if test="${not empty page.list}">
                    <c:forEach items="${page.list}" var="item">
                        <li>
                            <div class="g">
                                <div class="g-pic">
                                    <a href="proDetail?proid=${item.id}"><img
                                            src="${pageContext.request.contextPath}/${item.xqImg}"></a>
                                </div>
                                <p class="g-name">
                                    <a href="proDetail?proid=${item.id}"
                                       style="color: red">${item.pName}</a> <a
                                        href="proDetail?proid=${item.id}">${item.pSn}</a>
                                </p>
                                <p class="g-price">
                                    <span class="price">￥<em>${item.iPrice}</em></span><span
                                        class="del-price">￥${item.mPrice}</span>&nbsp;&nbsp;已售：${item.isHot}件
                                        <%-- <span class="bar">已售：${item.isHot}件</span> --%>
                                </p>
                                <div class="seller-info">
                                    <p>
                                        <span>商品评价数：</span><span><a href="#">999条</a></span>
                                    </p>
                                    <p>
                                        <span>卖家好评率：</span><span>90%</span>
                                    </p>
                                    <p>
                                        <span>累积信用度：</span><span class="heart"></span>
                                    </p>
                                    <p>
                                        <span>描述相符度：</span><span>6分</span>
                                    </p>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </c:if>
            </ul>
        </div>
        <div class="pagebox">
            <div class="pagination">
                <tfoot>
                <tr>
                    <td colspan="4" align="center"><a
                            href="shopping?pi=1&cid=${cid}&pName=${pName}&pSn=${pSn}&minPrice=${minPrice}&maxPrice=${maxPrice}">首页</a><a
                            href="shopping?pi=${page.pageNum-1}&cid=${cid}&pName=${pName}&pSn=${pSn}&minPrice=${minPrice}&maxPrice=${maxPrice}"
                            onclick="return ${page.pageNum-1>=1}">上一页</a> <span>${page.pageNum}/${page.pages}</span>
                        <a href="shopping?pi=${page.pageNum+1}&cid=${cid}&pName=${pName}&pSn=${pSn}&minPrice=${minPrice}&maxPrice=${maxPrice}"
                           onclick="return ${page.pageNum+1<=page.pages}">下一页</a> <a
                                href="shopping?pi=${page.pages}&cid=${cid}&pName=${pName}&pSn=${pSn}&minPrice=${minPrice}&maxPrice=${maxPrice}">尾页</a>

                    </td>
                </tr>
                </tfoot>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        //鼠标经过商品列表出现商家信息
        function ghover(a, b) {
            $(a).children().hover(function () {

                $(this).find(b).css('display', 'block');
            }, function () {
                $(this).find(b).css('display', 'none');
            });
        }

        ghover(".list", ".seller-info");
        //树形结构折叠展开
        $(".category dt").toggle(function () {
            $(this).addClass("on");
            $(".sub").css('display', 'none');
        }, function () {
            $(this).removeClass("on");
            $(".sub").css('display', 'block');
        });
    });


    $(".stext")
        .keyup(
            function() {
                var content = $(this).val();
                //如果当前搜索内容为空，无须进行查询

                if (content == "") {
                    $("#context1").css("display", "none");
                    return;
                }
                //由于浏览器的缓存机制 所以我们每次传入一个时间
                var time = new Date().getTime();
                $
                    .ajax({
                        type : "get",
                        //新建一个名为findBooksAjaxServlet的servlet
                        url : "findProNames",
                        data : {
                            proname : content,
                            time : time
                        },//"info="+content+"&time="+time
                        dataType : 'json',
                        success : function(data) {
                            //拼接html
                            //var res=data.split(",");
                            var html = "";
                            for (var i = 0; i < data.length; i++) {
                                //每一个div还有鼠标移出、移入点击事件
                                html += "<div class='item1' onmouseout='changeBackColor_out(this)' onmouseover='changeBackColor_over(this)' style='line-height:25px;' onmousedown='setSearch_onclick(this)'>"
                                    + data[i]
                                    + "</div>";
                            }

                            $("#context1").html(html);
                            //显示为块级元素
                            $("#context1").css("display",
                                "block");

                        }
                    });
            });
    // $("#context1").on("click","div",changeBackColor_over(div));
    //鼠标移动到内容上
    function changeBackColor_over(div) {
        $(div).css("background-color", "#CCCCCC");
    }

    //鼠标离开内容
    function changeBackColor_out(div) {
        $(div).css("background-color", "");
    }


    //将点击的内容放到搜索框
    function setSearch_onclick(div) {
        //alert("aaa");
        $(".stext").val(div.innerText);

        $("#context1").css("display", "none");
    }

    $(".stext").blur(function() {
        $("#context1").css("display", "none");
    });

</script>
<!-- 引入底部 -->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
