<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<link rel="stylesheet" href="../choose/lib.css"><link rel="stylesheet" href="../choose/ui.css"><link rel="stylesheet" href="../choose/dialog_f5e2c3d.css"><link rel="stylesheet" href="../choose/steps_d206cc0.css"><link rel="stylesheet" href="../choose/pager_a7cdf14.css"><link rel="stylesheet" href="../choose/seat.css"></head>

    <head> 

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 

        <title>jQuery在线选座(影院版)</title>

        <meta name="keywords" content="jQuery在线选座,jQuery选座系统" />

        <meta name="description" content="jquery.seat-charts是一款适合电影票、高铁票的在线选座插件。" />

        <link rel="stylesheet" type="text/css" href="css/jq22.css" />

        <style type="text/css">

            .front{width: 300px;margin: 5px 32px 45px 32px;background-color: #f0f0f0;	color: #666;text-align: center;padding: 3px;border-radius: 5px;}

            .booking_area {float: right;position: relative;width:200px;height: 450px; }

            .booking_area h3 {margin: 5px 5px 0 0;font-size: 16px;}

            .booking_area p{line-height:26px; font-size:16px; color:#999}

            .booking_area p span{color:#666}

            div.seatCharts-cell {color: #182C4E;height: 25px;width: 25px;line-height: 25px;margin: 3px;float: left;text-align: center;outline: none;font-size: 13px;}

            div.seatCharts-seat {color: #fff;cursor: pointer;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;}

            div.seatCharts-row {height: 35px;}

            div.seatCharts-seat.available {background-color: #B9DEA0;}

            div.seatCharts-seat.focused {background-color: #76B474;border: none;}

            div.seatCharts-seat.selected {background-color: #E6CAC4;}

            div.seatCharts-seat.unavailable {background-color: #472B34;cursor: not-allowed;}

            div.seatCharts-container {border-right: 1px dotted #adadad;width: 400px;padding: 20px;float: left;}

            div.seatCharts-legend {padding-left: 0px;position: absolute;bottom: 16px;}

            ul.seatCharts-legendList {padding-left: 0px;}

            .seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;}

            span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}

            .checkout-button {display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer}

            #seats_chose {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;}

            #seats_chose li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#f7f7f7; margin:6px; font-size:14px; font-weight:bold; text-align:center}

        </style>

    </head>
<link rel="stylesheet" href="choose/lib.css"><link rel="stylesheet" href="choose/ui.css"><link rel="stylesheet" href="choose/dialog_f5e2c3d.css"><link rel="stylesheet" href="choose/steps_d206cc0.css"><link rel="stylesheet" href="choose/pager_a7cdf14.css"><link rel="stylesheet" href="choose/seat.css"></head>

    <body>
<div id="page">
<div class="widget-common-nav" id="movieNav">
    <div class="content-center">
        <a href="https://www.nuomi.com/" target="_blank">
            <div class="logo fl"></div>
        </a>
        
<div class="widget-common-nav-city" "="">
<div class="city-area fl" id="cityArea">
    <!-- 显示当前城市 -->
    <p class="selected font-grey clearfix"><span id="selectedCity">北京</span><span class="arrow"></span></p>

    <div class="citylist" id="citylist">
        <h3>热门城市</h3>
        <ul id="hotCityList"><li>    <a href="javascript:;" data-id="131" data-name="北京">北京</a></li><li>    <a href="javascript:;" data-id="289" data-name="上海">上海</a></li><li>    <a href="javascript:;" data-id="179" data-name="杭州">杭州</a></li><li>    <a href="javascript:;" data-id="257" data-name="广州">广州</a></li><li>    <a href="javascript:;" data-id="340" data-name="深圳">深圳</a></li><li>    <a href="javascript:;" data-id="132" data-name="重庆">重庆</a></li><li>    <a href="javascript:;" data-id="75" data-name="成都">成都</a></li><li>    <a href="javascript:;" data-id="315" data-name="南京">南京</a></li><li>    <a href="javascript:;" data-id="218" data-name="武汉">武汉</a></li><li>    <a href="javascript:;" data-id="233" data-name="西安">西安</a></li><li>    <a href="javascript:;" data-id="194" data-name="厦门">厦门</a></li><li>    <a href="javascript:;" data-id="332" data-name="天津">天津</a></li></ul>
        <a href="javascript:;" data-url="/home/citylist" class="link morelink font-shadow">更多城市 &gt;</a></div>
</div>
</div>   
        <div class="search fr">
            <input class="input" id="searchInput" placeholder="搜你感兴趣的电影" type="text">
            <span class="icon" id="movieSearch" data-log="{'da_src':'navBk.searchBtn'}"></span>
        </div>
    </div>
</div>
<div class="widget-common-menu">
    <div class="content-center">
        <div class="fr user-info" id="userInfo">
            <span class="username fr font-grey font14 clearfix" id="userName" data-url="/user">
                <img class="avatar fl hide" src="choose/f3b4334d.jpg">
                <em class="name fl"></em>
            </span>
            <span class="arrow fr"><em class="arrow-in"></em></span>
            <div class="slidedown">
                <span class="username font-grey font14" id="userOrderlist" data-url="/user/orderlist">我的订单</span>
                <!--<span class="username fr font-grey font14" id="userOrderlist"
                data-url="/user/orderlist">我的帐号</span>-->
                <span class="username font-grey font14" id="userLogout" data-log="{'da_src':'menuBk.logoutBtn'}">退出</span>
            </div>
        </div>
        <span class="username fr font-grey font14 hide" id="userLogin" data-log="{'da_src':'menuBk.loginBtn'}">登录</span>
        <a class="cellphone fr font-grey font14" href="https://d.nuomi.com/inter/group" data-log="{'da_src':'menuBk.downloadLnk'}" target="_blank">APP下载</a>
        <div class="list clearfix">
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.homeLnk'}" data-url="/index">首页</a>
            <a class="nav active" href="javascript:;" data-log="{'da_src':'menuBk.movieLnk'}" data-url="/movie/movielist">影片</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="/cinema">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="/movie/boxoffice">票房</a>
        </div>
    </div>
</div>
<script type="text/javascript" src="choose/uni_login_wrapper.js"></script>
<div class="main" id="main">

    <div class="content" id="content">
        
<div class="widget-common-steps">
    <ul class="step-list clearfix">
        <li>1.选择影片场次<span class="arrow"><em class="arrow-in"></em></span></li>
        <li class="active">2. 选座并填手机号<span class="arrow"><em class="arrow-in"></em></span></li>
        <li>3. 提交并支付订单<span class="arrow"><em class="arrow-in"></em></span></li>
        <li>4. 影院终端取票</li>
    </ul>
</div>

<!-- <div class="widget-buy-seat clearfix" id="widgetBuySeat">
    <div class="content-left fl">
        <div id="pageletSelect">
<div id="pagination"></div> -->

</div>
        <input class="form-control-for-seatLock" extradata="1534237398248" value="53d290e94032e080c4bd0b729a03c121" type="hidden">
    </div>
    <div class="content-right fr">
        <div id="pageletSchedule">
</div>
    </div>
</div>
 </div>
</div>

<img id="statImgNew" style="display:none" src="choose/transparent.gif"></div>
<script type="text/javascript" src="choose/lib.js"></script><script type="text/javascript" src="choose/http_07a1657.js"></script><script type="text/javascript" src="choose/cookie_f4c070a.js"></script><script type="text/javascript" src="choose/util.js"></script><script type="text/javascript" src="choose/bdTemplate_28b34e7.js"></script><script type="text/javascript" src="choose/main_ed5455d.js"></script><script type="text/javascript" src="choose/Dialog_a99a6d7.js"></script><script type="text/javascript" src="choose/dialog_3a6ceae.js"></script><script type="text/javascript" src="choose/ui.js"></script><script type="text/javascript" src="choose/Pagination_2ff14ea.js"></script><script type="text/javascript" src="choose/pager_65de8b7.js"></script><script type="text/javascript" src="choose/seat.js"></script><script type="text/javascript">!function() {

window._commonData = {"location":{"cityId":"131","cityName":"北京"},"user":{"userid":1295234291,"username":"","displayname":"14...4@qq.com","status":true,"avatar":"http://himg.baidu.com/sys/portrait/item/f3b4334d"},"https":false};

}();
!function() {

require("common:widget/nav/city/city.js").init();

}();
!function() {
require('common:widget/nav/nav.js').init();
}();
!function() {
require("common:widget/menu/menu.js").init({"location":{"cityId":"131","cityName":"北京"},"user":{"userid":1295234291,"username":"","displayname":"14...4@qq.com","status":true,"avatar":"http://himg.baidu.com/sys/portrait/item/f3b4334d"},"https":false});
}();
!function() {

window.addStat({
    da_src:'webBuySeatPg',
    da_act:'ready'
});

require("buy:widget/seat/seat.js").init();
}();</script>

        <div class="container">

          <h2 class="title"><a href="http://www.jq22.com/jquery-info2692"></a></h2>

            <div class="demo clearfix">

                <!---左边座位列表----->

                <div id="seat_area">

                    <div class="front">屏幕</div>					

                </div>

                <!---右边选座信息----->

                <div class="booking_area">
					<img src="choiceseat/9cf86d0cbd3861c9dbc3f1e3189b32251042527.jpg@115w_158h_1e_1c">
                    <p>电影：<span>天将雄师</span></p>

                    <p>时间：<span>03月20日 22:15</span></p>

                    <p>座位：</p>

                    <ul id="seats_chose"></ul>

                    <p>票数：<span id="tickects_num">0</span></p>

                    <p>总价：<b>￥<span id="total_price">0</span></b></p>



                    <input type="button" class="btn" value="确定购买"/>



                    <div id="legend"></div>

                </div>

            </div>

        </div>

        <!-- <script src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script> -->
        <script src="../js/jquery-1.8.3.min.js"></script>
        

        <script type="text/javascript" src="jquery.seat-charts.min.js"></script>

        <script type="text/javascript">

            var price = 100; //电影票价

            $(document).ready(function() {

                var $cart = $('#seats_chose'), //座位区

                        $tickects_num = $('#tickects_num'), //票数

                        $total_price = $('#total_price'); //票价总额



                var sc = $('#seat_area').seatCharts({

                    map: [//座位结构图 a 代表座位; 下划线 "_" 代表过道

                        'cccccccccc',

                        'cccccccccc',

                        '__________',

                        'cccccccc__',

                        'cccccccccc',

                        'cccccccccc',

                        'cccccccccc',

                        'cccccccccc',

                        'cccccccccc',

                        'cc__cc__cc'

                    ],

                    naming: {//设置行列等信息

                        top: false, //不显示顶部横坐标（行） 

                        getLabel: function(character, row, column) { //返回座位信息 

                            return column;

                        }

                    },

                    legend: {//定义图例

                        node: $('#legend'),

                        items: [

                            ['c', 'available', '可选座'],

                            ['c', 'unavailable', '已售出']

                        ]

                    },

                    click: function() {

                        if (this.status() == 'available') { //若为可选座状态，添加座位

                            $('<li>' + (this.settings.row + 1) + '排' + this.settings.label + '座</li>')

                                    .attr('id', 'cart-item-' + this.settings.id)

                                    .data('seatId', this.settings.id)

                                    .appendTo($cart);



                            $tickects_num.text(sc.find('selected').length + 1); //统计选票数量

                            $total_price.text(getTotalPrice(sc) + price);//计算票价总金额



                            return 'selected';

                        } else if (this.status() == 'selected') { //若为选中状态



                            $tickects_num.text(sc.find('selected').length - 1);//更新票数量

                            $total_price.text(getTotalPrice(sc) - price);//更新票价总金额

                            $('#cart-item-' + this.settings.id).remove();//删除已预订座位



                            return 'available';

                        } else if (this.status() == 'unavailable') { //若为已售出状态

                            return 'unavailable';

                        } else {

                            return this.style();

                        }

                    }

                });

                //设置已售出的座位

                sc.get(['1_4', '4_4', '4_5', '4_6', '4_7', '4_8']).status('unavailable');



            });



            function getTotalPrice(sc) { //计算票价总额

                var total = 0;

                sc.find('selected').each(function() {

                    total += price;

                });

                return total;

            }

        </script>



    </body>

</html>





