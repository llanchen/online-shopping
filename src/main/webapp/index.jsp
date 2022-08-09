<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>阳阳商城首页</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/pstyle.css">
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/scripts.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/ds.js"></script>
    <style>
        /*1.2F图片大小位置*/
        .f2picture {
            position: relative;
            left: 60px;
            width: 180px;
            height: 180px;
        }

        .sy {
            font-weight: 900;
            color: rebeccapurple;
            font-size: 16px;
        }

        .ls1 {
            color: cornflowerblue
        }

        .ls2 {
            color: #e680d3
        }

        #c {
            color: white;
        }
    </style>
    <script type="text/javascript">
        function search() {
            var gname = $(".stext").val();
            //gname=encodeURIComponet(gname);
            location.href = "shopping?pSn=" + gname;

        }
    </script>
</head>

<body>
<!-- 引入头部 -->
<jsp:include page="/header.jsp"></jsp:include>
<%-- <c:import url="/header.jsp"></c:import>  --%>
<%--<%@ include file="/header.jsp" %> --%>
<!-- 商品信息 -->
<div class="head">
    <div class="logo fl">
        <a href="index1.jsp"><img src="images/xx.jpg"
                                  style="position: relative; top: 5; left: 20; width: 110; height: 70"></a>
    </div>
    <div class="search fl" style="position: relative; top: 30; left: 50;">
        <div class="sch-form">
            <input type="text" class="stext"> <input type="button" class="sbtn" value="搜索" onclick="search()"
                                                     style="border: 2px solid #e61415; padding: 0% 2% 0% 5%;">
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

    <div class="cart fr" style="position: relative; top: 30; left: -40;">
        <img alt="阳阳商城" src="images/ma.png" width="100px" ;height="100px">
        <div class="ds-reward-stl">
            <button id="dsRewardBtn" onclick="PaymentUtils.show();">赏</button>
        </div>
    </div>
</div>
<br />
<br />
<div class="dtw">
    <div class="dtww clear">
        <div class="dt fl">
            <a href="javascript:void(0)">全部商品分类</a>
        </div>
        <ul class="navbar fl">
            <li><a href="index1.jsp" class="sy">首页</a></li>
            <li><a href="shopping?cid=32" class="sy">食品饮料</a></li>
            <li><a href="shopping?cid=5" class="sy">特价手机</a></li>
            <li><a href="shopping?cid=11" class="sy">品牌闪购</a></li>
            <li><a href="shopping?cid=8" class="sy">电器城</a></li>
            <li><a href="shopping?cid=31" class="sy">生鲜</a></li>
            <li><a href="http://a2.rabbitpre.com/m2/aUe1ZicePv" class="sy">合伙人招募</a></li>
        </ul>
    </div>
</div>
<div class="nav clear">
    <div class="category clear">
        <div class="dd">
            <div class="dd-inner">
                <ul>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">家具/ 家纺/ 家装</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=1">家居家纺 <i> > </i></a> <a
                                            href="shopping?cid=2">家具馆 <i> > </i></a> <a
                                            href="shopping?cid=3">卫浴馆 <i> > </i></a> <a
                                            href="shopping?cid=4">装修馆 <i> > </i></a>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>家纺</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">床品套件</a> <a
                                                href="javascript:void(0)">被子</a> <a
                                                href="javascript:void(0)">蚊帐</a> <a
                                                href="javascript:void(0)">洗衣机</a> <a
                                                href="javascript:void(0)">毛巾/浴巾</a> <a
                                                href="javascript:void(0)">地毯/地垫</a> <a
                                                href="javascript:void(0)">毛巾被</a> <a
                                                href="javascript:void(0)">抱枕</a> <a
                                                href="javascript:void(0)">床单</a> <a
                                                href="javascript:void(0)">被罩</a> <a
                                                href="javascript:void(0)">蚕丝被</a> <a
                                                href="javascript:void(0)">洗衣机</a> <a
                                                href="javascript:void(0)">餐桌布艺</a> <a
                                                href="javascript:void(0)">厨具</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>家具</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">客厅成套家具</a> <a
                                                href="javascript:void(0)">卧室成套家具</a> <a
                                                href="javascript:void(0)">儿童成套家具</a> <a
                                                href="javascript:void(0)">书房家具</a> <a
                                                href="javascript:void(0)">沙发</a> <a
                                                href="javascript:void(0)">床</a> <a
                                                href="javascript:void(0)">床垫</a> <a
                                                href="javascript:void(0)">电视柜</a> <a
                                                href="javascript:void(0)">电脑椅</a> <a
                                                href="javascript:void(0)">电脑桌</a> <a
                                                href="javascript:void(0)">阳台</a> <a
                                                href="javascript:void(0)">户外</a> <a
                                                href="javascript:void(0)">茶几</a> <a
                                                href="javascript:void(0)">酒柜</a> <a
                                                href="javascript:void(0)">置物架</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>灯具灯饰</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">水晶灯</a> <a
                                                href="javascript:void(0)">客厅灯</a> <a
                                                href="javascript:void(0)">卧室灯</a> <a
                                                href="javascript:void(0)">吸顶灯</a> <a
                                                href="javascript:void(0)">灯具套餐</a> <a
                                                href="javascript:void(0)">吊灯</a> <a
                                                href="javascript:void(0)">台灯</a> <a
                                                href="javascript:void(0)">集成吊顶</a> <a
                                                href="javascript:void(0)">筒灯</a> <a
                                                href="javascript:void(0)">射灯</a> <a
                                                href="javascript:void(0)">灯带</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>厨房卫浴</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">花酒</a> <a
                                                href="javascript:void(0)">水槽</a> <a
                                                href="javascript:void(0)">马桶</a> <a
                                                href="javascript:void(0)">坐便器盖板</a> <a
                                                href="javascript:void(0)">龙头</a> <a
                                                href="javascript:void(0)">地漏</a> <a
                                                href="javascript:void(0)">浴室柜</a> <a
                                                href="javascript:void(0)">卫浴挂件</a> <a
                                                href="javascript:void(0)">浴缸</a> <a
                                                href="javascript:void(0)">淋浴花洒</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>五金建材</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">插座</a> <a
                                                href="javascript:void(0)">开关</a> <a
                                                href="javascript:void(0)">指纹锁</a> <a
                                                href="javascript:void(0)">电钻</a> <a
                                                href="javascript:void(0)">工具箱</a> <a
                                                href="javascript:void(0)">电动晒衣架</a> <a
                                                href="javascript:void(0)">监控摄像头</a> <a
                                                href="javascript:void(0)">电线</a> <a
                                                href="javascript:void(0)">接线板</a> <a
                                                href="javascript:void(0)">门锁</a> <a
                                                href="javascript:void(0)">家具五金</a> <a
                                                href="javascript:void(0)">手动工具</a> <a
                                                href="javascript:void(0)">电动工具</a> <a
                                                href="javascript:void(0)">油漆涂料</a> <a
                                                href="javascript:void(0)">开关插座套装</a> <a
                                                href="javascript:void(0)">墙纸壁纸</a> <a
                                                href="javascript:void(0)">瓷砖</a> <a
                                                href="javascript:void(0)">地板</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>器械</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">制氧机</a> <a
                                                href="javascript:void(0)">血糖仪</a> <a
                                                href="javascript:void(0)">体温计</a> <a
                                                href="javascript:void(0)">呼吸机</a> <a
                                                href="javascript:void(0)">血压计</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">手机/ 运营商/ 智能数码</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=5">手机频道<i> > </i></a> <a
                                            href="shopping?cid=6">智能数码<i> > </i></a> <a
                                            href="shopping?cid=7">以旧换新<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>手机通讯</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">全部手机</a> <a
                                                href="javascript:void(0)">iphone</a> <a
                                                href="javascript:void(0)">小米</a> <a
                                                href="javascript:void(0)">华为</a> <a
                                                href="javascript:void(0)">三星</a> <a
                                                href="javascript:void(0)">魅族</a> <a
                                                href="javascript:void(0)">oppo</a> <a
                                                href="javascript:void(0)">vivo</a> <a
                                                href="javascript:void(0)">美图</a> <a
                                                href="javascript:void(0)">努比亚</a> <a
                                                href="javascript:void(0)">正品好货</a> <a
                                                href="javascript:void(0)">荣耀</a> <a
                                                href="javascript:void(0)">手机维修</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>手机配件</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">手机壳</a> <a
                                                href="javascript:void(0)">手机贴膜</a> <a
                                                href="javascript:void(0)">手机存储卡</a> <a
                                                href="javascript:void(0)">数据线</a> <a
                                                href="javascript:void(0)">充电器</a> <a
                                                href="javascript:void(0)">手机耳机</a> <a
                                                href="javascript:void(0)">手机电池</a> <a
                                                href="javascript:void(0)">苹果周边</a> <a
                                                href="javascript:void(0)">移动电源</a> <a
                                                href="javascript:void(0)">蓝牙耳机</a> <a
                                                href="javascript:void(0)">自拍杆</a> <a
                                                href="javascript:void(0)">手机U盘</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>智能设备</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">智能手环</a> <a
                                                href="javascript:void(0)">智能手表</a> <a
                                                href="javascript:void(0)">体感车</a> <a
                                                href="javascript:void(0)">VR眼睛</a> <a
                                                href="javascript:void(0)">智能摄像头</a> <a
                                                href="javascript:void(0)">智能家居</a> <a
                                                href="javascript:void(0)">智能门锁</a> <a
                                                href="javascript:void(0)">无人机</a> <a
                                                href="javascript:void(0)">智能机器人</a> <a
                                                href="javascript:void(0)">只能健康检测</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>电子教育</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">儿童手表</a> <a
                                                href="javascript:void(0)">小天才儿童手表</a> <a
                                                href="javascript:void(0)">点读机</a> <a
                                                href="javascript:void(0)">学习机</a> <a
                                                href="javascript:void(0)">电子词典</a> <a
                                                href="javascript:void(0)">复读机</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>影音电子</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">运动耳机</a> <a
                                                href="javascript:void(0)">耳机</a> <a
                                                href="javascript:void(0)">耳麦</a> <a
                                                href="javascript:void(0)">MP3</a> <a
                                                href="javascript:void(0)">MP4</a> <a
                                                href="javascript:void(0)">收音机</a> <a
                                                href="javascript:void(0)">录音笔</a> <a
                                                href="javascript:void(0)">数码相框</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>营业厅</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">合约机</a> <a
                                                href="javascript:void(0)">选号码</a> <a
                                                href="javascript:void(0)">办套餐</a> <a
                                                href="javascript:void(0)">充话费/流量</a> <a
                                                href="javascript:void(0)">办宽带</a> <a
                                                href="javascript:void(0)">中国移动</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>

                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">空调/ 电视/ 冰箱/ 洗衣机</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=8">电器城 <i> > </i></a> <a
                                            href="shopping?cid=9">空调频道<i> > </i></a> <a
                                            href="shopping?cid=10">冰箱/洗衣机<i> > </i></a> <a
                                            href="shopping?cid=11">液晶电视<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>空调</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">壁挂式空调</a> <a
                                                href="javascript:void(0)">变频空调</a> <a
                                                href="javascript:void(0)">合资空调</a> <a
                                                href="javascript:void(0)">中央空调</a> <a
                                                href="javascript:void(0)">自清洁空调</a> <a
                                                href="javascript:void(0)">0元安装空调</a> <a
                                                href="javascript:void(0)">电器购物街</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>冰箱</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">对开门</a> <a
                                                href="javascript:void(0)">多门</a> <a
                                                href="javascript:void(0)">十字对开</a> <a
                                                href="javascript:void(0)">三门</a> <a
                                                href="javascript:void(0)">双门</a> <a
                                                href="javascript:void(0)">风冷(无霜)</a> <a
                                                href="javascript:void(0)">西门子</a> <a
                                                href="javascript:void(0)">海尔</a> <a
                                                href="javascript:void(0)">美的</a> <a
                                                href="javascript:void(0)">三星</a> <a
                                                href="javascript:void(0)">松下</a> <a
                                                href="javascript:void(0)">海信</a> <a
                                                href="javascript:void(0)">博世</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>冷柜</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">卧室冷柜</a> <a
                                                href="javascript:void(0)">商用展示柜</a> <a
                                                href="javascript:void(0)">冰吧</a> <a
                                                href="javascript:void(0)">酒柜</a> <a
                                                href="javascript:void(0)">立式冷柜</a> <a
                                                href="javascript:void(0)">点菜柜</a> <a
                                                href="javascript:void(0)">厨房操作台</a> <a
                                                href="javascript:void(0)">海鲜柜</a> <a
                                                href="javascript:void(0)">美的</a> <a
                                                href="javascript:void(0)">星星</a> <a
                                                href="javascript:void(0)">海尔</a> <a
                                                href="javascript:void(0)">美菱</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>洗衣机</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">滚筒</a> <a
                                                href="javascript:void(0)">洗干一体机</a> <a
                                                href="javascript:void(0)">波轮</a> <a
                                                href="javascript:void(0)">大容量</a> <a
                                                href="javascript:void(0)">迷你洗衣机</a> <a
                                                href="javascript:void(0)">变频(无霜)</a> <a
                                                href="javascript:void(0)">海尔</a> <a
                                                href="javascript:void(0)">西门子</a> <a
                                                href="javascript:void(0)">美的</a> <a
                                                href="javascript:void(0)">三星</a> <a
                                                href="javascript:void(0)">松下</a> <a
                                                href="javascript:void(0)">海信</a> <a
                                                href="javascript:void(0)">博世</a> <a
                                                href="javascript:void(0)">LG</a> <a
                                                href="javascript:void(0)">小天鹅</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>电视影音</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">平板电视</a> <a
                                                href="javascript:void(0)">曲面电视</a> <a
                                                href="javascript:void(0)">超薄电视</a> <a
                                                href="javascript:void(0)">4k超高清</a> <a
                                                href="javascript:void(0)">智能电视</a> <a
                                                href="javascript:void(0)">量子电视机</a> <a
                                                href="javascript:void(0)">OLED电视</a> <a
                                                href="javascript:void(0)">55英寸</a> <a
                                                href="javascript:void(0)">65英寸</a> <a
                                                href="javascript:void(0)">海信</a> <a
                                                href="javascript:void(0)">PPTV</a> <a
                                                href="javascript:void(0)">夏普</a> <a
                                                href="javascript:void(0)">小米</a> <a
                                                href="javascript:void(0)">飞利浦</a> <a
                                                href="javascript:void(0)">家庭影院</a> <a
                                                href="javascript:void(0)">迷你音响</a> <a
                                                href="javascript:void(0)">影音娱乐</a> <a
                                                href="javascript:void(0)">热销尖货清单</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>帮客服务</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">安装服务</a> <a
                                                href="javascript:void(0)">清洗服务</a> <a
                                                href="javascript:void(0)">维修服务</a> <a
                                                href="javascript:void(0)">上门服务卡</a> <a
                                                href="javascript:void(0)">清洗产品</a> <a
                                                href="javascript:void(0)">帮客材配</a> <a
                                                href="javascript:void(0)">帮客蓝狮</a> <a
                                                href="javascript:void(0)">家电医保卡</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">食品/ 酒水/ 生鲜/ 特产</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=12">食品粮油<i> > </i></a> <a
                                            href="shopping?cid=13">门<i> > </i></a> <a
                                            href="shopping?cid=22">手机配件<i> > </i></a>

                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>饮料冲乳</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">纯牛奶</a> <a
                                                href="javascript:void(0)">饮用水</a> <a
                                                href="javascript:void(0)">酸奶</a> <a
                                                href="javascript:void(0)">成人奶粉</a> <a
                                                href="javascript:void(0)">速溶咖啡</a> <a
                                                href="javascript:void(0)">饮料</a> <a
                                                href="javascript:void(0)">谷物麦片</a> <a
                                                href="javascript:void(0)">茶饮料</a> <a
                                                href="javascript:void(0)">碳酸饮料</a> <a
                                                href="javascript:void(0)">蜂蜜</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>进口食品</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">进口牛奶</a> <a
                                                href="javascript:void(0)">进口休闲食品</a> <a
                                                href="javascript:void(0)">进口饼干糕点</a> <a
                                                href="javascript:void(0)">进口葡萄酒</a> <a
                                                href="javascript:void(0)">进口果酒</a> <a
                                                href="javascript:void(0)">进口膨化食品</a> <a
                                                href="javascript:void(0)">进口橄榄油</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>生鲜食品</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">进口牛奶</a> <a
                                                href="javascript:void(0)">禽肉</a> <a
                                                href="javascript:void(0)">蔬菜</a> <a
                                                href="javascript:void(0)">牛肉</a> <a
                                                href="javascript:void(0)">大闸蟹</a> <a
                                                href="javascript:void(0)">羊肉</a> <a
                                                href="javascript:void(0)">水果</a> <a
                                                href="javascript:void(0)">虾类</a> <a
                                                href="javascript:void(0)">鱼类</a> <a
                                                href="javascript:void(0)">猪肉</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>中外名酒</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">白酒</a> <a
                                                href="javascript:void(0)">啤酒</a> <a
                                                href="javascript:void(0)">黄酒</a> <a
                                                href="javascript:void(0)">葡萄酒</a> <a
                                                href="javascript:void(0)">果酒</a> <a
                                                href="javascript:void(0)">米酒</a> <a
                                                href="javascript:void(0)">洋酒</a> <a
                                                href="javascript:void(0)">收藏酒</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>茗茶</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">铁观音</a> <a
                                                href="javascript:void(0)">龙井</a> <a
                                                href="javascript:void(0)">红茶</a> <a
                                                href="javascript:void(0)">乌龙茶</a> <a
                                                href="javascript:void(0)">花草茶</a> <a
                                                href="javascript:void(0)">花果茶</a> <a
                                                href="javascript:void(0)">黑茶</a> <a
                                                href="javascript:void(0)">白茶</a> <a
                                                href="javascript:void(0)">养生茶</a> <a
                                                href="javascript:void(0)">茶礼盒</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>中华特色馆</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">特色大米</a> <a
                                                href="javascript:void(0)">杂粮</a> <a
                                                href="javascript:void(0)">红酒</a> <a
                                                href="javascript:void(0)">枣</a> <a
                                                href="javascript:void(0)">黑木耳</a> <a
                                                href="javascript:void(0)">枸杞</a> <a
                                                href="javascript:void(0)">茗茶</a> <a
                                                href="javascript:void(0)">茶油</a> <a
                                                href="javascript:void(0)">生鲜</a> <a
                                                href="javascript:void(0)">咸鸭蛋</a> <a
                                                href="javascript:void(0)">土鸡蛋</a> <a
                                                href="javascript:void(0)">零食</a> <a
                                                href="javascript:void(0)">坚果</a> <a
                                                href="javascript:void(0)">罐头</a> <a
                                                href="javascript:void(0)">龙口粉丝</a> <a
                                                href="javascript:void(0)">蜂蜜</a> <a
                                                href="javascript:void(0)">黄山毛峰</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">男装/ 女装/ 内衣</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=23">电子教育<i> > </i></a> <a
                                            href="shopping?cid=24">健身器材<i> > </i></a>

                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>当季流行</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">服装嗨购</a> <a
                                                href="javascript:void(0)">卫衣女</a> <a
                                                href="javascript:void(0)">连衣裙</a> <a
                                                href="javascript:void(0)">夹克男</a> <a
                                                href="javascript:void(0)">男士衬衫</a> <a
                                                href="javascript:void(0)">文胸</a> <a
                                                href="javascript:void(0)">牛仔裤</a> <a
                                                href="javascript:void(0)">时髦外套</a> <a
                                                href="javascript:void(0)">牛仔裤女</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>女士上装</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">T血</a> <a
                                                href="javascript:void(0)">雪纺衫</a> <a
                                                href="javascript:void(0)">春夏新品</a> <a
                                                href="javascript:void(0)">荷叶边衬衫</a> <a
                                                href="javascript:void(0)">针织衫</a> <a
                                                href="javascript:void(0)">短外套</a> <a
                                                href="javascript:void(0)">个性卫衣</a> <a
                                                href="javascript:void(0)">牛仔外套</a> <a
                                                href="javascript:void(0)">小西装</a> <a
                                                href="javascript:void(0)">风衣</a> <a
                                                href="javascript:void(0)">皮衣</a> <a
                                                href="javascript:void(0)">毛呢大衣</a> <a
                                                href="javascript:void(0)">羽绒服</a> <a
                                                href="javascript:void(0)">棉服</a> <a
                                                href="javascript:void(0)">羊绒衫</a> <a
                                                href="javascript:void(0)">时尚套装</a> <a
                                                href="javascript:void(0)">当季热卖</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>女士裤装</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">半身裙</a> <a
                                                href="javascript:void(0)">荷叶短裤</a> <a
                                                href="javascript:void(0)">牛仔裤</a> <a
                                                href="javascript:void(0)">皮裤</a> <a
                                                href="javascript:void(0)">小脚裤</a> <a
                                                href="javascript:void(0)">休闲裤</a> <a
                                                href="javascript:void(0)">阔腿裤</a> <a
                                                href="javascript:void(0)">哈伦裤</a> <a
                                                href="javascript:void(0)">打底裤</a> <a
                                                href="javascript:void(0)">包臀库</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>男士上装</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">T血</a> <a
                                                href="javascript:void(0)">POLO衫</a> <a
                                                href="javascript:void(0)">卫衣</a> <a
                                                href="javascript:void(0)">短袖</a> <a
                                                href="javascript:void(0)">针织衫</a> <a
                                                href="javascript:void(0)">夹克</a> <a
                                                href="javascript:void(0)">西装</a> <a
                                                href="javascript:void(0)">牛仔裤</a> <a
                                                href="javascript:void(0)">风衣</a> <a
                                                href="javascript:void(0)">皮衣</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>男士裤装</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">牛仔裤</a> <a
                                                href="javascript:void(0)">休闲裤</a> <a
                                                href="javascript:void(0)">小脚裤</a> <a
                                                href="javascript:void(0)">工装裤</a> <a
                                                href="javascript:void(0)">九分裤</a> <a
                                                href="javascript:void(0)">哈伦裤</a> <a
                                                href="javascript:void(0)">运动裤</a> <a
                                                href="javascript:void(0)">针织裤</a> <a
                                                href="javascript:void(0)">束脚裤</a> <a
                                                href="javascript:void(0)">短裤</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>袜子</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">船袜</a> <a
                                                href="javascript:void(0)">棉袜</a> <a
                                                href="javascript:void(0)">男袜</a> <a
                                                href="javascript:void(0)">女袜</a> <a
                                                href="javascript:void(0)">连裤袜</a> <a
                                                href="javascript:void(0)">瘦身袜</a>

                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">运动/ 户外/ 足球/ 骑行</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=25">五金建材<i> > </i></a> <a
                                            href="shopping?cid=26">洗衣机<i> > </i></a>

                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>运动户外管</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">阿迪达斯</a> <a
                                                href="javascript:void(0)">耐克</a> <a
                                                href="javascript:void(0)">斯凯奇</a> <a
                                                href="javascript:void(0)">new balance</a> <a
                                                href="javascript:void(0)">彪马</a> <a
                                                href="javascript:void(0)">特步</a> <a
                                                href="javascript:void(0)">鸿星尔克</a> <a
                                                href="javascript:void(0)">李宁</a> <a
                                                href="javascript:void(0)">安踏</a> <a
                                                href="javascript:void(0)">匡威</a> <a
                                                href="javascript:void(0)">361°</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>运动鞋</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">跑步鞋</a> <a
                                                href="javascript:void(0)">休闲板鞋</a> <a
                                                href="javascript:void(0)">篮球鞋</a> <a
                                                href="javascript:void(0)">足球鞋</a> <a
                                                href="javascript:void(0)">羽毛球鞋</a> <a
                                                href="javascript:void(0)">训练鞋</a> <a
                                                href="javascript:void(0)">帆布鞋</a> <a
                                                href="javascript:void(0)">运动凉鞋</a> <a
                                                href="javascript:void(0)">运动拖鞋</a> <a
                                                href="javascript:void(0)">涉水鞋</a> <a
                                                href="javascript:void(0)">滑板鞋</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>运动服装</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">卫衣</a> <a
                                                href="javascript:void(0)">运动夹克</a> <a
                                                href="javascript:void(0)">运动长裤</a> <a
                                                href="javascript:void(0)">运动T血</a> <a
                                                href="javascript:void(0)">运动短裤</a> <a
                                                href="javascript:void(0)">POLO衫</a> <a
                                                href="javascript:void(0)">运动套装</a> <a
                                                href="javascript:void(0)">健身裤</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>健身训练</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">跑步机</a> <a
                                                href="javascript:void(0)">健身车</a> <a
                                                href="javascript:void(0)">甩脂机</a> <a
                                                href="javascript:void(0)">仰卧板</a> <a
                                                href="javascript:void(0)">踏步机</a> <a
                                                href="javascript:void(0)">哑铃</a> <a
                                                href="javascript:void(0)">综合训练器</a> <a
                                                href="javascript:void(0)">椭圆机</a> <a
                                                href="javascript:void(0)">臂力器</a> <a
                                                href="javascript:void(0)">动感单车</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>户外装备</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">帐篷</a> <a
                                                href="javascript:void(0)">手电筒</a> <a
                                                href="javascript:void(0)">望远镜</a> <a
                                                href="javascript:void(0)">野炊餐具</a> <a
                                                href="javascript:void(0)">睡袋</a> <a
                                                href="javascript:void(0)">吊床</a> <a
                                                href="javascript:void(0)">户外包</a> <a
                                                href="javascript:void(0)">野餐垫</a> <a
                                                href="javascript:void(0)">便携桌椅床</a> <a
                                                href="javascript:void(0)">军迷用品</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>游泳</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">女士游泳衣</a> <a
                                                href="javascript:void(0)">比基尼</a> <a
                                                href="javascript:void(0)">男士游泳衣</a> <a
                                                href="javascript:void(0)">泳镜</a> <a
                                                href="javascript:void(0)">游泳圈</a> <a
                                                href="javascript:void(0)">游泳包</a> <a
                                                href="javascript:void(0)">泳帽</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">个护化妆/纸品清洁/宠物</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=27">营业厅<i> > </i></a> <a
                                            href="shopping?cid=28">影音电子<i> > </i></a>

                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>口腔护理</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">牙刷</a> <a
                                                href="javascript:void(0)">口罩套装</a> <a
                                                href="javascript:void(0)">漱口水</a> <a
                                                href="javascript:void(0)">儿童牙膏</a> <a
                                                href="javascript:void(0)">牙膏</a> <a
                                                href="javascript:void(0)">口喷</a> <a
                                                href="javascript:void(0)">刷牙套装</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>面部护肤</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">护肤套装</a> <a
                                                href="javascript:void(0)">面膜</a> <a
                                                href="javascript:void(0)">洗面奶</a> <a
                                                href="javascript:void(0)">爽肤水</a> <a
                                                href="javascript:void(0)">乳液</a> <a
                                                href="javascript:void(0)">面霜(眼霜)</a> <a
                                                href="javascript:void(0)">进口护肤</a> <a
                                                href="javascript:void(0)">进口水乳套装</a> <a
                                                href="javascript:void(0)">海外尖货</a> <a
                                                href="javascript:void(0)">卸妆</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>身体护理</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">沐浴露</a> <a
                                                href="javascript:void(0)">润体乳</a> <a
                                                href="javascript:void(0)">护手霜</a> <a
                                                href="javascript:void(0)">足部护理</a> <a
                                                href="javascript:void(0)">瘦身仟体</a> <a
                                                href="javascript:void(0)">洗手液</a> <a
                                                href="javascript:void(0)">手部护理</a> <a
                                                href="javascript:void(0)">防蚊水</a> <a
                                                href="javascript:void(0)">脱毛膏</a> <a
                                                href="javascript:void(0)">走珠</a> <a
                                                href="javascript:void(0)">花露水</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>宠物生活</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">宠物主食</a> <a
                                                href="javascript:void(0)">宠物零食</a> <a
                                                href="javascript:void(0)">宠物玩具</a> <a
                                                href="javascript:void(0)">宠物日用</a> <a
                                                href="javascript:void(0)">出行装备</a> <a
                                                href="javascript:void(0)">宠物服饰</a> <a
                                                href="javascript:void(0)">宠物保健</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>清洁洗护</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">洗衣液</a> <a
                                                href="javascript:void(0)">洗衣粉</a> <a
                                                href="javascript:void(0)">家庭洗洁</a> <a
                                                href="javascript:void(0)">厕所清新剂</a> <a
                                                href="javascript:void(0)">消毒液</a> <a
                                                href="javascript:void(0)">衣物洗护</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">母婴/玩具/车床/童装</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=29">智能设备<i> > </i></a> <a
                                            href="shopping?cid=30">进口食品<i> > </i></a>

                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>奶粉</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">1段</a> <a
                                                href="javascript:void(0)">2段</a> <a
                                                href="javascript:void(0)">3段</a> <a
                                                href="javascript:void(0)">4段</a> <a
                                                href="javascript:void(0)">孕妈奶粉</a> <a
                                                href="javascript:void(0)">特配奶粉</a> <a
                                                href="javascript:void(0)">有机奶粉</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>宝宝尿裤</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">新生儿</a> <a
                                                href="javascript:void(0)">S</a> <a
                                                href="javascript:void(0)">M</a> <a
                                                href="javascript:void(0)">L</a> <a
                                                href="javascript:void(0)">XL</a> <a
                                                href="javascript:void(0)">XXL</a> <a
                                                href="javascript:void(0)">拉拉裤</a> <a
                                                href="javascript:void(0)">宝宝湿巾</a> <a
                                                href="javascript:void(0)">成人尿裤</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>营养辅食</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">米粉</a> <a
                                                href="javascript:void(0)">肉松</a> <a
                                                href="javascript:void(0)">饼干</a> <a
                                                href="javascript:void(0)">果汁果泥</a> <a
                                                href="javascript:void(0)">零食</a> <a
                                                href="javascript:void(0)">钙铁锌</a> <a
                                                href="javascript:void(0)">清火开胃</a> <a
                                                href="javascript:void(0)">DHA</a> <a
                                                href="javascript:void(0)">孕婴营养品</a> <a
                                                href="javascript:void(0)">宝宝面食</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>喂养用品</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">奶瓶</a> <a
                                                href="javascript:void(0)">奶嘴</a> <a
                                                href="javascript:void(0)">吸奶器</a> <a
                                                href="javascript:void(0)">牙胶消毒</a> <a
                                                href="javascript:void(0)">儿童餐具</a> <a
                                                href="javascript:void(0)">水杯</a> <a
                                                href="javascript:void(0)">水壶</a> <a
                                                href="javascript:void(0)">口腔清洁</a> <a
                                                href="javascript:void(0)">围兜</a> <a
                                                href="javascript:void(0)">口水巾</a> <a
                                                href="javascript:void(0)">辅食机</a> <a
                                                href="javascript:void(0)">料理机</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>服饰寝居</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">儿童套装</a> <a
                                                href="javascript:void(0)">T血</a> <a
                                                href="javascript:void(0)">儿童运动鞋</a> <a
                                                href="javascript:void(0)">学步鞋</a> <a
                                                href="javascript:void(0)">裙子</a> <a
                                                href="javascript:void(0)">家居床品</a> <a
                                                href="javascript:void(0)">睡袋</a> <a
                                                href="javascript:void(0)">抱枕</a> <a
                                                href="javascript:void(0)">婴童内衣</a> <a
                                                href="javascript:void(0)">婴儿礼盒</a> <a
                                                href="javascript:void(0)">尿布</a> <a
                                                href="javascript:void(0)">尿垫</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>儿童玩具</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">爬行垫</a> <a
                                                href="javascript:void(0)">益智玩具</a> <a
                                                href="javascript:void(0)">户外玩具</a> <a
                                                href="javascript:void(0)">模型玩具</a> <a
                                                href="javascript:void(0)">遥控玩具</a> <a
                                                href="javascript:void(0)">积木拼插</a> <a
                                                href="javascript:void(0)">毛绒玩具</a> <a
                                                href="javascript:void(0)">DIY玩具</a> <a
                                                href="javascript:void(0)">电动玩具</a> <a
                                                href="javascript:void(0)">轨道车</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">鞋靴/箱包/钟表/珠宝</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=31">生鲜<i> > </i></a> <a
                                            href="shopping?cid=32">饮料<i> > </i></a> <a
                                            href="shopping?cid=33">中外名酒<i> > </i></a>

                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>时尚男鞋</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">百丽</a> <a
                                                href="javascript:void(0)">商务鞋</a> <a
                                                href="javascript:void(0)">商务休闲鞋</a> <a
                                                href="javascript:void(0)">休闲鞋</a> <a
                                                href="javascript:void(0)">板鞋</a> <a
                                                href="javascript:void(0)">高帮鞋</a> <a
                                                href="javascript:void(0)">乐福鞋</a> <a
                                                href="javascript:void(0)">豆豆鞋男</a> <a
                                                href="javascript:void(0)">正装皮鞋</a> <a
                                                href="javascript:void(0)">布洛克</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>女鞋</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">春夏新品</a> <a
                                                href="javascript:void(0)">单鞋</a> <a
                                                href="javascript:void(0)">休闲鞋</a> <a
                                                href="javascript:void(0)">帆布鞋</a> <a
                                                href="javascript:void(0)">乐福鞋</a> <a
                                                href="javascript:void(0)">居家鞋</a> <a
                                                href="javascript:void(0)">室内拖鞋</a> <a
                                                href="javascript:void(0)">高跟鞋</a> <a
                                                href="javascript:void(0)">小白鞋</a> <a
                                                href="javascript:void(0)">凉鞋</a> <a
                                                href="javascript:void(0)">鱼嘴靴</a> <a
                                                href="javascript:void(0)">坡跟鞋</a> <a
                                                href="javascript:void(0)">拖鞋</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>女包</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">背包女</a> <a
                                                href="javascript:void(0)">双肩包</a> <a
                                                href="javascript:void(0)">手提包</a> <a
                                                href="javascript:void(0)">手包</a> <a
                                                href="javascript:void(0)">女士钱包</a> <a
                                                href="javascript:void(0)">斜挎包</a> <a
                                                href="javascript:void(0)">卡包</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>男包</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">单肩包</a> <a
                                                href="javascript:void(0)">斜挎包</a> <a
                                                href="javascript:void(0)">手提包</a> <a
                                                href="javascript:void(0)">手拿包</a> <a
                                                href="javascript:void(0)">男士钱包</a> <a
                                                href="javascript:void(0)">卡包</a> <a
                                                href="javascript:void(0)">商务公文包</a> <a
                                                href="javascript:void(0)">皮具套装</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>钟表眼镜</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">男表</a> <a
                                                href="javascript:void(0)">女表</a> <a
                                                href="javascript:void(0)">机械表</a> <a
                                                href="javascript:void(0)">4k超高清</a> <a
                                                href="javascript:void(0)">瑞士名表</a> <a
                                                href="javascript:void(0)">国产名表</a> <a
                                                href="javascript:void(0)">石英表</a> <a
                                                href="javascript:void(0)">男士机械表</a> <a
                                                href="javascript:void(0)">女士石英表</a> <a
                                                href="javascript:void(0)">运动表</a> <a
                                                href="javascript:void(0)">儿童手表</a> <a
                                                href="javascript:void(0)">电子表</a> <a
                                                href="javascript:void(0)">闹钟</a> <a
                                                href="javascript:void(0)">挂钟</a> <a
                                                href="javascript:void(0)">日韩名表</a> <a
                                                href="javascript:void(0)">太阳镜</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>珠宝饰品</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">黄金</a> <a
                                                href="javascript:void(0)">钻戒</a> <a
                                                href="javascript:void(0)">铂金</a> <a
                                                href="javascript:void(0)">翡翠玉石</a> <a
                                                href="javascript:void(0)">钻石</a> <a
                                                href="javascript:void(0)">彩宝</a> <a
                                                href="javascript:void(0)">珍珠</a> <a
                                                href="javascript:void(0)">金银投资</a> <a
                                                href="javascript:void(0)">银饰</a> <a
                                                href="javascript:void(0)">木饰</a> <a
                                                href="javascript:void(0)">施华洛世奇</a> <a
                                                href="javascript:void(0)">水晶玛瑙</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">图示/童书/电子书</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=11">图书频道<i> > </i></a> <a
                                            href="shopping?cid=11">儿童图书<i> > </i></a> <a
                                            href="shopping?cid=11">电子书<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>文学艺术</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">小说</a> <a
                                                href="javascript:void(0)">名人传</a> <a
                                                href="javascript:void(0)">青春文学</a> <a
                                                href="javascript:void(0)">爱情/感情</a> <a
                                                href="javascript:void(0)">悬疑/推理</a> <a
                                                href="javascript:void(0)">言情</a> <a
                                                href="javascript:void(0)">动漫</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>少儿频道</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">0-2岁</a> <a
                                                href="javascript:void(0)">3-6岁</a> <a
                                                href="javascript:void(0)">7-10岁</a> <a
                                                href="javascript:void(0)">10-14岁</a> <a
                                                href="javascript:void(0)">幼儿启蒙</a> <a
                                                href="javascript:void(0)">绘本</a> <a
                                                href="javascript:void(0)">益智游戏</a> <a
                                                href="javascript:void(0)">玩具书</a> <a
                                                href="javascript:void(0)">中国儿童文学</a> <a
                                                href="javascript:void(0)">外国儿童文学</a> <a
                                                href="javascript:void(0)">科普百科</a> <a
                                                href="javascript:void(0)">少儿英语</a> <a
                                                href="javascript:void(0)">动漫卡通</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>音像</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">华语流行</a> <a
                                                href="javascript:void(0)">欧美流行</a> <a
                                                href="javascript:void(0)">欧美摇滚</a> <a
                                                href="javascript:void(0)">日韩流行</a> <a
                                                href="javascript:void(0)">古典音乐</a> <a
                                                href="javascript:void(0)">儿童教育</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>期刊杂志</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">时尚/美妆</a> <a
                                                href="javascript:void(0)">生活休闲</a> <a
                                                href="javascript:void(0)">健康美食</a> <a
                                                href="javascript:void(0)">母婴育儿</a> <a
                                                href="javascript:void(0)">旅游地理</a> <a
                                                href="javascript:void(0)">财经管理</a> <a
                                                href="javascript:void(0)">数码</a> <a
                                                href="javascript:void(0)">计算机</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>教育科技</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">中小学教辅</a> <a
                                                href="javascript:void(0)">外语</a> <a
                                                href="javascript:void(0)">工具书</a> <a
                                                href="javascript:void(0)">IT互联网</a> <a
                                                href="javascript:void(0)">医学</a> <a
                                                href="javascript:void(0)">建筑</a> <a
                                                href="javascript:void(0)">office办公</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>电子书</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">小说</a> <a
                                                href="javascript:void(0)">青春文学</a> <a
                                                href="javascript:void(0)">美丽装扮</a> <a
                                                href="javascript:void(0)">美食</a> <a
                                                href="javascript:void(0)">励志成功</a> <a
                                                href="javascript:void(0)">管理</a> <a
                                                href="javascript:void(0)">历史</a> <a
                                                href="javascript:void(0)">玄幻</a> <a
                                                href="javascript:void(0)">都市</a> <a
                                                href="javascript:void(0)">悬疑</a> <a
                                                href="javascript:void(0)">女生</a> <a
                                                href="javascript:void(0)">投资理财</a> <a
                                                href="javascript:void(0)">哲学宗教</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">电脑办公/相机/DIY</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=11">电器城<i> > </i></a> <a
                                            href="shopping?cid=11">电脑频道<i> > </i></a> <a
                                            href="shopping?cid=11">相机频道<i> > </i></a> <a
                                            href="shopping?cid=11">企业采购<i> > </i></a> <a
                                            href="shopping?cid=11">海外购电脑<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>电脑整机</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">笔记本</a> <a
                                                href="javascript:void(0)">游戏本</a> <a
                                                href="javascript:void(0)">轻薄本</a> <a
                                                href="javascript:void(0)">台式电脑</a> <a
                                                href="javascript:void(0)">电脑一体机</a> <a
                                                href="javascript:void(0)">服务器</a> <a
                                                href="javascript:void(0)">工作站</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>平板电脑</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">【iPad 128G 2788限抢】</a> <a
                                                href="javascript:void(0)">iPad</a> <a
                                                href="javascript:void(0)">华为平板</a> <a
                                                href="javascript:void(0)">iPad套餐</a> <a
                                                href="javascript:void(0)">Kindle</a> <a
                                                href="javascript:void(0)">二合一</a> <a
                                                href="javascript:void(0)">微软平板</a> <a
                                                href="javascript:void(0)">荣耀平板</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>电脑配件</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">显示器</a> <a
                                                href="javascript:void(0)">CPU</a> <a
                                                href="javascript:void(0)">主板</a> <a
                                                href="javascript:void(0)">显卡</a> <a
                                                href="javascript:void(0)">硬盘</a> <a
                                                href="javascript:void(0)">SSD固态硬盘</a> <a
                                                href="javascript:void(0)">内存</a> <a
                                                href="javascript:void(0)">机箱</a> <a
                                                href="javascript:void(0)">散热器</a> <a
                                                href="javascript:void(0)">电源</a> <a
                                                href="javascript:void(0)">组装电脑</a> <a
                                                href="javascript:void(0)">刻录机/光驱</a> <a
                                                href="javascript:void(0)">声卡/扩展卡</a> <a
                                                href="javascript:void(0)">装机配件</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>办公文具</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">投影仪</a> <a
                                                href="javascript:void(0)">打印机</a> <a
                                                href="javascript:void(0)">复印/复合机</a> <a
                                                href="javascript:void(0)">保险柜</a> <a
                                                href="javascript:void(0)">扫描仪</a> <a
                                                href="javascript:void(0)">点验钞机</a> <a
                                                href="javascript:void(0)">电话机</a> <a
                                                href="javascript:void(0)">标签机</a> <a
                                                href="javascript:void(0)">复印机</a> <a
                                                href="javascript:void(0)">摄影幕布</a> <a
                                                href="javascript:void(0)">墨盒</a> <a
                                                href="javascript:void(0)">办公文具</a> <a
                                                href="javascript:void(0)">笔类</a> <a
                                                href="javascript:void(0)">学生文具</a> <a
                                                href="javascript:void(0)">财务用品</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>摄影摄像</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">【数码装BEI指南 配件卖多少返多少 】</a> <a
                                                href="javascript:void(0)">数码相机</a> <a
                                                href="javascript:void(0)">单反</a> <a
                                                href="javascript:void(0)">微单/单点</a> <a
                                                href="javascript:void(0)">拍立得</a> <a
                                                href="javascript:void(0)">佳能</a> <a
                                                href="javascript:void(0)">索尼</a> <a
                                                href="javascript:void(0)">尼康</a> <a
                                                href="javascript:void(0)">摄像机</a> <a
                                                href="javascript:void(0)">镜头</a> <a
                                                href="javascript:void(0)">运动相机</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">厨卫大点/生活家电/厨具</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=11">电器城<i> > </i></a> <a
                                            href="shopping?cid=11">厨卫家装馆<i> > </i></a> <a
                                            href="shopping?cid=11">生活家电频道<i> > </i></a> <a
                                            href="shopping?cid=11">企业采购<i> > </i></a> <a
                                            href="shopping?cid=11">厨具达人<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>厨具</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">炒锅</a> <a
                                                href="javascript:void(0)">压力锅</a> <a
                                                href="javascript:void(0)">蒸锅</a> <a
                                                href="javascript:void(0)">煎锅</a> <a
                                                href="javascript:void(0)">火锅</a> <a
                                                href="javascript:void(0)">汤锅</a> <a
                                                href="javascript:void(0)">奶锅</a> <a
                                                href="javascript:void(0)">锅具套装</a> <a
                                                href="javascript:void(0)">砂锅</a> <a
                                                href="javascript:void(0)">刀具</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>厨房大电</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">【厨卫满1000减100】</a> <a
                                                href="javascript:void(0)">油烟机</a> <a
                                                href="javascript:void(0)">燃气灶</a> <a
                                                href="javascript:void(0)">烟灶套餐</a> <a
                                                href="javascript:void(0)">消毒柜</a> <a
                                                href="javascript:void(0)">洗碗机</a> <a
                                                href="javascript:void(0)">嵌入式厨电</a> <a
                                                href="javascript:void(0)">集成灶</a> <a
                                                href="javascript:void(0)">垃圾处理器</a> <a
                                                href="javascript:void(0)">商用厨房电器</a> <a
                                                href="javascript:void(0)">西门子</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>卫浴电器</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">热水器</a> <a
                                                href="javascript:void(0)">电热水器</a> <a
                                                href="javascript:void(0)">燃气热水器</a> <a
                                                href="javascript:void(0)">厨宝</a> <a
                                                href="javascript:void(0)">浴霸/排气扇</a> <a
                                                href="javascript:void(0)">智能马桶盖</a> <a
                                                href="javascript:void(0)">空气能</a> <a
                                                href="javascript:void(0)">采暖炉</a> <a
                                                href="javascript:void(0)">家电配件</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>中式厨房</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">【夏之初体验 领券最高减400】</a> <a
                                                href="javascript:void(0)">电饭煲</a> <a
                                                href="javascript:void(0)">电压力锅</a> <a
                                                href="javascript:void(0)">豆浆机</a> <a
                                                href="javascript:void(0)">电磁炉</a> <a
                                                href="javascript:void(0)">电水壶/电水瓶</a> <a
                                                href="javascript:void(0)">榨汁机/原汁机</a> <a
                                                href="javascript:void(0)">电饼铛</a> <a
                                                href="javascript:void(0)">电炖锅</a> <a
                                                href="javascript:void(0)">煮蛋器</a> <a
                                                href="javascript:void(0)">电热饭盒</a> <a
                                                href="javascript:void(0)">电陶炉</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>西式厨房</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">电烤箱</a> <a
                                                href="javascript:void(0)">微波炉</a> <a
                                                href="javascript:void(0)">面包机</a> <a
                                                href="javascript:void(0)">酸奶机</a> <a
                                                href="javascript:void(0)">咖啡机</a> <a
                                                href="javascript:void(0)">空气炸锅</a> <a
                                                href="javascript:void(0)">食品加工机</a> <a
                                                href="javascript:void(0)">打蛋器</a> <a
                                                href="javascript:void(0)">搅拌机</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>进口专区</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">剃须刀</a> <a
                                                href="javascript:void(0)">电饭煲</a> <a
                                                href="javascript:void(0)">电动牙刷</a> <a
                                                href="javascript:void(0)">美容仪</a> <a
                                                href="javascript:void(0)">进口咖啡机</a> <a
                                                href="javascript:void(0)">戴森</a> <a
                                                href="javascript:void(0)">空气净化器</a> <a
                                                href="javascript:void(0)">吸尘器</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">理财/众筹/分期/保险</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=11">理财<i> > </i></a> <a
                                            href="jshopping?cid=11">众筹<i> > </i></a> <a
                                            href="shopping?cid=11">分期<i> > </i></a> <a
                                            href="shopping?cid=11">保险<i> > </i></a> <a
                                            href="shopping?cid=11)">旅行<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>旅行</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">企业差游</a> <a
                                                href="javascript:void(0)">机票</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>金融</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">投资理财</a> <a
                                                href="javascript:void(0)">众筹</a> <a
                                                href="javascript:void(0)">保险</a> <a
                                                href="javascript:void(0)">消费贷款</a> <a
                                                href="javascript:void(0)">企业贷款</a> <a
                                                href="javascript:void(0)">财富资讯</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>众筹</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">科技</a> <a
                                                href="javascript:void(0)">设计</a> <a
                                                href="javascript:void(0)">公益</a> <a
                                                href="javascript:void(0)">农业</a> <a
                                                href="javascript:void(0)">文化</a> <a
                                                href="javascript:void(0)">娱乐</a> <a
                                                href="javascript:void(0)">其他</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>保险</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">旅行险</a> <a
                                                href="javascript:void(0)">意外险</a> <a
                                                href="javascript:void(0)">健康险</a> <a
                                                href="javascript:void(0)">财产险</a> <a
                                                href="javascript:void(0)">延保</a> <a
                                                href="javascript:void(0)">寿险</a>

                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>易付宝</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">手机充值</a> <a
                                                href="javascript:void(0)">还款</a> <a
                                                href="javascript:void(0)">转账</a> <a
                                                href="javascript:void(0)">电水煤</a> <a
                                                href="javascript:void(0)">加油卡</a> <a
                                                href="javascript:void(0)">固话宽带</a> <a
                                                href="javascript:void(0)">有线电视</a> <a
                                                href="javascript:void(0)">校园一卡通</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>投资理财</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">我的理财</a> <a
                                                href="javascript:void(0)">票据理财</a> <a
                                                href="javascript:void(0)">基金</a> <a
                                                href="javascript:void(0)">保险理财</a> <a
                                                href="javascript:void(0)">活动专区</a> <a
                                                href="javascript:void(0)">安心盈</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <h3>
                            <a href="javascript:void(0)">艺术/礼品鲜花/农资绿植</a>
                        </h3> <i> > </i>
                        <div class="item-sub">
                            <div class="subleft">
                                <div class="item-channels">
                                    <div class="channel">
                                        <a href="shopping?cid=11">礼品<i> > </i></a> <a
                                            href="shopping?cid=11">火机烟具<i> > </i></a> <a
                                            href="shopping?cid=11">鲜花<i> > </i></a> <a
                                            href="shopping?cid=11">农夫<i> > </i></a> <a
                                            href="shopping?cid=11">同城绿植<i> > </i></a> <a
                                            href="shopping?cid=11">园林园艺<i> > </i></a>
                                    </div>
                                </div>
                                <div class="subitems">
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>艺术品</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">油画</a> <a
                                                href="javascript:void(0)">版画</a> <a
                                                href="javascript:void(0)">水墨画</a> <a
                                                href="javascript:void(0)">中央空调</a> <a
                                                href="javascript:void(0)">书法</a> <a
                                                href="javascript:void(0)">雕塑</a> <a
                                                href="javascript:void(0)">艺术画册</a> <a
                                                href="javascript:void(0)">艺术衍生品</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>火机烟具</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">电子烟</a> <a
                                                href="javascript:void(0)">烟油</a> <a
                                                href="javascript:void(0)">打火机</a> <a
                                                href="javascript:void(0)">烟嘴</a> <a
                                                href="javascript:void(0)">烟盒</a> <a
                                                href="javascript:void(0)">烟斗</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>礼品</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">创意礼品</a> <a
                                                href="javascript:void(0)">电子礼品</a> <a
                                                href="javascript:void(0)">工艺礼品</a> <a
                                                href="javascript:void(0)">化妆礼品</a> <a
                                                href="javascript:void(0)">婚庆节庆</a> <a
                                                href="javascript:void(0)">礼盒礼券</a> <a
                                                href="javascript:void(0)">礼品定制</a> <a
                                                href="javascript:void(0)">军刀军具</a> <a
                                                href="javascript:void(0)">古董文玩</a> <a
                                                href="javascript:void(0)">收藏品</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>农机农具</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">微耕机</a> <a
                                                href="javascript:void(0)">喷雾器</a> <a
                                                href="javascript:void(0)">割草机</a> <a
                                                href="javascript:void(0)">农机整机</a> <a
                                                href="javascript:void(0)">农机配件</a> <a
                                                href="javascript:void(0)">小型农机具</a> <a
                                                href="javascript:void(0)">农膜</a> <a
                                                href="javascript:void(0)">农机服务</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>绿植园艺</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">桌面绿植</a> <a
                                                href="javascript:void(0)">苗木</a> <a
                                                href="javascript:void(0)">绿植盆栽</a> <a
                                                href="javascript:void(0)">多肉植物</a> <a
                                                href="javascript:void(0)">花卉</a> <a
                                                href="javascript:void(0)">种子种球</a> <a
                                                href="javascript:void(0)">花盆花器</a> <a
                                                href="javascript:void(0)">园艺土肥</a> <a
                                                href="javascript:void(0)">园艺工具</a> <a
                                                href="javascript:void(0)">园林机械</a>
                                        </dt>
                                    </dl>
                                    <dl>
                                        <dd>
                                            <a href="javascript:void(0)"><b>种子</b><i> > </i></a></a>
                                        </dd>
                                        <dt>
                                            <a href="javascript:void(0)">花木林木类</a> <a
                                                href="javascript:void(0)">蔬菜/菌类</a> <a
                                                href="javascript:void(0)">瓜果类</a> <a
                                                href="javascript:void(0)">大田农作物</a>
                                        </dt>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="banner fl">




            <div class="flex">
                <ul class="slider">
                    <%--<li><img src="lbimg/1.jpg" height=411></li>
                    <li><img src="lbimg/2.jpg" height=411></li>
                    <li><img src="lbimg/3.jpg" height=411></li>
                    <li><img src="lbimg/4.jpg" height=411></li>
                    <li><img src="lbimg/5.jpg" height=411></li>--%>
                        <li><img src="xlbimg/1.jpeg" height=411></li>
                        <li><img src="xlbimg/2.jpg" height=411></li>
                        <li><img src="xlbimg/3.jpg" height=411></li>
                        <li><img src="xlbimg/4.jpg" height=411></li>
                        <li><img src="xlbimg/5.jpg" height=411></li>
                </ul>
                <ul class="btn">
                    <li class="prev"></li>
                    <li class="ne8888b  xt"></li>
                </ul>
                <ol class="dot">
                    <li class="cur"></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ol>

            </div>
        </div>
        <div class="entrance fl">
            <div class="enews">
                <dl class="nlist">
                    <dt>
                        阳阳快报<a href="javascript:void(0)" class="more fr">更多></a>
                    </dt>
                    <dd class="pt5">
                        <span>[热门]</span><a href="javascript:void(0)" class="pl5">]首款5G手机预计明年下半年亮相!</a>
                    </dd>
                    <dd>
                        <span>[科普]</span><a href="javascript:void(0)" class="pl5">挑牛仔裤居然要看臀型？</a>
                    </dd>
                    <dd>
                        <span>[手机]</span><a href="javascript:void(0)" class="pl5">荣耀10正式亮相!</a>
                    </dd>
                    <dd>
                        <span>[穿搭]</span><a href="javascript:void(0)" class="pl5">四款高跟鞋就能应对大多数场合!</a>
                    </dd>
                    <dd>
                        <span>[公告]</span><a href="javascript:void(0)" class="pl5">商家免费入住商城！</a>
                    </dd>
                    <dd>
                        <span>[特惠]</span><a href="javascript:void(0)" class="pl5">5.1抢礼包啦!</a>
                    </dd>

                </dl>
            </div>
            <div class="ebanner mt10" style="padding-top: 30px;">
                <a href="http://www.seehope.com/"><img src="images/lifeng.png"
                                                       width=250 height=130 /></a>
            </div>
        </div>
    </div>
    <div class="rec mt10">
        <ul class="clear">
            <li class="rtitle" title="baby物品全场三折起"><a
                    href="javascript:void(0)"><img src="images/rec4.png" width=220
                                                   height=105></a></li>
            <li class="rlist" title="女神与衣约惠季"><a href="javascript:void(0)"><img
                    src="images/rec3.png" width=246 height=105></a></li>
            <li class="rlist" title="健身器材"><a href="javascript:void(0)"><img
                    src="images/rec1.png" width=246 height=105></a></li>
            <li class="rlist" title="Olay化妆品"><a href="javascript:void(0)"><img
                    src="images/rec2.png" width=246 height=105></a></li>
            <li class="rlist" title="从头美到脚·服饰"><a href="javascript:void(0)"><img
                    src="images/rec.png" width=246 height=105></a></li>
        </ul>
    </div>
    <!--限时特价  -->
    <div class="aui-content-max">
        <div class="aui-sale-time">
            <a href="javascript:;" class="aui-sale-time-link">
                <div class="aui-sale-title" id="c">限时秒杀</div>
                <div class="aui-sale-second">FLASH DEALS</div>
                <div class="aui-sale-icon-sd" id="c"></div>
                <div class="aui-sale-ends" id="c">本场距离结束还剩</div>
                <div class="aui-sale-count" id="c">
                    <div class="aui-sale-count-item">
                        <span id="hour_show" style="color: white;">00时</span>
                    </div>
                    <div class="aui-sale-count-item">
                        <span id="minute_show" style="color: white;">00分</span>
                    </div>
                    <div class="aui-sale-count-item">
                        <span id="second_show" style="color: white;">00秒</span>
                    </div>
                </div>
            </a>
        </div>
        <div class="aui-content-box">
            <div class="prev">
                <a href="javascript:void(0)"> <img src="images/prev.png" alt="">
                </a>
            </div>
            <div class="aui-content-box-ovf">
                <div class="aui-content-box-list">
                    <ul>
                        <c:forEach items="${list5}" var="item">
                            <li><a href="pro?method=proInfo&proid=${item.id}">
                                <div class="aui-content-item-img">
                                    <img src="${pageContext.request.contextPath}/${item.pImg}"
                                         alt="">
                                </div>
                                <p class="aui-content-item-name">${item.pName}</p>
                                <div class="aui-content-price">
											<span class="aui-content-price-new"> <i id="c">¥</i> <span>${item.iPrice}</span>
											</span> <span class="aui-content-price-origin"> <i id="c">¥</i>
												<span>${item.mPrice}</span>
											</span>
                                </div>
                            </a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="next">
                <a href="javascript:void(0)"> <img src="images/next.png" alt="">
                </a>
            </div>
        </div>
        <div class="aui-small-ad">
            <div class="example2">
                <ul>
                    <li><img src="images/ad2.jpg" alt="2"></li>
                    <li><img src="images/ad1.jpg" alt="1"></li>
                    <li><img src="images/ad3.jpg" alt="3"></li>
                </ul>
                <ol style="position: relative; left: 60px;">
                    <li></li>
                    <li></li>
                    <li></li>
                </ol>
            </div>
        </div>
    </div>
    <!-- 分类商品 -->
</div>
<div class="content">
    <div class="floor" id="f1">
        <div class="mt">
            <h2>1F家用电器</h2>
            <ul class="tab clear">
                <li class="lihover"><a href="javascript:void(0)">最近浏览</a><span></span></li>
                <li><a href="javascript:void(0)">大家电</a><span></span></li>
                <li><a href="javascript:void(0)">生活电器</a><span></span></li>
                <li><a href="javascript:void(0)">小电器</a></li>
            </ul>
        </div>
        <div class="mc clear">
            <div class="side">
                <div class="banner">
                    <a href="javascript:void(0)"><img src="images/list3.png"
                                                      width=300></a> <i class="light"></i>
                </div>
                <ul class="theme clear">
                    <li class="fore1"><a href="javascript:void(0)"><i
                            class="icon"></i><span>最近浏览</span></a></li>
                    <li class="fore2"><a href="javascript:void(0)"><i
                            class="icon"></i><span>大家电</span></a></li>
                    <li class="fore3"><a href="javascript:void(0)"><i
                            class="icon"></i><span>生活电器</span></a></li>
                    <li class="fore4"><a href="javascript:void(0)"><i
                            class="icon"></i><span>小电器</span></a></li>
                </ul>
                <div class="words f1bg">
                    <ul class="assis clear">
                        <li><a href="javascript:void(0)">电器城频道<i></i></a></li>
                        <li><a href="javascript:void(0)">逛商城赚千元话费<i></i></a></li>
                        <li><a href="javascript:void(0)">彩电狂欢返场<i></i></a></li>
                        <li><a href="javascript:void(0)">海尔529嗨购<i></i></a></li>
                    </ul>
                    <ul class="category clear">
                        <li><a href="javascript:void(0)">电饭煲</a><a
                                href="javascript:void(0)">空调</a></li>
                        <li><a href="javascript:void(0)">组合音响</a><a
                                href="javascript:void(0)">格力冰箱</a></li>
                        <li><a href="javascript:void(0)">洗衣机</a><a
                                href="javascript:void(0)">平板电脑</a></li>
                        <li><a href="javascript:void(0)">电风扇</a><a
                                href="javascript:void(0)">夏普电视</a></li>
                        <li><a href="javascript:void(0)">奥克斯空调</a><a
                                href="javascript:void(0)">饮水机</a></li>
                        <li><a href="javascript:void(0)">吸尘器</a><a
                                href="javascript:void(0)">电磁炉</a></li>
                        <li><a href="javascript:void(0)">消毒柜</a><a
                                href="javascript:void(0)">热水器</a></li>
                        <li><a href="javascript:void(0)">挂烫机</a><a
                                href="javascript:void(0)">摄像机</a></li>
                    </ul>
                </div>
            </div>
            <div class="main">

                <ul class=" list clear">
                    <c:forEach items="${list1}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list2}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list3}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list4}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>

            </div>
        </div>

        <div class="brands clear">
            <h2 class="ls1">类似商品:</h2>
            <ul>
                <li><a href="javascript:void(0)"><img
                        src="images/brand01.jpg" title="小米扫地机器人"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand02.jpg" title="西门子（SIEMENS）洗衣机"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand03.jpg" title="北极熊冰箱"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand04.jpg" title="松下(Panasonic) 搅拌机"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand05.jpg" title="新科S5广场舞音响"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand06.jpg" title="山水SS1-08 户外广场舞音箱"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand07.jpg" title="山水(SANSUI) 家庭K歌"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand08.jpg" title="台式电脑音响"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand09.jpg" title="松下(Panasonic) 搅拌机"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand010.jpg" title="北极熊冰箱"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand011.jpg" title="海尔（Haier）冰箱"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand012.jpg" title="海信（Hisense）洗衣机"></a></li>
            </ul>
        </div>
    </div>
    <div class="floor mt30" id="f2">
        <div class="mt">
            <h2>2F智能数码</h2>
            <ul class="tab clear">
                <li class="lihover"><a href="javascript:void(0)">手机馆</a><span></span></li>
                <li><a href="javascript:void(0)">电子教育</a><span></span></li>
                <li><a href="javascript:void(0)">运动航拍</a><span></span></li>
                <li><a href="javascript:void(0)">娱乐影音</a><span></span></li>
                <li><a href="javascript:void(0)">智能穿戴出行</a><span></span></li>
                <li><a href="javascript:void(0)">智能家居</a><span></span></li>

            </ul>
        </div>
        <div class="mc clear">
            <div class="side">
                <div class="banner">
                    <a href="javascript:void(0)"><img src="images/2fbanner.png"
                                                      width=300></a> <i class="light"></i>
                </div>
                <ul class="theme clear">
                    <li class="fore1"><a href="javascript:void(0)"><i
                            class="icon"></i><span>手机馆</span></a></li>
                    <li class="fore2"><a href="javascript:void(0)"><i
                            class="icon"></i><span>电子教育</span></a></li>
                    <li class="fore3"><a href="javascript:void(0)"><i
                            class="icon"></i><span>运动航拍</span></a></li>
                    <li class="fore4"><a href="javascript:void(0)"><i
                            class="icon"></i><span>娱乐影音</span></a></li>
                </ul>
                <div class="words f2bg">
                    <ul class="assis clear">
                        <li><a href="javascript:void(0)">三星钜惠全家福<i></i></a></li>
                        <li><a href="javascript:void(0)">米家全景相机<i></i></a></li>
                        <li><a href="javascript:void(0)">移动电源品质联盟<i></i></a></li>
                        <li><a href="javascript:void(0)">手机月末大促<i></i></a></li>
                    </ul>
                    <ul class="category clear">
                        <li><a href="javascript:void(0)">平衡车</a><a
                                href="javascript:void(0)">智能手环</a></li>
                        <li><a href="javascript:void(0)">记录仪</a><a
                                href="javascript:void(0)">智能手表</a></li>
                        <li><a href="javascript:void(0)">摄像头</a><a
                                href="javascript:void(0)">智能门锁</a></li>
                        <li><a href="javascript:void(0)">体脂秤</a><a
                                href="javascript:void(0)">电视盒子</a></li>
                        <li><a href="javascript:void(0)">机器人</a><a
                                href="javascript:void(0)">无人机</a></li>
                        <li><a href="javascript:void(0)">手持云台</a><a
                                href="javascript:void(0)">蓝牙音箱</a></li>
                        <li><a href="javascript:void(0)">录音笔</a><a
                                href="javascript:void(0)">电子词典</a></li>
                        <li><a href="javascript:void(0)">故事机</a><a
                                href="javascript:void(0)">点读笔</a></li>
                    </ul>
                </div>
            </div>
            <div class="main">
                <ul class="list clear">
                    <c:forEach items="${list5}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list6}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list7}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list8}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list9}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
                <ul>
                    <c:forEach items="${list10}" var="item">
                        <li><a href="pro?method=proInfo&proid=${item.id}"><img
                                src="${pageContext.request.contextPath}/${item.pImg}"
                                class="f2picture">
                            <h1 href="pro?method=proInfo&proid=${item.id}" class="listsjg">¥${item.iPrice}</h1>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listspp">${item.pName}</a>
                            <a href="pro?method=proInfo&proid=${item.id}" class="listsjj">${item.pSn}</a>
                        </a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="brands clear">
            <h2 class="ls2">类似商品:</h2>
            <ul>
                <li><a href="javascript:void(0)"><img
                        src="images/brand1.jpg" title="森海塞尔（Sennheiser） CX3.00耳机 Red"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand2.jpg" title="森海塞尔（Sennheiser） HD201音乐头戴式pc电脑耳机"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand3.jpg" title="Apple 苹果 iPhone X (A1865)"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand4.jpg" title="纽曼(Newsmy)A35扫描翻译机"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand5.jpg" title="优彼思维训练机"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand6.jpg" title="优学派 （Noah）学生平板电脑"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand7.jpg" title="卓纪 2017新款智能电动车·双轮平衡"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand8.jpg" title="双轮平衡车"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand9.jpg" title="Phantom-3系列无人机专用 飞行保护器"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand10.jpg" title="能力风暴Abilix教育机器人"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand11.jpg" title="勇艺达小勇儿童智能早教机器人YYD-5"></a></li>
                <li><a href="javascript:void(0)"><img
                        src="images/brand12.jpg" title="Makeblock mBot 六足机器人扩展包"></a></li>
            </ul>
        </div>
    </div>
    <div class="specbox mt30">
        <div class="spet">
            <h2>今日精品</h2>
        </div>
        <div class="spe clear">
            <div class="special">
                <ul class="clear">
                    <li class="s1">
                        <div class="spic">
                            <a href="javascript:void(0)"><img src="images/spec1.jpg"></a>
                        </div>
                        <div class="sinfo">
                            <div class="sname">
                                <a href="javascript:void(0)">佐露絲RALOS2018新款女装连衣裙夏装修身收腰甜美日系小清新夏季条纹短袖裙子</a>
                            </div>
                            <div class="sprice">
                                商城价：<em>128元</em>
                            </div>
                        </div>

                    </li>
                    <li class="s s2">
                        <div class="sppic">
                            <a href="javascript:void(0)"><img src="images/spec-1.jpg"
                                                              width=100 height=100></a>
                        </div>
                        <div class="spinfo">
                            <div class="sp-name">
                                <a href="javascript:void(0)">X-MAN2018夏季新款男士T恤套装韩版休闲T恤修身短袖</a>
                            </div>
                            <div class="sp-price">
                                商城价：<em>96</em>
                            </div>
                        </div>
                    </li>
                    <li class="s s3">
                        <div class="sppic">
                            <a href="javascript:void(0)"><img src="images/spec-2.jpg"
                                                              width=100 height=100></a>
                        </div>
                        <div class="spinfo">
                            <div class="sp-name">
                                <a href="javascript:void(0)">奥休斯 2018春夏季款男士运动鞋低帮户外休闲鞋</a>
                            </div>
                            <div class="sp-price">
                                商城价：<em>89</em>
                            </div>
                        </div>
                    </li>
                    <li class="s s4">
                        <div class="sppic">
                            <a href="javascript:void(0)"><img src="images/spec-3.jpg"
                                                              width=100 height=100></a>
                        </div>
                        <div class="spinfo">
                            <div class="sp-name">
                                <a href="javascript:void(0)">耐克NIKE男鞋2018夏季新款男子网面透气运动鞋</a>
                            </div>
                            <div class="sp-price">
                                商城价：<em>349</em>
                            </div>
                        </div>
                    </li>
                    <li class="s s5">
                        <div class="sppic">
                            <a href="javascript:void(0)"><img src="images/spec-4.jpg"
                                                              width=100 height=100></a>
                        </div>
                        <div class="spinfo">
                            <div class="sp-name">
                                <a href="javascript:void(0)">三只松鼠_夏威夷果185g 零食坚果特产奶油味送开口器</a>
                            </div>
                            <div class="sp-price">
                                商城价：<em>15.5</em>
                            </div>
                        </div>
                    </li>
                    <li class="s s6">
                        <div class="sppic">
                            <a href="javascript:void(0)"><img src="images/spec-5.jpg"
                                                              width=100 height=100></a>
                        </div>
                        <div class="spinfo">
                            <div class="sp-name">
                                <a href="javascript:void(0)">猪肉粒 XO酱味98g*1袋 零食猪肉类熟食卤味休闲零食</a>
                            </div>
                            <div class="sp-price">
                                商城价：<em>11.2</em>
                            </div>
                        </div>
                    </li>
                    <li class="s s7">
                        <div class="sppic">
                            <a href="javascript:void(0)"><img src="images/spec-6.jpg"
                                                              width=100 height=100></a>
                        </div>
                        <div class="spinfo">
                            <div class="sp-name">
                                <a href="javascript:void(0)">手撕面包1050gx1箱装 早餐糕点 休闲零食</a>
                            </div>
                            <div class="sp-price">
                                商城价：<em>29.9</em>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="share">
                <div class="sharebox">
                    <ul>
                        <li>
                            <div class="sh-pic">
                                <img src="images/specl-1.jpg" />
                            </div>
                            <div class="sh-info">
                                <p class="c-info">
                                    <span class="icon"><img src="images/specw-1.jpg" /> </span> <span
                                        class="name">Lily</span>
                                </p>
                                <p class="mes">良品铺子的牛肚包装觉得挺好的 东西也好吃 追加……</p>
                            </div>
                        </li>
                        <li>
                            <div class="sh-pic">
                                <img src="images/specl-2.jpg" />
                            </div>
                            <div class="sh-info">
                                <p class="c-info">
                                    <span class="icon"><img src="images/specw-2.jpg" /> </span> <span
                                        class="name">猫猫</span>
                                </p>
                                <p class="mes">超级好吃的威化，甜而不腻！</p>
                            </div>
                        </li>
                        <li>
                            <div class="sh-pic">
                                <img src="images/specl-3.jpg" />
                            </div>
                            <div class="sh-info">
                                <p class="c-info">
                                    <span class="icon"><img src="images/specw-3.jpg" /> </span> <span
                                        class="name">大雪纷飞</span>
                                </p>
                                <p class="mes">衣服质量不错，料子纯棉非常舒服，吸汗特别好</p>
                            </div>
                        </li>
                        <li>
                            <div class="sh-pic">
                                <img src="images/specl-4.jpg" />
                            </div>
                            <div class="sh-info">
                                <p class="c-info">
                                    <span class="icon"><img src="images/specw-4.jpg" /> </span> <span
                                        class="name">love</span>
                                </p>
                                <p class="mes">嗯 全新 没毛病 南京的货值得肯定</p>
                            </div>
                        </li>
                        <li>
                            <div class="sh-pic">
                                <img src="images/specl-5.jpg" />
                            </div>
                            <div class="sh-info">
                                <p class="c-info">
                                    <span class="icon"><img src="images/specw-5.jpg" /> </span> <span
                                        class="name">酷酷的超人</span>
                                </p>
                                <p class="mes">方太大品牌服务就是不一样，质量很好，颜值高</p>
                            </div>
                        </li>
                        <li>
                            <div class="sh-pic">
                                <img src="images/specl-6.jpg" />
                            </div>
                            <div class="sh-info">
                                <p class="c-info">
                                    <span class="icon"><img src="images/specw-6.jpg" /> </span> <span
                                        class="name">nikou</span>
                                </p>
                                <p class="mes">不错挺好的，卖家推荐的尺码合适，穿起来也很舒服</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- 引入底部 -->
    <jsp:include page="/footer.jsp"></jsp:include>
    <script type="text/javascript" src="js/banner.js"></script>
    <script type="text/javascript" src="js/ad.js"></script>
    <script type="text/javascript">
        //商品滚动
        $(function() {

            $(".next a").click(function() {
                nextscroll()
            });

            function nextscroll() {

                var vcon = $(".aui-content-box-list ");

                var offset = ($(".aui-content-box-list li").width()) * -1;

                vcon.stop()
                    .animate(
                        {
                            left : offset
                        },
                        "slow",
                        function() {

                            var firstItem = $(
                                ".aui-content-box-list ul li")
                                .first();

                            vcon.find("ul").append(firstItem);

                            $(this).css("left", "0px");

                            circle()

                        });

            }
            ;

            function circle() {

                var currentItem = $(".aui-content-box-list ul li").first();

                var currentIndex = currentItem.attr("index");

                $(".circle li").removeClass("circle-cur");

                $(".circle li").eq(currentIndex).addClass("circle-cur");

            }

            $(".prev a").click(function() {

                var vcon = $(".aui-content-box-list ");

                var offset = ($(".aui-content-box-list li").width() * -1);

                var lastItem = $(".aui-content-box-list ul li").last();

                vcon.find("ul").prepend(lastItem);

                vcon.css("left", offset);

                vcon.animate({
                    left : "0px"
                }, "slow", function() {

                    circle()

                })

            });

        });

        var intDiff = parseInt(600000);//倒计时总秒数量

        function timer(intDiff) {
            window.setInterval(function() {

                var day = 0,

                    hour = 0,

                    minute = 0,

                    second = 0;//时间默认值

                if (intDiff > 0) {

                    day = Math.floor(intDiff / (60 * 60 * 24));

                    hour = Math.floor(intDiff / (60 * 60)) - (day * 24);

                    minute = Math.floor(intDiff / 60) - (day * 24 * 60)
                        - (hour * 60);

                    second = Math.floor(intDiff) - (day * 24 * 60 * 60)
                        - (hour * 60 * 60) - (minute * 60);

                }

                if (minute <= 9)
                    minute = '0' + minute;

                if (second <= 9)
                    second = '0' + second;

                $('#hour_show').html('<s id="h"></s>' + hour + '时');

                $('#minute_show').html('<s></s>' + minute + '分');

                $('#second_show').html('<s></s>' + second + '秒');

                intDiff--;

            }, 1000);

        }

        $(function() {

            timer(intDiff);

        });

        //ad自动滚动
        $(function() {
            $(".example2").luara({
                width : "194",
                height : "275",
                interval : 3500,
                selected : "seleted",
                deriction : "left"
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

    <div style="text-align: center;"></div>

</div>
</body>
</html>
