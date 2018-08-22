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

<link rel="stylesheet" href="index2/lib.css"><link rel="stylesheet" href="index2/ui.css"><link rel="stylesheet" href="index2/dialog_f5e2c3d.css"><link rel="stylesheet" href="index2/ranklist_778b93f.css"><link type="text/css" rel="stylesheet" href="index2/cinema.css"></head>

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
          <!--   <a class="nav active" href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="/A307/index2.jsp">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="/A307/index3.jsp">票房</a> -->
        </div>
    </div>
</div>



<script type="text/javascript" src="index2/uni_login_wrapper.js"></script>







<div class="main" id="main">

    <div class="content" id="content">
        

<div class="common-layout clearfix">
    
    <div class="con-center">
        
    </div>

   <div class="clearfix">
    
<div class="con-left">
    


<div class="widget-cinema-cinema" id="widgetCinemaCinema">

    <div id="pageletCinema">













<div class="widget-cinema-cinema-filter" id="cinemaCinemaFilter" mode="async">
    <div class="area clearfix">
        <div class="name fl">区域</div>
        <div class="list fl">
            <ul class="list-first clearfix">
                <li id="areaAll" class="all filter-active" data-target="all"><span>全部</span></li>
                <li class="" data-target="area"><span>行政区</span></li>
                <li class="" data-target="subway"><span>地铁附近</span></li>
            </ul>
            <div data-src="all">
                
                <ul class="list-sec area-sec clearfix" data-src="area" id="aoiList">
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="8442" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>鼓楼</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2393" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>尉氏</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="8444" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>金明</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="8440" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>龙亭</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1255" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>祥符</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1927" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>兰考</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2077" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>通许</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2388" data-log="{'da_src':'webCinemaPg.filterBk.areaLnk'}"><span>杞县</span></li>
                    
                </ul>
                
                
            </div>
        </div>
    </div>
    <div class="cinema clearfix">
        <div class="name fl">影院</div>

        <!--div class="all fl active">全部</div-->
        <div class="list fl">
            <ul class="list-first slideup clearfix" id="brandList">
                <li id="brandAll" class="all filter-active" data-type="cinema-filter"><span>全部</span></li>
                
                <li class="" data-type="cinema-filter" data-key="brandId" data-id="32" data-log="{'da_src':'webCinemaPg.filterBk.cinemaLnk'}"><span>奥斯卡国际影城</span></li>
                
                <li class="" data-type="cinema-filter" data-key="brandId" data-id="11" data-log="{'da_src':'webCinemaPg.filterBk.cinemaLnk'}"><span>横店电影城</span></li>
                
                <li class="" data-type="cinema-filter" data-key="brandId" data-id="76" data-log="{'da_src':'webCinemaPg.filterBk.cinemaLnk'}"><span>大地影院</span></li>
                
                <li class="" data-type="cinema-filter" data-key="brandId" data-id="1" data-log="{'da_src':'webCinemaPg.filterBk.cinemaLnk'}"><span>其他</span></li>
                
            </ul>
            
        </div>
    </div>
</div>

<div class="widget-cinema-cinema-cinemalist" id="cinemaCinemalist">
    <ul>
        

        <div id="pageletCinemalist">




    <li class="clearfix">
        <div class="info fl">
            <p class="title"><span class="name" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1649}" data-log="{'da_src':'webCinemaPg.cinemalistBk.nameLnk'}">开封横店电影城</span>
                
            </p>
            <p class="addr clearfix"><span class="fl text">开封市鼓楼区中山路北段319号光彩商业街3楼</span><!--<em class="loc"></em>--></p>

        </div>
       
        <div class="btns fr single">
   		 <p class="clearfix"><a class="btn seat-btn fr" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1649}" href="javascript:;" data-log="{'da_src':'webCinemaPg.cinemalistBk.moreBtn'}">选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">20.9</em>起</p>
        </div>
    </li>



    <!-- <li class="clearfix">
        <div class="info fl">
            <p class="title"><span class="name" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:3936}" data-log="{'da_src':'webCinemaPg.cinemalistBk.nameLnk'}">大地影院(开封江南帝州店)</span>
                
            </p>
            <p class="addr clearfix"><span class="fl text">开封市鼓楼区解放路与自由路交叉口大润发4楼</span><em class="loc"></em></p>

            影院服务
            <p class="clearfix">
                <span class="service service-1"></span> <span class="service service-2"></span>
                <span class="service service-3"></span> <span class="service service-4"></span>
            </p>
        </div>
        div class="star fl clearfix">
            <span class="star-bg fl"><span class="star-inner" style="width: 40px"></span></span><span class="record fl">8.2</span>
        </div
        <div class="btns fr single">
            

            
            <p class="clearfix"><a class="btn seat-btn fr" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:3936}" href="javascript:;" data-log="{'da_src':'webCinemaPg.cinemalistBk.moreBtn'}">选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">19.9</em>起</p>
        </div>
    </li>



    <li class="clearfix">
        <div class="info fl">
            <p class="title"><span class="name" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1652}" data-log="{'da_src':'webCinemaPg.cinemalistBk.nameLnk'}">开封奥斯卡影城</span>
                
            </p>
            <p class="addr clearfix"><span class="fl text">开封市龙亭区西门大街388号大商新玛特开封总店4楼</span><em class="loc"></em></p>

            影院服务
            <p class="clearfix">
                <span class="service service-1"></span> <span class="service service-2"></span>
                <span class="service service-3"></span> <span class="service service-4"></span>
            </p>
        </div>
        div class="star fl clearfix">
            <span class="star-bg fl"><span class="star-inner" style="width: 40px"></span></span><span class="record fl">8.2</span>
        </div
        <div class="btns fr single">
            

            
            <p class="clearfix"><a class="btn seat-btn fr" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1652}" href="javascript:;" data-log="{'da_src':'webCinemaPg.cinemalistBk.moreBtn'}">选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">19.9</em>起</p>
        </div>
    </li>



    <li class="clearfix">
        <div class="info fl">
            <p class="title"><span class="name" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1650}" data-log="{'da_src':'webCinemaPg.cinemalistBk.nameLnk'}">开封东京电影城</span>
                
            </p>
            <p class="addr clearfix"><span class="fl text">开封市金明区大梁路西段汴梁小宋城内(原东京艺术中心)</span><em class="loc"></em></p>

            影院服务
            <p class="clearfix">
                <span class="service service-1"></span> <span class="service service-2"></span>
                <span class="service service-3"></span> <span class="service service-4"></span>
            </p>
        </div>
        div class="star fl clearfix">
            <span class="star-bg fl"><span class="star-inner" style="width: 40px"></span></span><span class="record fl">8.2</span>
        </div
        <div class="btns fr single">
            

            
            <p class="clearfix"><a class="btn seat-btn fr" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1650}" href="javascript:;" data-log="{'da_src':'webCinemaPg.cinemalistBk.moreBtn'}">选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">26</em>起</p>
        </div>
    </li>



    <li class="clearfix">
        <div class="info fl">
            <p class="title"><span class="name" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1651}" data-log="{'da_src':'webCinemaPg.cinemalistBk.nameLnk'}">开封开元时代影城</span>
                
            </p>
            <p class="addr clearfix"><span class="fl text">开封市金明区金明大道与晋安路交叉口开元商业广场3楼</span><em class="loc"></em></p>

            影院服务
            <p class="clearfix">
                <span class="service service-1"></span> <span class="service service-2"></span>
                <span class="service service-3"></span> <span class="service service-4"></span>
            </p>
        </div>
        div class="star fl clearfix">
            <span class="star-bg fl"><span class="star-inner" style="width: 40px"></span></span><span class="record fl">8.2</span>
        </div
        <div class="btns fr single">
            

            
            <p class="clearfix"><a class="btn seat-btn fr" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1651}" href="javascript:;" data-log="{'da_src':'webCinemaPg.cinemalistBk.moreBtn'}">选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">19.9</em>起</p>
        </div>
    </li>



    <li class="clearfix">
        <div class="info fl">
            <p class="title"><span class="name" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:8744}" data-log="{'da_src':'webCinemaPg.cinemalistBk.nameLnk'}">尉州奥斯卡影城</span>
                
            </p>
            <p class="addr clearfix"><span class="fl text">开封市尉氏县尉州大道与滨河路交叉口向西100米路北尉州商务酒店4楼</span><em class="loc"></em></p>

            影院服务
            <p class="clearfix">
                <span class="service service-1"></span> <span class="service service-2"></span>
                <span class="service service-3"></span> <span class="service service-4"></span>
            </p>
        </div>
        div class="star fl clearfix">
            <span class="star-bg fl"><span class="star-inner" style="width: 40px"></span></span><span class="record fl">8.2</span>
        </div
        <div class="btns fr single">
            

            
            <p class="clearfix"><a class="btn seat-btn fr" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:8744}" href="javascript:;" data-log="{'da_src':'webCinemaPg.cinemalistBk.moreBtn'}">选座购票</a>

            </p>
            
        </div>
        <div class="price fr">
            

            <p class="seat"><em class="dollar">￥</em><em class="num">19.9</em>起</p>
        </div>
    </li> -->


</div>
        <div class="loading hide">加载中...</div>
    </ul>

    
    <div class="more" id="moreCinema" data-totalnum="18" data-log="{'da_src':'webCinemaPg.filterBk.moreLnk'}">点击查看更多影院&nbsp;&nbsp;&gt;</div>
    
</div></div>

</div>




</div>

    
<div class="con-right">
    
<div class="widget-common-ranklist" id="commonRanklist">
    <h2 class="subtitle sub-title">当日票房排行榜</h2>
    <ul class="ranklist" id="ranklist"><li class="item">    <span class="rank top">1.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}">西虹市首富    <em class="num font12                 ">        2517.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}"><img src="index2/8644ebf81a4c510f15d2a2cd6c59252dd52aa5d7.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">2.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94959}">狄仁杰之四大天王    <em class="num font12                 ">        659</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94959}"><img src="index2/dbb44aed2e738bd4817e54cbad8b87d6267ff9e9.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">3.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95539}">风语咒    <em class="num font12                 ">        446.2</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95539}"><img src="index2/3bf33a87e950352a0c1e99ec5f43fbf2b3118bd3.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">4.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95743}">小偷家族    <em class="num font12                 ">        425.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95743}"><img src="index2/279759ee3d6d55fbcd8ce9d361224f4a21a4ddf9.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">5.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95620}">神秘世界历险记4    <em class="num font12                 ">        386.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95620}"><img src="index2/32fa828ba61ea8d376bb5aeb9b0a304e241f5847.png"></a>        </div>    </div></li><li class="item selected">    <span class="rank top">6.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95565}">摩天营救    <em class="num font12                 ">        224.3</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95565}"><img src="index2/64380cd7912397ddb664e5e05582b2b7d0a28730.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">7.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95125}">我不是药神    <em class="num font12                 ">        158.3</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95125}"><img src="index2/8c1001e93901213fd65678b558e736d12f2e9575.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">8.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}">的士速递5    <em class="num font12                 ">        69.7</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}"><img src="index2/738b4710b912c8fc116f2816f0039245d7882149.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">9.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95769}">浴血广昌    <em class="num font12                 ">        32.6</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95769}"><img src="index2/b64543a98226cffcb0b6cc5db5014a90f703ea45.jpg"></a>        </div>    </div></li><li class="item">    <span class="rank top">10.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95734}">解码游戏    <em class="num font12                 ">        18.7</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95734}"><img src="index2/1e30e924b899a9010360acfc11950a7b0308f5a7.jpg"></a>        </div>    </div></li></ul>
    <!--p class="time">统计时间：06.12-06.20</p-->
</div>



</div>
   </div>

    
    <div class="con-center-bottom">
        
    </div>

</div>





    </div>

</div>






<img id="statImgNew" style="display:none" src="index2/transparent.gif"></div>
<script type="text/javascript" src="index2/lib.js"></script><script type="text/javascript" src="index2/http_07a1657.js"></script><script type="text/javascript" src="index2/cookie_f4c070a.js"></script><script type="text/javascript" src="index2/util.js"></script><script type="text/javascript" src="index2/bdTemplate_28b34e7.js"></script><script type="text/javascript" src="index2/main_ed5455d.js"></script><script type="text/javascript" src="index2/Dialog_a99a6d7.js"></script><script type="text/javascript" src="index2/dialog_3a6ceae.js"></script><script type="text/javascript" src="index2/ui.js"></script><script type="text/javascript" src="index2/cinema.js"></script><script type="text/javascript" src="index2/ranklist_bf09e32.js"></script><script type="text/javascript">!function() {

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
window.addStat({
da_src:'webCinamaPg',
da_act:'ready'
});

require('cinema:widget/cinema/cinema.js').init();
}();
!function() {

var opt = {
    page:"webCinamaPg"
};
require("common:widget/ranklist/ranklist.js").init(opt);

}();</script><a href="javascript:;" class="widget-common-backup backup-btn" id="widgetCommonBackup" style="bottom: 40px; right: 100px;">    <span class="arrow"></span>    <em class="arrow-in"></em></a>


</body></html>