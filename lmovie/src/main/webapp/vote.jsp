<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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


<link rel="stylesheet" href="vote/lib.css"><link rel="stylesheet" href="vote/ui.css"><link rel="stylesheet" href="vote/dialog_f5e2c3d.css"><link rel="stylesheet" href="vote/moviedetail.css"><link rel="stylesheet" href="vote/ranklist_778b93f.css"></head>

<body>
<div id="page">



<div class="widget-common-nav" id="movieNav">
    <div class="content-center">
       <!--  <a href="https://www.nuomi.com/" target="_blank">
            <div class="logo fl"></div>
        </a> -->
        
<div class="widget-common-nav-city" "="">
<div class="city-area fl" id="cityArea">
    <!-- 显示当前城市 -->
    <!-- <p class="selected font-grey clearfix"><span id="selectedCity">开封</span><span class="arrow"></span></p>

    <div class="citylist" id="citylist">
        <h3>热门城市</h3>
        <ul id="hotCityList"><li>    <a href="javascript:;" data-id="131" data-name="北京">北京</a></li><li>    <a href="javascript:;" data-id="289" data-name="上海">上海</a></li><li>    <a href="javascript:;" data-id="179" data-name="杭州">杭州</a></li><li>    <a href="javascript:;" data-id="257" data-name="广州">广州</a></li><li>    <a href="javascript:;" data-id="340" data-name="深圳">深圳</a></li><li>    <a href="javascript:;" data-id="132" data-name="重庆">重庆</a></li><li>    <a href="javascript:;" data-id="75" data-name="成都">成都</a></li><li>    <a href="javascript:;" data-id="315" data-name="南京">南京</a></li><li>    <a href="javascript:;" data-id="218" data-name="武汉">武汉</a></li><li>    <a href="javascript:;" data-id="233" data-name="西安">西安</a></li><li>    <a href="javascript:;" data-id="194" data-name="厦门">厦门</a></li><li>    <a href="javascript:;" data-id="332" data-name="天津">天津</a></li></ul>
        <a href="javascript:;" data-url="/home/citylist" class="link morelink font-shadow">更多城市 &gt;</a></div> -->
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
        <div class="fr user-info" id="userInfo">
            <span class="username fr font-grey font14 clearfix" id="userName" data-url="/user">
                <img class="avatar fl hide" src="vote/f3b4334d.jpg">
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
        <!-- <a class="cellphone fr font-grey font14" href="https://d.nuomi.com/inter/group" data-log="{'da_src':'menuBk.downloadLnk'}" target="_blank">APP下载</a> -->
        <div class="list clearfix">
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.homeLnk'}" data-url="${pageContext.servletContext.contextPath }/findAll">首页</a>
            <a class="nav active" href="javascript:;" data-log="{'da_src':'menuBk.movieLnk'}" data-url="${pageContext.servletContext.contextPath }/findhit">影片</a>
           <!--  <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="${pageContext.servletContext.contextPath }/index2.jsp">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="${pageContext.servletContext.contextPath }/index3.jsp">票房</a> -->
        </div>
    </div>
</div>



<script type="text/javascript" src="vote/uni_login_wrapper.js"></script>







<div class="main" id="main">

    <div class="content" id="content">
        


<div class="widget-movie-detail" id="widgetMovieDetail" style="background:url('https://gss0.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/movie/pic/item/728da9773912b31b359f80fe8a18367adbb4e172.jpg') no-repeat center top;background-size:100% auto;">

    

<div class="widget-movie-detail-intro" id="detailIntro">
    <div class="container clearfix">
    <!-- 1111111111111111111111 -->
    <c:forEach items="${ti }" var="t">
    
    <div class="fl poster">
            
            <img class="img" src="${pageContext.servletContext.contextPath }/img/${t.url }">
        </div>
        <div class="info">
            <h4 class="subtitle" >${t.movieDBName }</h4>
			<input type="hidden" value="${t.movieDBId }">
            <div class="record clearfix">
                <p class="star fl"><span class="star-in fl" style="width:81%;"></span></p>
                <span class="nuomi-orange font16 fl num"></span>
            </div>
            <div class="content">
            
                <p class="des">喜获十亿现金 沈腾花式烧钱</p>
                <p>导演：${t.movieDBName } &nbsp;&nbsp;&nbsp;&nbsp;主演：${t.star }</p>
                <p>语言：${t.region} | ${t.mins }分钟 &nbsp;&nbsp;&nbsp;&nbsp;${t.movieReleaseTime } 上映</p>
                <p id="intro" class="intro slideup">剧情：${t.movieplot }<!-- 故事发生在《夏洛特烦恼》中的“特烦
恼”之城“西虹市”。混迹于丙级业余足球队的守门员王多鱼（沈腾 
饰），因比赛失利被开除离队。正处于人生最低谷的他接受了神秘台湾财团“一个月花光十亿资金”的挑战。本以为快乐生活就此开始，王多鱼却第一次感到“花钱
特烦恼”！想要人生反转走上巅峰，真的没有那么简单。 --></p>
                <span class="more-btn" id="moreBtn" data-log="{'da_src':'webMovieDetailPg.introBk.moreBtn'}"></span>
            </div>

            
            <p class="collect" data-id="95452" data-token="540630ebec8dd0ed3aa62b122261c07e"><em>想看</em></p>
            
        </div>
        </c:forEach>
    <!-- 11111111111111111111111111 -->
    
    
       

        <!-- <div class="hide">
            <div class="info info-copy" id="infoCopy">
                <h4 class="subtitle clearfix">
                    <div class="fl">西虹市首富</div>
                    <div class="record fl clearfix">
                        <p class="star fl"><span class="star-in fl" style="width:81%;"></span></p>
                        <span class="nuomi-orange font16 fl num">8.1</span>
                    </div>
                </h4>

                <div class="content">
                    <p class="des">喜获十亿现金 沈腾花式烧钱</p>

                    <p><span>导演：</span>闫非,彭大魔 </p>
                    <p><span>主演：</span>沈腾,宋芸桦,张一鸣,张晨光,常远,魏翔,艾伦,徐冬冬,赵自强,九孔,王成思,陶亮,杨文哲</p>
                    <p><span>剧情：</span>故事发生在《夏洛特烦恼》中的“特烦恼”之城“西虹市”。混迹于丙级业
余足球队的守门员王多鱼（沈腾 
饰），因比赛失利被开除离队。正处于人生最低谷的他接受了神秘台湾财团“一个月花光十亿资金”的挑战。本以为快乐生活就此开始，王多鱼却第一次感到“花钱
特烦恼”！想要人生反转走上巅峰，真的没有那么简单。</p>
                    <p><span>地区：</span>中国大陆</p>
                    <p><span>片长：</span>118分钟</p>
                    <p><span>上映时间：</span>2018-07-27上映</p>
                    <span class="btn" id="contentBtn"></span>
                </div>
                <a class="choose-cinema" href="#cinemaCinemaFilter" id="chooseCinema">选座购票</a>
            </div>
        </div> -->

    </div>
</div>


	<!--左边的显示  -->
    <!-- <div class="detail-right">
        <div class="widget-common-ranklist" id="commonRanklist">
    <h2 class="subtitle sub-title">当日票房排行榜</h2>
    <ul class="ranklist" id="ranklist"><li class="item selected">    <span class="rank top">1.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}">西虹市首富    <em class="num font12                 ">        2855.1</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}"><img src="vote/8644ebf81a4c510f15d2a2cd6c59252dd52aa5d7.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">2.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94959}">狄仁杰之四大天王    <em class="num font12                 ">        763.6</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94959}"><img src="vote/dbb44aed2e738bd4817e54cbad8b87d6267ff9e9.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">3.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95539}">风语咒    <em class="num font12                 ">        499.1</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95539}"><img src="vote/3bf33a87e950352a0c1e99ec5f43fbf2b3118bd3.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">4.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95743}">小偷家族    <em class="num font12                 ">        478.4</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95743}"><img src="vote/279759ee3d6d55fbcd8ce9d361224f4a21a4ddf9.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">5.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95620}">神秘世界历险记4    <em class="num font12                 ">        412.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95620}"><img src="vote/32fa828ba61ea8d376bb5aeb9b0a304e241f5847.png"></a>        </div>    </div></li><li class="item ">    <span class="rank top">6.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95565}">摩天营救    <em class="num font12                 ">        261.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95565}"><img src="vote/64380cd7912397ddb664e5e05582b2b7d0a28730.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">7.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95125}">我不是药神    <em class="num font12                 ">        180.3</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95125}"><img src="vote/8c1001e93901213fd65678b558e736d12f2e9575.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">8.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}">的士速递5    <em class="num font12                 ">        79.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}"><img src="vote/738b4710b912c8fc116f2816f0039245d7882149.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">9.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95769}">浴血广昌    <em class="num font12                 ">        33.7</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95769}"><img src="vote/b64543a98226cffcb0b6cc5db5014a90f703ea45.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">10.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95734}">解码游戏    <em class="num font12                 ">        19.9</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95734}"><img src="vote/1e30e924b899a9010360acfc11950a7b0308f5a7.jpg"></a>        </div>    </div></li></ul>
    p class="time">统计时间：06.12-06.20</p
</div>


    </div> -->

    <div id="pageletCinema">
















<div class="widget-cinema-cinema-filter" id="cinemaCinemaFilter" mode="async">

    <h3 class="subtitle filter-title">选座购票</h3>
   <!--  <div class="container">

    <div class="date clearfix">
        <div class="name fl">日期</div>

        <div class="list fl">
            <ul class="list-first slideup clearfix" id="dateList">
                
                <li class="filter-active" data-type="cinema-filter" data-key="date" data-id="1533657600000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周三8月8日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1533744000000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周四8月9日 </span></li>
                
                <li class="" data-type="cinema-filter" data-key="date" data-id="1533830400000" data-log="{'da_src':'webMovieDetailPg.filterBk.dateBtn'}"><span>周五8月10日 </span></li>
                
            </ul>
        </div>
    </div>
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
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="8442" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>鼓楼</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="8444" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>金明</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2393" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>尉氏</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="8440" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>龙亭</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="1255" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>祥符</span></li>
                    
                    <li class="" data-type="cinema-filter" data-key="areaId" data-id="2388" data-log="{'da_src':'webMovieDetailPg.filterBk.areaBtn'}"><span>杞县</span></li>
                    
                </ul>
                
                
            </div>
        </div>
    </div>
    </div> -->
</div>

<div class="widget-cinema-cinema-cinemalist" id="cinemaCinemalist">
    <ul>
        

        <div id="pageletCinemalist">
<!-- 选座购票111 --> 
    <c:forEach items="${movie }" var="mo">
    <li class="clearfix">
        <div class="info fl">
            <p class="title" data-url="/cinema/cinemadetail" data-data="{&quot;cinemaId&quot;:1649}" data-log="{'da_src':'webMovieDetailPg.cinemalistBk.nameLnk'}"><span class="name">${mo.movieName }</span>    
            </p>
           <p class="addr clearfix"><span class="fl text">${mo.movieAddress }</span><!-- <em class="loc"></em></p>-->
            </p><p class="clearfix"></p>
        </div>
        <div class="btns fr single"> 
            <p class="clearfix">
   <%--  <a class="btn seat-btn fr"   href="${pageContext.servletContext.contextPath }/findaddress?movieDBId=${mo.movieDBId}&movieId=${mo.movieId}">选座购票111</a> --%>
    
        <a class="btn seat-btn fr"   href="${pageContext.servletContext.contextPath }/choose?msId=${mo.msid }&movieId=${mo.movieId}">选座购票</a>
    
            </p>     
        </div>
        <div class="price fr">
            <p class="seat"><em class="dollar">￥</em><em class="num">${mo.filmprice }</em>起</p>
        </div>
    </li>
    </c:forEach>
    
</div>
        <div class="loading hide">加载中...</div>
    </ul>

    

    
    <div class="more" id="moreCinema" data-totalnum="13" data-log="{'da_src':'webMovieDetailPg.cinemalistBk.moreLnk'}">点击查看更多影院&nbsp;&nbsp;&gt;</div>
    

    

</div>


</div>
    






<div class="widget-movie-detail-more">
    
    
</div>


</div>





    </div>

</div>






<img id="statImgNew" style="display:none" src="vote/transparent.gif"></div>


<script type="text/javascript">

function voteAjax(){
	$.ajax({
		url:'findmovieDBId',
		data:{'movieDBId' :5},
	    type:"post",
	    dataType:"json",
	    success:function(data)   {
	    	alert(data);
	    }
	});
};  


voteAjax();

 
</script>


<script type="text/javascript" src="vote/lib.js"></script>
<script type="text/javascript" src="vote/http_07a1657.js">
</script><script type="text/javascript" src="vote/cookie_f4c070a.js">
</script><script type="text/javascript" src="vote/util.js"></script>
<script type="text/javascript" src="vote/bdTemplate_28b34e7.js"></script>
<script type="text/javascript" src="vote/main_ed5455d.js"></script>
<script type="text/javascript" src="vote/Dialog_a99a6d7.js"></script>
<script type="text/javascript" src="vote/dialog_3a6ceae.js"></script>
<script type="text/javascript" src="vote/ui.js"></script>
<script type="text/javascript" src="vote/moviedetail.js"></script>
<script type="text/javascript" src="vote/ranklist_bf09e32.js"></script>
<script type="text/javascript">!function() {
	
	
	
	
window._commonData = {"location":{"cityId":210,"cityName":"开封"},"user":{"userid":1295234291,"username":"","displayname":"14...4@qq.com","status":true,"avatar":"http://himg.baidu.com/sys/portrait/item/f3b4334d"},"https":false};

}();
!function() {

require("common:widget/nav/city/city.js").init();

}();
!function() {
require('common:widget/nav/nav.js').init();
}();
!function() {
require("common:widget/menu/menu.js").init({"location":{"cityId":210,"cityName":"开封"},"user":{"userid":1295234291,"username":"","displayname":"14...4@qq.com","status":true,"avatar":"http://himg.baidu.com/sys/portrait/item/f3b4334d"},"https":false});
}();
!function() {
require("movie:widget/moviedetail/intro/intro.js").init();
}();
!function() {

var opt = {
    page:"webMovieDetailPg"
};
require("common:widget/ranklist/ranklist.js").init(opt);

}();
!function() {

window.addStat({
    da_src:'webMovieDetailPg',
    da_act:'ready'
});

require('movie:widget/moviedetail/moviedetail.js').init();
}();</script><a href="javascript:;" class="widget-common-backup backup-btn" id="widgetCommonBackup" style="bottom: 40px; right: 100px;">    <span class="arrow"></span>    <em class="arrow-in"></em></a>


</body></html>