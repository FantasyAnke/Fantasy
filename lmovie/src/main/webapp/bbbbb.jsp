<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="http://dianying.nuomi.com/static/title.ico">

<title>糯米电影</title>

<title>
    百度电影
</title>

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

<div class="widget-buy-seat clearfix" id="widgetBuySeat">
    <div class="content-left fl">
        <div id="pageletSelect">
<div id="pagination"></div>

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


</body></html>