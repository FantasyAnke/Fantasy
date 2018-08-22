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
<!-- <link rel="shortcut icon" href="http://dianying.nuomi.com/static/title.ico"> -->

<title>糯米电影</title>


<title>
    百度电影
</title>

<link rel="stylesheet" href="index3/lib.css"><link rel="stylesheet" href="index3/ui.css"><link rel="stylesheet" href="index3/dialog_f5e2c3d.css"><link rel="stylesheet" href="index3/pager_a7cdf14.css"><link rel="stylesheet" href="index3/boxoffice_1f98663.css"><link rel="stylesheet" href="index3/calendar_07209c7.css"><link rel="stylesheet" href="index3/overall_ca14e03.css"><link rel="stylesheet" href="index3/listdetail_cbfaf5c.css"></head>

<body>
<div id="page">



<div class="widget-common-nav" id="movieNav">
    <div class="content-center">
        <!-- <a href="https://www.nuomi.com/" target="_blank">
            <div class="logo fl"></div>
        </a> -->
        
<div class="widget-common-nav-city" "="">
<div class="city-area fl" id="cityArea">
    <!-- 显示当前城市 -->
    <p class="selected font-grey clearfix"><span id="selectedCity">开封</span><span class="arrow"></span></p>

    <div class="citylist" id="citylist">
        <h3>热门城市</h3>
        <ul id="hotCityList"><li>    <a href="javascript:;" data-id="131" data-name="北京">北京</a></li><li>    <a href="javascript:;" data-id="289" data-name="上海">上海</a></li><li>    <a href="javascript:;" data-id="179" data-name="杭州">杭州</a></li><li>    <a href="javascript:;" data-id="257" data-name="广州">广州</a></li><li>    <a href="javascript:;" data-id="340" data-name="深圳">深圳</a></li><li>    <a href="javascript:;" data-id="132" data-name="重庆">重庆</a></li><li>    <a href="javascript:;" data-id="75" data-name="成都">成都</a></li><li>    <a href="javascript:;" data-id="315" data-name="南京">南京</a></li><li>    <a href="javascript:;" data-id="218" data-name="武汉">武汉</a></li><li>    <a href="javascript:;" data-id="233" data-name="西安">西安</a></li><li>    <a href="javascript:;" data-id="194" data-name="厦门">厦门</a></li><li>    <a href="javascript:;" data-id="332" data-name="天津">天津</a></li></ul>
        <a href="javascript:;" data-url="/home/citylist" class="link morelink font-shadow">更多城市 &gt;</a></div>
</div>
</div>


        
        <div class="search fr">
            <form action="findSearch" method="post">
        	<input  placeholder="搜你感兴趣的电影" type="text" name="movieDBName"  >
       		 <span  class="icon"  data-log="{'da_src':'navBk.searchBtn'}">
       			<input type="submit" value="搜索" style="width:38px;height:32px;">
       		</span>  
       		 
        </form>
        </div>
    </div>
</div>





<div class="widget-common-menu">
    <div class="content-center">
        <div class="fr user-info hide" id="userInfo">
            <span class="username fr font-grey font14 clearfix" id="userName" data-url="/user">
                <img class="avatar fl hide" src="">
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
        <span class="username fr font-grey font14" id="userLogin" data-log="{'da_src':'menuBk.loginBtn'}">登录</span>
       <!--  <a class="cellphone fr font-grey font14" href="https://d.nuomi.com/inter/group" data-log="{'da_src':'menuBk.downloadLnk'}" target="_blank">APP下载</a> -->
        <div class="list clearfix">
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.homeLnk'}" data-url="/A307/findAll">首页</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.movieLnk'}" data-url="/A307/findhit">影片</a>
           <!--  <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="/A307/index2.jsp">影院</a>
            <a class="nav active" href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="/A307/index3.jsp">票房</a> -->
        </div>
    </div>
</div>



<script type="text/javascript" src="index3/uni_login_wrapper.js"></script>







<div class="main" id="main">

    <div class="content" id="content">
        
	<div class="widget-box-office" id="widgetBoxOffice">

    
<div class="widget-box-office-calendar" id="boxOfficeCalendar">
    <div class="selectedDay" id="selectedDay">2018年08月08日</div>
    <div class="calendar-togger"></div>
    <div class="calendar"><table><caption><a class="widget-prevYear" href="javascript:;">&lt;&lt;</a><a class="widget-prevMonth" href="javascript:;">&lt;</a><span>2018年8月</span><a class="widget-nextMonth" href="javascript:;">&gt;</a><a class="widget-nextYear" href="javascript:;">&gt;&gt;</a><a class="widget-back" href="javascript:;" style="display: none;">今天</a></caption><thead><tr><th>日</th><th>一</th><th>二</th><th>三</th><th>四</th><th>五</th><th>六</th></tr></thead><tbody><tr><td data-id="0"><span>29</span></td><td data-id="1"><span>30</span></td><td data-id="2"><span>31</span></td><td data-id="3"><span>1</span></td><td data-id="4"><span>2</span></td><td data-id="5"><span>3</span></td><td data-id="6"><span>4</span></td></tr><tr><td data-id="7"><span>5</span></td><td data-id="8"><span>6</span></td><td data-id="9"><span>7</span></td><td class="widget-highlight widget-today" data-id="10"><span>8</span></td><td data-id="11"><span>9</span></td><td data-id="12"><span>10</span></td><td data-id="13"><span>11</span></td></tr><tr><td data-id="14"><span>12</span></td><td data-id="15"><span>13</span></td><td data-id="16"><span>14</span></td><td data-id="17"><span>15</span></td><td data-id="18"><span>16</span></td><td data-id="19"><span>17</span></td><td data-id="20"><span>18</span></td></tr><tr><td data-id="21"><span>19</span></td><td data-id="22"><span>20</span></td><td data-id="23"><span>21</span></td><td data-id="24"><span>22</span></td><td data-id="25"><span>23</span></td><td data-id="26"><span>24</span></td><td data-id="27"><span>25</span></td></tr><tr><td data-id="28"><span>26</span></td><td data-id="29"><span>27</span></td><td data-id="30"><span>28</span></td><td data-id="31"><span>29</span></td><td data-id="32"><span>30</span></td><td data-id="33"><span>31</span></td><td class="widget-disabled" data-id="34"><span>1</span></td></tr></tbody></table></div>
</div>

    

<div class="widget-box-overall" id="boxOverall">
    <div class="container clearfix">

        <h3 class="outline" id="outline">今日大盘（周三）</h3>
        <div class="details">
            <div class="left-nums">
                <p class="big-num">
                    <span id="total-boxNum">5157.56</span>万
                </p>
                <p class="real-time">
                    <span id="total-message">截至北京时间16:20:39</span>
                </p>
                <p class="predict-num">
                    <span>票房预测:<i id="total-predictBox"></i>万</span>
                </p>
            </div>

            <ul class="three-num clearfix">
                <li>
                    <p class="p-up"><span id="total-ticketNum">149.64</span>万</p>
                    <p>人次</p>
                </li>
                <li class="center-li">
                    <p class="p-up"><span id="total-scheNum">30.97</span>万</p>
                    <p>场次</p>
                </li>
                <li class="right-li">
                    <p class="p-up"><span id="total-avgPrice">34.5</span>元</p>
                    <p>平均票价</p>
                </li>
            </ul>
        </div>

    </div>
</div>

    

<div class="widget-list-detail">
    <div class="detail-container">

        <h3 class="detail-outline">影片明细</h3>
        <dl class="movie-table" id="movie-table"><dt class="table-title clearfix"><div class="column colm-1">影片</div><div class="column colm-2">实时票房</div><div class="column colm-3">票房占比</div><div class="column colm-4">排片占比</div><div class="column colm-5">上座率</div><div class="column colm-6">排座占比</div><div class="column colm-7">场次</div><div class="column colm-8">人次</div><div class="column colm-9">场均人次</div><div class="column colm-10">场均收入</div><div class="column colm-11">平均票价</div></dt><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95452" data-data="{&quot;movieId&quot;:95452}"><h5 class="movie-title">西虹市首富</h5><ul class="movie-info clearfix"><li class="days">上映13天</li><li class="totals"><span>21.29亿</span></li></ul></div><div class="column colm-2">2605.8万</div><div class="column colm-3">49.88%</div><div class="column colm-4">43.83%</div><div class="column colm-5">6.32%</div><div class="column colm-6">53.54%</div><div class="column colm-7">13.57万</div><div class="column colm-8">75.37万</div><div class="column colm-9">6</div><div class="column colm-10">183</div><div class="column colm-11">34</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=94959" data-data="{&quot;movieId&quot;:94959}"><h5 class="movie-title">狄仁杰之四大天王</h5><ul class="movie-info clearfix"><li class="days">上映13天</li><li class="totals"><span>5.57亿</span></li></ul></div><div class="column colm-2">684.8万</div><div class="column colm-3">13.03%</div><div class="column colm-4">13.1%</div><div class="column colm-5">5.89%</div><div class="column colm-6">11.96%</div><div class="column colm-7">4.06万</div><div class="column colm-8">15.68万</div><div class="column colm-9">4</div><div class="column colm-10">160</div><div class="column colm-11">43</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95539" data-data="{&quot;movieId&quot;:95539}"><h5 class="movie-title">风语咒</h5><ul class="movie-info clearfix"><li class="days">上映6天</li><li class="totals"><span>9802.4万</span></li></ul></div><div class="column colm-2">460.2万</div><div class="column colm-3">8.85%</div><div class="column colm-4">9.97%</div><div class="column colm-5">7.41%</div><div class="column colm-6">8.33%</div><div class="column colm-7">3.09万</div><div class="column colm-8">13.74万</div><div class="column colm-9">5</div><div class="column colm-10">142</div><div class="column colm-11">33</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95743" data-data="{&quot;movieId&quot;:95743}"><h5 class="movie-title">小偷家族</h5><ul class="movie-info clearfix"><li class="days">上映6天</li><li class="totals"><span>7262.3万</span></li></ul></div><div class="column colm-2">440.6万</div><div class="column colm-3">8.44%</div><div class="column colm-4">8.29%</div><div class="column colm-5">11.02%</div><div class="column colm-6">6.76%</div><div class="column colm-7">2.57万</div><div class="column colm-8">16.59万</div><div class="column colm-9">7</div><div class="column colm-10">163</div><div class="column colm-11">26</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95620" data-data="{&quot;movieId&quot;:95620}"><h5 class="movie-title">神秘世界历险记4</h5><ul class="movie-info clearfix"><li class="days">上映6天</li><li class="totals"><span>6639.1万</span></li></ul></div><div class="column colm-2">395.4万</div><div class="column colm-3">7.7%</div><div class="column colm-4">7.39%</div><div class="column colm-5">12.31%</div><div class="column colm-6">5.98%</div><div class="column colm-7">2.29万</div><div class="column colm-8">16.38万</div><div class="column colm-9">7</div><div class="column colm-10">167</div><div class="column colm-11">24</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95565" data-data="{&quot;movieId&quot;:95565}"><h5 class="movie-title">摩天营救</h5><ul class="movie-info clearfix"><li class="days">上映20天</li><li class="totals"><span>6.55亿</span></li></ul></div><div class="column colm-2">233.2万</div><div class="column colm-3">4.44%</div><div class="column colm-4">4.53%</div><div class="column colm-5">7.41%</div><div class="column colm-6">3.77%</div><div class="column colm-7">1.40万</div><div class="column colm-8">6.23万</div><div class="column colm-9">5</div><div class="column colm-10">157</div><div class="column colm-11">37</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95125" data-data="{&quot;movieId&quot;:95125}"><h5 class="movie-title">我不是药神</h5><ul class="movie-info clearfix"><li class="days">上映35天</li><li class="totals"><span>30.55亿</span></li></ul></div><div class="column colm-2">163.8万</div><div class="column colm-3">3.14%</div><div class="column colm-4">3.99%</div><div class="column colm-5">9.59%</div><div class="column colm-6">2.92%</div><div class="column colm-7">1.24万</div><div class="column colm-8">6.24万</div><div class="column colm-9">5</div><div class="column colm-10">126</div><div class="column colm-11">26</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95722" data-data="{&quot;movieId&quot;:95722}"><h5 class="movie-title">的士速递5</h5><ul class="movie-info clearfix"><li class="days">上映6天</li><li class="totals"><span>2766.7万</span></li></ul></div><div class="column colm-2">72.4万</div><div class="column colm-3">1.38%</div><div class="column colm-4">4.36%</div><div class="column colm-5">3.57%</div><div class="column colm-6">3.32%</div><div class="column colm-7">1.35万</div><div class="column colm-8">2.64万</div><div class="column colm-9">2</div><div class="column colm-10">50</div><div class="column colm-11">27</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95769" data-data="{&quot;movieId&quot;:95769}"><h5 class="movie-title">浴血广昌</h5><ul class="movie-info clearfix"><li class="days">上映8天</li><li class="totals"><span>221.4万</span></li></ul></div><div class="column colm-2">32.9万</div><div class="column colm-3">0.65%</div><div class="column colm-4">0.18%</div><div class="column colm-5">49.21%</div><div class="column colm-6">0.14%</div><div class="column colm-7">543</div><div class="column colm-8">1.51万</div><div class="column colm-9">27</div><div class="column colm-10">598</div><div class="column colm-11">22</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95734" data-data="{&quot;movieId&quot;:95734}"><h5 class="movie-title">解码游戏</h5><ul class="movie-info clearfix"><li class="days">上映6天</li><li class="totals"><span>834.2万</span></li></ul></div><div class="column colm-2">18.9万</div><div class="column colm-3">0.37%</div><div class="column colm-4">1.56%</div><div class="column colm-5">3.42%</div><div class="column colm-6">1.12%</div><div class="column colm-7">4823</div><div class="column colm-8">8563</div><div class="column colm-9">2</div><div class="column colm-10">38</div><div class="column colm-11">22</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95768" data-data="{&quot;movieId&quot;:95768}"><h5 class="movie-title">妈妈咪呀2</h5><ul class="movie-info clearfix"><li class="days">上映6天</li><li class="totals"><span>267.3万</span></li></ul></div><div class="column colm-2">18万</div><div class="column colm-3">0.35%</div><div class="column colm-4">0.56%</div><div class="column colm-5">8.36%</div><div class="column colm-6">0.45%</div><div class="column colm-7">1738</div><div class="column colm-8">8318</div><div class="column colm-9">5</div><div class="column colm-10">100</div><div class="column colm-11">22</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95785" data-data="{&quot;movieId&quot;:95785}"><h5 class="movie-title">信仰者</h5><ul class="movie-info clearfix"><li class="days">上映-16天</li><li class="totals"><span>102.9万</span></li></ul></div><div class="column colm-2">17.7万</div><div class="column colm-3">0.35%</div><div class="column colm-4">0.06%</div><div class="column colm-5">100%</div><div class="column colm-6">0.05%</div><div class="column colm-7">196</div><div class="column colm-8">1.25万</div><div class="column colm-9">61</div><div class="column colm-10">882</div><div class="column colm-11">14</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95682" data-data="{&quot;movieId&quot;:95682}"><h5 class="movie-title">肆式青春</h5><ul class="movie-info clearfix"><li class="days">上映5天</li><li class="totals"><span>233.7万</span></li></ul></div><div class="column colm-2">17.5万</div><div class="column colm-3">0.34%</div><div class="column colm-4">0.71%</div><div class="column colm-5">7.15%</div><div class="column colm-6">0.61%</div><div class="column colm-7">2203</div><div class="column colm-8">9787</div><div class="column colm-9">5</div><div class="column colm-10">77</div><div class="column colm-11">18</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95526" data-data="{&quot;movieId&quot;:95526}"><h5 class="movie-title">邪不压正</h5><ul class="movie-info clearfix"><li class="days">上映27天</li><li class="totals"><span>5.90亿</span></li></ul></div><div class="column colm-2">12万</div><div class="column colm-3">0.23%</div><div class="column colm-4">0.27%</div><div class="column colm-5">10.9%</div><div class="column colm-6">0.17%</div><div class="column colm-7">838</div><div class="column colm-8">4110</div><div class="column colm-9">5</div><div class="column colm-10">138</div><div class="column colm-11">29</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95445" data-data="{&quot;movieId&quot;:95445}"><h5 class="movie-title">侏罗纪世界2</h5><ul class="movie-info clearfix"><li class="days">上映55天</li><li class="totals"><span>17.85亿</span></li></ul></div><div class="column colm-2">8.3万</div><div class="column colm-3">0.16%</div><div class="column colm-4">0.22%</div><div class="column colm-5">8.65%</div><div class="column colm-6">0.15%</div><div class="column colm-7">696</div><div class="column colm-8">2967</div><div class="column colm-9">5</div><div class="column colm-10">117</div><div class="column colm-11">28</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95619" data-data="{&quot;movieId&quot;:95619}"><h5 class="movie-title">新大头儿子和小头爸爸3：俄罗斯奇遇记</h5><ul class="movie-info clearfix"><li class="days">上映34天</li><li class="totals"><span>1.59亿</span></li></ul></div><div class="column colm-2">8万</div><div class="column colm-3">0.16%</div><div class="column colm-4">0.2%</div><div class="column colm-5">10.99%</div><div class="column colm-6">0.15%</div><div class="column colm-7">610</div><div class="column colm-8">3680</div><div class="column colm-9">6</div><div class="column colm-10">127</div><div class="column colm-11">22</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95669" data-data="{&quot;movieId&quot;:95669}"><h5 class="movie-title">快把我哥带走</h5><ul class="movie-info clearfix"><li class="days">上映-9天</li><li class="totals"><span>7.3万</span></li></ul></div><div class="column colm-2">7.3万</div><div class="column colm-3">0.15%</div><div class="column colm-4">0.01%</div><div class="column colm-5">100%</div><div class="column colm-6">0.01%</div><div class="column colm-7">33</div><div class="column colm-8">3952</div><div class="column colm-9">114</div><div class="column colm-10">2218</div><div class="column colm-11">19</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=10191" data-data="{&quot;movieId&quot;:10191}"><h5 class="movie-title">神奇马戏团之动物饼干</h5><ul class="movie-info clearfix"><li class="days">上映19天</li><li class="totals"><span>4757.1万</span></li></ul></div><div class="column colm-2">5万</div><div class="column colm-3">0.1%</div><div class="column colm-4">0.21%</div><div class="column colm-5">6.9%</div><div class="column colm-6">0.14%</div><div class="column colm-7">635</div><div class="column colm-8">2161</div><div class="column colm-9">4</div><div class="column colm-10">76</div><div class="column colm-11">23</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95674" data-data="{&quot;movieId&quot;:95674}"><h5 class="movie-title">超人总动员2</h5><ul class="movie-info clearfix"><li class="days">上映48天</li><li class="totals"><span>3.66亿</span></li></ul></div><div class="column colm-2">4.4万</div><div class="column colm-3">0.09%</div><div class="column colm-4">0.07%</div><div class="column colm-5">20.4%</div><div class="column colm-6">0.04%</div><div class="column colm-7">213</div><div class="column colm-8">2036</div><div class="column colm-9">10</div><div class="column colm-10">204</div><div class="column colm-11">22</div></dd><dd class="each-movie clearfix"><div class="column colm-1" to-url="/movie/detail?movieId=95775" data-data="{&quot;movieId&quot;:95775}"><h5 class="movie-title">李保国</h5><ul class="movie-info clearfix"><li class="days">上映15天</li><li class="totals"><span>19.5万</span></li></ul></div><div class="column colm-2">3.3万</div><div class="column colm-3">0.07%</div><div class="column colm-4">0.25%</div><div class="column colm-5">4.48%</div><div class="column colm-6">0.22%</div><div class="column colm-7">777</div><div class="column colm-8">2190</div><div class="column colm-9">3</div><div class="column colm-10">42</div><div class="column colm-11">15</div></dd></dl>
    </div>
</div>


</div>




    </div>

</div>






<img id="statImgNew" style="display:none"></div>
<script type="text/javascript" src="index3/lib.js"></script><script type="text/javascript" src="index3/http_07a1657.js"></script><script type="text/javascript" src="index3/cookie_f4c070a.js"></script><script type="text/javascript" src="index3/util.js"></script><script type="text/javascript" src="index3/bdTemplate_28b34e7.js"></script><script type="text/javascript" src="index3/main_ed5455d.js"></script><script type="text/javascript" src="index3/Dialog_a99a6d7.js"></script><script type="text/javascript" src="index3/dialog_3a6ceae.js"></script><script type="text/javascript" src="index3/ui.js"></script><script type="text/javascript" src="index3/Pagination_2ff14ea.js"></script><script type="text/javascript" src="index3/pager_65de8b7.js"></script><script type="text/javascript" src="index3/util_5884881.js"></script><script type="text/javascript" src="index3/calendarmaker_ec2d361.js"></script><script type="text/javascript" src="index3/boxoffice_a82ea7d.js"></script><script type="text/javascript">!function() {

window._commonData = {"location":{"cityId":210,"cityName":"开封"},"user":{"status":false},"https":false};

}();
!function() {

require("common:widget/nav/city/city.js").init();

}();
!function() {
require('common:widget/nav/nav.js').init();
}();
!function() {
require("common:widget/menu/menu.js").init({"location":{"cityId":210,"cityName":"开封"},"user":{"status":false},"https":false});
}();
!function() {

    require('movie:widget/boxoffice/boxoffice.js').init({
        real: {"errorNo":0,"errorMsg":"Success","data":{"total":{"boxNum":5155.42,"message":"北京时间16:20:28","thisTip":"2016年","scheNum":"30.97","ticketNum":149.58,"avgPrice":34.5},"detail":[{"movieId":95452,"movieName":"西虹市首富","attribute":{"1":{"attrName":"上映天数","attrValue":13},"2":{"attrName":"累计票房","attrValue":"21.29亿"},"3":{"attrName":"实时票房","attrValue":"2604.7万"},"4":{"attrName":"票房占比","attrValue":49.88},"5":{"attrName":"排片占比","attrValue":43.83},"6":{"attrName":"上座率","attrValue":6.32},"7":{"attrName":"排座占比","attrValue":53.54},"8":{"attrName":"场次","attrValue":"13.57万"},"9":{"attrName":"人次","attrValue":"75.34万"},"10":{"attrName":"场均人次","attrValue":6},"11":{"attrName":"场均收入","attrValue":183},"12":{"attrName":"平均票价","attrValue":34}}},{"movieId":94959,"movieName":"狄仁杰之四大天王","attribute":{"1":{"attrName":"上映天数","attrValue":13},"2":{"attrName":"累计票房","attrValue":"5.57亿"},"3":{"attrName":"实时票房","attrValue":"684.5万"},"4":{"attrName":"票房占比","attrValue":13.03},"5":{"attrName":"排片占比","attrValue":13.1},"6":{"attrName":"上座率","attrValue":5.89},"7":{"attrName":"排座占比","attrValue":11.96},"8":{"attrName":"场次","attrValue":"4.06万"},"9":{"attrName":"人次","attrValue":"15.68万"},"10":{"attrName":"场均人次","attrValue":4},"11":{"attrName":"场均收入","attrValue":160},"12":{"attrName":"平均票价","attrValue":43}}},{"movieId":95539,"movieName":"风语咒","attribute":{"1":{"attrName":"上映天数","attrValue":6},"2":{"attrName":"累计票房","attrValue":"9802.4万"},"3":{"attrName":"实时票房","attrValue":"460万"},"4":{"attrName":"票房占比","attrValue":8.85},"5":{"attrName":"排片占比","attrValue":9.97},"6":{"attrName":"上座率","attrValue":7.41},"7":{"attrName":"排座占比","attrValue":8.33},"8":{"attrName":"场次","attrValue":"3.09万"},"9":{"attrName":"人次","attrValue":"13.74万"},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":142},"12":{"attrName":"平均票价","attrValue":33}}},{"movieId":95743,"movieName":"小偷家族","attribute":{"1":{"attrName":"上映天数","attrValue":6},"2":{"attrName":"累计票房","attrValue":"7262.3万"},"3":{"attrName":"实时票房","attrValue":"440.5万"},"4":{"attrName":"票房占比","attrValue":8.44},"5":{"attrName":"排片占比","attrValue":8.29},"6":{"attrName":"上座率","attrValue":11.02},"7":{"attrName":"排座占比","attrValue":6.76},"8":{"attrName":"场次","attrValue":"2.57万"},"9":{"attrName":"人次","attrValue":"16.58万"},"10":{"attrName":"场均人次","attrValue":7},"11":{"attrName":"场均收入","attrValue":163},"12":{"attrName":"平均票价","attrValue":26}}},{"movieId":95620,"movieName":"神秘世界历险记4","attribute":{"1":{"attrName":"上映天数","attrValue":6},"2":{"attrName":"累计票房","attrValue":"6639.1万"},"3":{"attrName":"实时票房","attrValue":"395.3万"},"4":{"attrName":"票房占比","attrValue":7.7},"5":{"attrName":"排片占比","attrValue":7.39},"6":{"attrName":"上座率","attrValue":12.31},"7":{"attrName":"排座占比","attrValue":5.98},"8":{"attrName":"场次","attrValue":"2.29万"},"9":{"attrName":"人次","attrValue":"16.38万"},"10":{"attrName":"场均人次","attrValue":7},"11":{"attrName":"场均收入","attrValue":167},"12":{"attrName":"平均票价","attrValue":24}}},{"movieId":95565,"movieName":"摩天营救","attribute":{"1":{"attrName":"上映天数","attrValue":20},"2":{"attrName":"累计票房","attrValue":"6.55亿"},"3":{"attrName":"实时票房","attrValue":"233.1万"},"4":{"attrName":"票房占比","attrValue":4.44},"5":{"attrName":"排片占比","attrValue":4.53},"6":{"attrName":"上座率","attrValue":7.41},"7":{"attrName":"排座占比","attrValue":3.77},"8":{"attrName":"场次","attrValue":"1.40万"},"9":{"attrName":"人次","attrValue":"6.23万"},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":157},"12":{"attrName":"平均票价","attrValue":37}}},{"movieId":95125,"movieName":"我不是药神","attribute":{"1":{"attrName":"上映天数","attrValue":35},"2":{"attrName":"累计票房","attrValue":"30.55亿"},"3":{"attrName":"实时票房","attrValue":"163.8万"},"4":{"attrName":"票房占比","attrValue":3.14},"5":{"attrName":"排片占比","attrValue":3.99},"6":{"attrName":"上座率","attrValue":9.59},"7":{"attrName":"排座占比","attrValue":2.92},"8":{"attrName":"场次","attrValue":"1.24万"},"9":{"attrName":"人次","attrValue":"6.23万"},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":126},"12":{"attrName":"平均票价","attrValue":26}}},{"movieId":95722,"movieName":"的士速递5","attribute":{"1":{"attrName":"上映天数","attrValue":6},"2":{"attrName":"累计票房","attrValue":"2766.7万"},"3":{"attrName":"实时票房","attrValue":"72.4万"},"4":{"attrName":"票房占比","attrValue":1.38},"5":{"attrName":"排片占比","attrValue":4.36},"6":{"attrName":"上座率","attrValue":3.57},"7":{"attrName":"排座占比","attrValue":3.32},"8":{"attrName":"场次","attrValue":"1.35万"},"9":{"attrName":"人次","attrValue":"2.64万"},"10":{"attrName":"场均人次","attrValue":2},"11":{"attrName":"场均收入","attrValue":50},"12":{"attrName":"平均票价","attrValue":27}}},{"movieId":95769,"movieName":"浴血广昌","attribute":{"1":{"attrName":"上映天数","attrValue":8},"2":{"attrName":"累计票房","attrValue":"221.4万"},"3":{"attrName":"实时票房","attrValue":"32.9万"},"4":{"attrName":"票房占比","attrValue":0.65},"5":{"attrName":"排片占比","attrValue":0.18},"6":{"attrName":"上座率","attrValue":49.21},"7":{"attrName":"排座占比","attrValue":0.14},"8":{"attrName":"场次","attrValue":543},"9":{"attrName":"人次","attrValue":"1.51万"},"10":{"attrName":"场均人次","attrValue":27},"11":{"attrName":"场均收入","attrValue":598},"12":{"attrName":"平均票价","attrValue":22}}},{"movieId":95734,"movieName":"解码游戏","attribute":{"1":{"attrName":"上映天数","attrValue":6},"2":{"attrName":"累计票房","attrValue":"834.2万"},"3":{"attrName":"实时票房","attrValue":"18.9万"},"4":{"attrName":"票房占比","attrValue":0.37},"5":{"attrName":"排片占比","attrValue":1.56},"6":{"attrName":"上座率","attrValue":3.42},"7":{"attrName":"排座占比","attrValue":1.12},"8":{"attrName":"场次","attrValue":4823},"9":{"attrName":"人次","attrValue":8559},"10":{"attrName":"场均人次","attrValue":2},"11":{"attrName":"场均收入","attrValue":38},"12":{"attrName":"平均票价","attrValue":22}}},{"movieId":95768,"movieName":"妈妈咪呀2","attribute":{"1":{"attrName":"上映天数","attrValue":6},"2":{"attrName":"累计票房","attrValue":"267.3万"},"3":{"attrName":"实时票房","attrValue":"18万"},"4":{"attrName":"票房占比","attrValue":0.35},"5":{"attrName":"排片占比","attrValue":0.56},"6":{"attrName":"上座率","attrValue":8.36},"7":{"attrName":"排座占比","attrValue":0.45},"8":{"attrName":"场次","attrValue":1738},"9":{"attrName":"人次","attrValue":8314},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":100},"12":{"attrName":"平均票价","attrValue":22}}},{"movieId":95785,"movieName":"信仰者","attribute":{"1":{"attrName":"上映天数","attrValue":-16},"2":{"attrName":"累计票房","attrValue":"102.9万"},"3":{"attrName":"实时票房","attrValue":"17.7万"},"4":{"attrName":"票房占比","attrValue":0.35},"5":{"attrName":"排片占比","attrValue":0.06},"6":{"attrName":"上座率","attrValue":100},"7":{"attrName":"排座占比","attrValue":0.05},"8":{"attrName":"场次","attrValue":196},"9":{"attrName":"人次","attrValue":"1.24万"},"10":{"attrName":"场均人次","attrValue":61},"11":{"attrName":"场均收入","attrValue":882},"12":{"attrName":"平均票价","attrValue":14}}},{"movieId":95682,"movieName":"肆式青春","attribute":{"1":{"attrName":"上映天数","attrValue":5},"2":{"attrName":"累计票房","attrValue":"233.7万"},"3":{"attrName":"实时票房","attrValue":"17.5万"},"4":{"attrName":"票房占比","attrValue":0.34},"5":{"attrName":"排片占比","attrValue":0.71},"6":{"attrName":"上座率","attrValue":7.15},"7":{"attrName":"排座占比","attrValue":0.61},"8":{"attrName":"场次","attrValue":2203},"9":{"attrName":"人次","attrValue":9783},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":77},"12":{"attrName":"平均票价","attrValue":18}}},{"movieId":95526,"movieName":"邪不压正","attribute":{"1":{"attrName":"上映天数","attrValue":27},"2":{"attrName":"累计票房","attrValue":"5.90亿"},"3":{"attrName":"实时票房","attrValue":"12万"},"4":{"attrName":"票房占比","attrValue":0.23},"5":{"attrName":"排片占比","attrValue":0.27},"6":{"attrName":"上座率","attrValue":10.9},"7":{"attrName":"排座占比","attrValue":0.17},"8":{"attrName":"场次","attrValue":838},"9":{"attrName":"人次","attrValue":4108},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":138},"12":{"attrName":"平均票价","attrValue":29}}},{"movieId":95445,"movieName":"侏罗纪世界2","attribute":{"1":{"attrName":"上映天数","attrValue":55},"2":{"attrName":"累计票房","attrValue":"17.85亿"},"3":{"attrName":"实时票房","attrValue":"8.3万"},"4":{"attrName":"票房占比","attrValue":0.16},"5":{"attrName":"排片占比","attrValue":0.22},"6":{"attrName":"上座率","attrValue":8.65},"7":{"attrName":"排座占比","attrValue":0.15},"8":{"attrName":"场次","attrValue":696},"9":{"attrName":"人次","attrValue":2966},"10":{"attrName":"场均人次","attrValue":5},"11":{"attrName":"场均收入","attrValue":117},"12":{"attrName":"平均票价","attrValue":28}}},{"movieId":95619,"movieName":"新大头儿子和小头爸爸3：俄罗斯奇遇记","attribute":{"1":{"attrName":"上映天数","attrValue":34},"2":{"attrName":"累计票房","attrValue":"1.59亿"},"3":{"attrName":"实时票房","attrValue":"8万"},"4":{"attrName":"票房占比","attrValue":0.16},"5":{"attrName":"排片占比","attrValue":0.2},"6":{"attrName":"上座率","attrValue":10.99},"7":{"attrName":"排座占比","attrValue":0.15},"8":{"attrName":"场次","attrValue":610},"9":{"attrName":"人次","attrValue":3678},"10":{"attrName":"场均人次","attrValue":6},"11":{"attrName":"场均收入","attrValue":127},"12":{"attrName":"平均票价","attrValue":22}}},{"movieId":95669,"movieName":"快把我哥带走","attribute":{"1":{"attrName":"上映天数","attrValue":-9},"2":{"attrName":"累计票房","attrValue":"7.3万"},"3":{"attrName":"实时票房","attrValue":"7.3万"},"4":{"attrName":"票房占比","attrValue":0.15},"5":{"attrName":"排片占比","attrValue":0.01},"6":{"attrName":"上座率","attrValue":100},"7":{"attrName":"排座占比","attrValue":0.01},"8":{"attrName":"场次","attrValue":33},"9":{"attrName":"人次","attrValue":3951},"10":{"attrName":"场均人次","attrValue":114},"11":{"attrName":"场均收入","attrValue":2218},"12":{"attrName":"平均票价","attrValue":19}}},{"movieId":10191,"movieName":"神奇马戏团之动物饼干","attribute":{"1":{"attrName":"上映天数","attrValue":19},"2":{"attrName":"累计票房","attrValue":"4757.1万"},"3":{"attrName":"实时票房","attrValue":"5万"},"4":{"attrName":"票房占比","attrValue":0.1},"5":{"attrName":"排片占比","attrValue":0.21},"6":{"attrName":"上座率","attrValue":6.9},"7":{"attrName":"排座占比","attrValue":0.14},"8":{"attrName":"场次","attrValue":635},"9":{"attrName":"人次","attrValue":2160},"10":{"attrName":"场均人次","attrValue":4},"11":{"attrName":"场均收入","attrValue":76},"12":{"attrName":"平均票价","attrValue":23}}},{"movieId":95674,"movieName":"超人总动员2","attribute":{"1":{"attrName":"上映天数","attrValue":48},"2":{"attrName":"累计票房","attrValue":"3.66亿"},"3":{"attrName":"实时票房","attrValue":"4.4万"},"4":{"attrName":"票房占比","attrValue":0.09},"5":{"attrName":"排片占比","attrValue":0.07},"6":{"attrName":"上座率","attrValue":20.4},"7":{"attrName":"排座占比","attrValue":0.04},"8":{"attrName":"场次","attrValue":213},"9":{"attrName":"人次","attrValue":2035},"10":{"attrName":"场均人次","attrValue":10},"11":{"attrName":"场均收入","attrValue":204},"12":{"attrName":"平均票价","attrValue":22}}},{"movieId":95775,"movieName":"李保国","attribute":{"1":{"attrName":"上映天数","attrValue":15},"2":{"attrName":"累计票房","attrValue":"19.5万"},"3":{"attrName":"实时票房","attrValue":"3.3万"},"4":{"attrName":"票房占比","attrValue":0.07},"5":{"attrName":"排片占比","attrValue":0.25},"6":{"attrName":"上座率","attrValue":4.48},"7":{"attrName":"排座占比","attrValue":0.22},"8":{"attrName":"场次","attrValue":777},"9":{"attrName":"人次","attrValue":2189},"10":{"attrName":"场均人次","attrValue":3},"11":{"attrName":"场均收入","attrValue":42},"12":{"attrName":"平均票价","attrValue":15}}}]}},
        pre: [["20180809","20180809"],["20180810","20180810"],["20180811","20180811"],["20180812","20180812"],["20180813","20180813"],["20180814","20180814"],["20180815","20180815"],["20180816","20180816"],["20180817","20180817"],["20180818","20180818"],["20180819","20180819"],["20180820","20180820"],["20180821","20180821"],["20180822","20180822"],["20180823","20180823"],["20180824","20180824"],["20180825","20180825"],["20180826","20180826"],["20180827","20180827"],["20180828","20180828"],["20180829","20180829"],["20180830","20180830"],["20180831","20180831"]],
        index: 4,
        today: {"week":"周三","date":"2018年08月08日"}
    });

}();</script><a href="javascript:;" class="widget-common-backup backup-btn" id="widgetCommonBackup" style="bottom: 40px; right: 100px;">    <span class="arrow"></span>    <em class="arrow-in"></em></a>


</body></html>