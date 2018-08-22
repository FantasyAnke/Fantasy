<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- <link rel="shortcut icon" href="http://dianying.nuomi.com/static/title.ico">
 -->
<title>订单</title>




<link rel="stylesheet" href="order/lib.css"><link rel="stylesheet" href="order/ui.css"><link rel="stylesheet" href="order/dialog_f5e2c3d.css"><link rel="stylesheet" href="order/topnav_897a98b.css"><link rel="stylesheet" href="order/pager_a7cdf14.css"><link rel="stylesheet" href="order/orderlist.css"></head>

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
    <p class="selected font-grey clearfix"><span id="selectedCity">开封</span><span class="arrow"></span></p>

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
                <img class="avatar fl hide" src="order/f3b4334d.jpg">
                <em class="name fl"></em>
            </span>
            <span class="arrow fr"><em class="arrow-in"></em></span>
            <div class="slidedown">
                <span class="username font-grey font14" id="userOrderlist" data-url="/user/orderlist">我的订单</span>
               
                <span class="username font-grey font14" id="userLogout" data-log="{'da_src':'menuBk.logoutBtn'}">退出</span>
            </div>
        </div>
        <span class="username fr font-grey font14 hide" id="userLogin" data-log="{'da_src':'menuBk.loginBtn'}">登录</span>
       
        <div class="list clearfix">
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.homeLnk'}" data-url="/index">首页</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.movieLnk'}" data-url="/movie/movielist">影片</a>
           <!--  <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="/cinema">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="/movie/boxoffice">票房</a> -->
        </div>
    </div>
</div>



<script type="text/javascript" src="order/uni_login_wrapper.js"></script>







<div class="main" id="main">

    <div class="content" id="content">
        

<div class="common-layout clearfix">
    
    <div class="con-center">
        
	
<div class="widget-orderlist-topnav clearfix" id="widgetOrderListTopnav">
    <a class="item active" href="javascript:;" data-url="/user/complete">订单详情</a>
   <!--  <a class="item " href="javascript:;" data-url="/user/uncomplete">未支付的订单</a> -->
</div>


	
<div class="widget-user-orderlist" id="widgetOrderlist">

	<div id="pageletOrderlist">


<div class="widget-user-completeorderlist" id="widgetUserCompleteorderlist">
	<div class="tr header">
		<div class="td td-movie">电影</div>
		<div class="td td-cinema">影院</div>
		 <div class="td td-num">数量</div> 
		<div class="td td-total">总价</div>
		<div class="td td-status">状态</div>
	</div>
    
    <div class="tr tbody text-center">
    	<c:forEach items="${book }" var="bk">
    	
	    <div class="td td-movie">
	          <p class="movie-name">${bk.movieDBName }</p>
                  <p class="movie-date font-shadow"><%-- ${bk.msendtime } --%>
                   <fmt:formatDate value="${bk.msendtime }" var="date" pattern="yyyy-MM-dd"/>${date} 
                  
                  </p>      
                  <p class="movie-time font-shadow">
					<fmt:formatDate value="${bk.msendtime }" var="date" pattern="HH:mm:ss"/>${date} 
				  </p>
	
	     </div>
	      <div class="td td-cinema">
	          <p class="cinema-name">${bk.movieName }</p>
	          <p class="cinema-zone font-shadow">${bk.mhName }</p>
	          <ul class="seat">
	              <li>
	                  <i></i>${bk.seatNumber }<em></em>
	              </li>   
	          </ul>
	      </div>
	    <div class="td td-num">
	          <span class="num"> 
	          <fmt:formatNumber type="number" value="${bk.price/bk.filmprice }" maxFractionDigits="0"/>
	          </span>
	      </div> 
	      <div class="td td-total">
	          <span class="price">¥${bk.price }</span>
	      </div>
	      <div class="td td-status nosplit">  
	          <p>${bk.orderStatus==1 ?'已支付':'未支付' }</p>
	      </div>
	  
	  </c:forEach>
	  </div>
	  </div>
    

    <div id="pagerInfo" data-pagesize="10" data-total="0" data-pagecount="0"></div>
</div>

<div class="text-center hide" id="widgetNotLogin">您还未<a href="javascript:;" class="login-btn">登录</a></div>


</div>
    <div id="pagerContainer"></div>
</div>

<div class="text-center hide" id="widgetNotLogin">您还未<a href="javascript:;" class="login-btn">登录</a></div>





    </div>

   <div class="clearfix">
    
<div class="con-left">
    
</div>

    
<div class="con-right">
    
</div>
   </div>

    
    <div class="con-center-bottom">
        
    </div>

</div>





    </div>

</div>






<img id="statImgNew" style="display:none" src="order/transparent.gif"></div>
<script type="text/javascript" src="order/lib.js"></script><script type="text/javascript" src="order/http_07a1657.js"></script><script type="text/javascript" src="order/cookie_f4c070a.js"></script><script type="text/javascript" src="order/util.js"></script><script type="text/javascript" src="order/bdTemplate_28b34e7.js"></script><script type="text/javascript" src="order/main_ed5455d.js"></script><script type="text/javascript" src="order/Dialog_a99a6d7.js"></script><script type="text/javascript" src="order/dialog_3a6ceae.js"></script><script type="text/javascript" src="order/ui.js"></script><script type="text/javascript" src="order/Pagination_2ff14ea.js"></script><script type="text/javascript" src="order/pager_65de8b7.js"></script><script type="text/javascript" src="order/orderlist.js"></script><script type="text/javascript">!function() {

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
window.addStat({
da_src:'webUserListPg',
da_act:'ready'
});
	require('user:widget/orderlist/orderlist.js').init(1);
}();</script>


</body></html>