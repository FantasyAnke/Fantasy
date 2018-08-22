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

<title>首页</title>



<link rel="stylesheet" href="index/lib.css">
<link rel="stylesheet" href="index/ui.css">
<link rel="stylesheet" href="index/dialog_f5e2c3d.css">
<link rel="stylesheet" href="index/index.css">
<link rel="stylesheet" href="index/ranklist_778b93f.css">

<%-- <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.min.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/bootstrap.js"></script>
<style type="text/css">
.modal.fade.in{
        top:90px;  
    } 
</style> --%>

    

</head>

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
    
</div>
</div>


        
        <div class="search fr">
            <!-- <input class="input" id="searchInput" placeholder="搜你感兴趣的电影" type="text">
            <span class="icon" id="movieSearch" data-log="{'da_src':'navBk.searchBtn'}"></span> -->
       
        <form action="findSearch" method="post">
        	<input class="input" placeholder="搜你感兴趣的电影"  type="text" name="movieDBName"  >
       		 <span  class="icon"  data-log="{'da_src':'navBk.searchBtn'}">
       			<input type="submit" value="搜索" style="width:38px;height:32px;">
       		</span>  
       		 
        </form> 
        
    </div> 
    
    
     <!-- form action="findSearch" method="post">
        <input    type="text" name="movieDBName"  >	
       	<input type="submit" value="搜索" style="width:38px;height:32px;">	 
        </form> -->
    
    </div>
</div>




<div class="widget-common-menu">
    <div class="content-center"><!-- hide -->
        <div class="fr user-info " id="userInfo">
            <span class="username fr font-grey font14 clearfix" id="userName" data-url="/user">
                <img class="avatar fl hide" src="">
                <em class="name fl"></em>
            </span>
            <span class="arrow fr"><em class="arrow-in"></em></span>
            <div class="slidedown">
                <span class="username font-grey font14"  data-url="${pageContext.servletContext.contextPath }/findbooking?customerId=2">我的订单</span>
                <span class="username font-grey font14"  data-url="${pageContext.servletContext.contextPath }/personal.jsp">个人中心</span>
    
                <span class="username font-grey font14" >退出</span>
                
            </div>
        </div>
       <!--  <span class="username fr font-grey font14" id="userLogin" data-log="{'da_src':'menuBk.loginBtn'}">登录</span> -->
     		<!-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			 登录
			</button>  -->
			<!-- <span class="username fr font-grey font14" data-toggle="modal" data-target="#myModal" > -->
			<!-- <span class="username fr font-grey font14"  >
			 <a class="username fr font-grey font14" href="html/index.jsp">登录</a> 
			</span> -->
			
			 <a class="username fr font-grey font14" href="html/index.jsp">登录</a>
			
      
     
      
        <div class="list clearfix">
            <a class="nav active" href="javascript:;" data-log="{'da_src':'menuBk.homeLnk'}" data-url="${pageContext.servletContext.contextPath }/findAll">首页</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.movieLnk'}" data-url="${pageContext.servletContext.contextPath }/findhit">影片</a>
            <!-- <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="${pageContext.servletContext.contextPath }/index2.jsp">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="${pageContext.servletContext.contextPath }/index3.jsp">票房</a> -->
        </div>
    </div>
</div>



<script type="text/javascript" src="index/uni_login_wrapper.js"></script>







<div class="main" id="main">

    <div class="content" id="content">
        

<div class="widget-home-index clearfix" id="widgetHomeIndex">

    

    <div class="clearfix">
        <div class="con-left">
            
<div class="widget-home-index-list">
    






<!-- <h3 class="subtitle sub-title">正在热映<span class="pager fr font-grey font14">1/4</span></h3> -->
<h3 class="subtitle sub-title">正在热映<span class="pager fr font-grey font14"></span></h3>
<div class="flexslider movielist" id="flexslider1">
    <div class="loading hide"></div>
    
<div class="flex-viewport" style="overflow: hidden; position: relative;">
<ul class="slides" style="width: 4600%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
        <c:forEach items="${list }" var="l">
	
			 <li class="item" style="width: 140px; margin-right: 0px; float: left; display: block;">
            <div class="img" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}">
                <img src="${pageContext.servletContext.contextPath }/img/${l.url }"  draggable="false">
            </div>
            <p class="text font14">${l.movieDBName }</p>
            <p>
                <!-- <span class="fr record nuomi-orange">8.1</span>  --><!-- ${pageContext.servletContext.contextPath }/vote.jsp -->
                <!-- <a class="buy" href="javascript:;" data-url="${pageContext.servletContext.contextPath }/vote.jsp" data-data="{&quot;movieId&quot;:95452}">选座购票</a> -->
          		<a class="buy" href="${pageContext.servletContext.contextPath }/chooseticket?movieDBId=${l.movieDBId}">选座购票</a>
            </p>
        </li>
		</c:forEach>
   
    </ul>
    </div>
    <ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li></ul></div>

</div>


            <div class="widget-home-index-list">
    











<h3 class="subtitle sub-title">即将上映<span class="pager fr font-grey font14"></span></h3>
<div class="flexslider movielist" id="flexslider2">
    <div class="loading hide"></div>
    
<div class="flex-viewport" style="overflow: hidden; position: relative;"><ul class="slides" style="width: 2000%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
        
        <c:forEach items="${screen }" var="s">
	
			 <li class="item" style="width: 140px; margin-right: 0px; float: left; display: block;">
            <div class="img" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}">
                <img src="${pageContext.servletContext.contextPath }/img/${s.url }" draggable="false">
            </div>
            <p class="text font14">${s.movieDBName }</p>
            <p>
                <!-- <span class="fr record nuomi-orange">8.1</span>  -->
                <a class="buy" href="${pageContext.servletContext.contextPath }/chooseticket?movieDBId=${s.movieDBId}"  data-data="{&quot;movieId&quot;:95452}">选座购票</a>
            </p>
        </li>
		</c:forEach>
        
         
    </ul></div><ul class="flex-direction-nav"><li class="flex-nav-prev"><a class="flex-prev" href="#">Previous</a></li><li class="flex-nav-next"><a class="flex-next" href="#">Next</a></li></ul></div>

</div>


   </div>
   <!--------------右面 热门影院---和--当日放票排行 -->
        <div class="con-right">
<!--             <div class="widget-home-index-cinema">
    <h3 class="subtitle sub-title">热门影院<a href="javascript:;" data-url="/cinema" class="fr font-grey font12">全部&nbsp;&gt;&gt;</a></h3>
    <div id="pageletIndexCinema">



<div class="cinemalist">
    <ul>
        

        
        <li>
            <h4>
                <a class="title font14" data-url="/cinema/cinemadetail?cinemaId=1649" data-log="{'da_src':'webHomeIndexPg.hotCinemaBk.cinemaLnk'}">开封横店电影城</a>
                
                <span class="icon icon-seat">座</span>
                <span class="icon icon-mem">会员</span></h4>
            <p class="addr font-shadow">开封市鼓楼区中山路北段319号光彩商业街3楼</p>
            <p class="font-shadow"><span class="price">￥20.9</span>起</p>
        </li>

        
        <li>
            <h4>
                <a class="title font14" data-url="/cinema/cinemadetail?cinemaId=3936" data-log="{'da_src':'webHomeIndexPg.hotCinemaBk.cinemaLnk'}">大地影院(开封江南帝州店)</a>
                
                <span class="icon icon-seat">座</span>
                <span class="icon icon-mem">会员</span></h4>
            <p class="addr font-shadow">开封市鼓楼区解放路与自由路交叉口大润发4楼</p>
            <p class="font-shadow"><span class="price">￥19.9</span>起</p>
        </li>

        
        <li>
            <h4>
                <a class="title font14" data-url="/cinema/cinemadetail?cinemaId=1652" data-log="{'da_src':'webHomeIndexPg.hotCinemaBk.cinemaLnk'}">开封奥斯卡影城</a>
                
                <span class="icon icon-seat">座</span>
                </h4>
            <p class="addr font-shadow">开封市龙亭区西门大街388号大商新玛特开封总店4楼</p>
            <p class="font-shadow"><span class="price">￥19.9</span>起</p>
        </li>

        
        <li>
            <h4>
                <a class="title font14" data-url="/cinema/cinemadetail?cinemaId=1650" data-log="{'da_src':'webHomeIndexPg.hotCinemaBk.cinemaLnk'}">开封东京电影城</a>
                
                <span class="icon icon-seat">座</span>
                <span class="icon icon-mem">会员</span></h4>
            <p class="addr font-shadow">开封市金明区大梁路西段汴梁小宋城内(原东京艺术中心)</p>
            <p class="font-shadow"><span class="price">￥26</span>起</p>
        </li>

        

        
    </ul>
</div></div>
</div> -->
<!--------------------  -->

           <!--  <div class="widget-common-ranklist" id="commonRanklist">
    <h2 class="subtitle sub-title">当日票房排行榜</h2>
    <ul class="ranklist" id="ranklist"><li class="item selected">    <span class="rank top">1.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}">西虹市首富    <em class="num font12                 ">        3744.7</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95452}"><img src="index/8644ebf81a4c510f15d2a2cd6c59252dd52aa5d7.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">2.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94959}">狄仁杰之四大天王    <em class="num font12                 ">        961.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:94959}"><img src="index/dbb44aed2e738bd4817e54cbad8b87d6267ff9e9.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">3.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95539}">风语咒    <em class="num font12                 ">        635</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95539}"><img src="index/3bf33a87e950352a0c1e99ec5f43fbf2b3118bd3.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">4.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95743}">小偷家族    <em class="num font12                 ">        574.5</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95743}"><img src="index/279759ee3d6d55fbcd8ce9d361224f4a21a4ddf9.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">5.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95620}">神秘世界历险记4    <em class="num font12                 ">        502.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95620}"><img src="index/32fa828ba61ea8d376bb5aeb9b0a304e241f5847.png"></a>        </div>    </div></li><li class="item ">    <span class="rank top">6.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95565}">摩天营救    <em class="num font12                 ">        297.8</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95565}"><img src="index/64380cd7912397ddb664e5e05582b2b7d0a28730.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">7.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95125}">我不是药神    <em class="num font12                 ">        212.3</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95125}"><img src="index/8c1001e93901213fd65678b558e736d12f2e9575.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">8.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}">的士速递5    <em class="num font12                 ">        107.2</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}"><img src="index/738b4710b912c8fc116f2816f0039245d7882149.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">9.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95734}">解码游戏    <em class="num font12                 ">        31.2</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95734}"><img src="index/1e30e924b899a9010360acfc11950a7b0308f5a7.jpg"></a>        </div>    </div></li><li class="item ">    <span class="rank top">10.</span>        <h3 class="name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95682}">肆式青春    <em class="num font12                 ">        27.3</em>    </h3>    <div class="info clearfix">        <div class="img fl">                        <a href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95682}"><img src="index/377adab44aed2e73ac636ed98b01a18b86d6fab9.jpg"></a>        </div>    </div></li></ul>
    p class="time">统计时间：06.12-06.20</p
</div> -->


        </div>
    </div>
</div>



    </div>

</div>

<img id="statImgNew" style="display:none" src="index/transparent.gif"></div>


<!-- <div class="modal fade" id="mm" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>/.modal-content
  </div>/.modal-dialog
</div>/.modal -->


<%-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" style="width:400px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <center><h4 class="modal-title" id="myModalLabel">用户登录</h4></center>
      </div>
      <div class="modal-body">
       
        	<div class="form-group">
        		<label class="sr-only" for="form-first-name">First name</label>
            	<input type="text" name="platformname" placeholder="请输入用户名" class="form-first-name form-control" id="platformname">
            	
            </div>
            <div class="form-group">
            	<label class="sr-only" for="form-last-name">Last name</label>
            	<input type="text" name="platformpass" placeholder="请输入密码" class="form-last-name form-control" id="platformpass">
            </div>
            
         	<center><button   class="btn" onclick="login()" >登录</button></center>
      
      </div>
      <center>  <span class="platformname"></span><center>
      <div class="modal-footer">
     
        <button type="button" class="btn btn-primary" >立即注册</button>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
/* $("#dl").click(function(){
	alert(1);
	$("#platformname").val("");
	$("#platformpass").val(""); 
	$("#mm").modal('show');
}) */


function login(){
	alert($("#platformname").val());
	$.ajax({
		url:"platformlogin",
		type:"post",
		data:{
			platformname:$("#platformname").val(),
			platformpass:$("#platformpass").val(),
		},
		dataType:"html",
		success:function(data){
			if(data=="1"){
				
				$(".platformname").html("登录成功！").css("color","green");
				$("#myModal").modal("hide");
				
				
			}else{
				$(".platformname").html("没有该用户,请先注册").css("color","red");
				$("#platformname").text("");
				
			}
		}
	});
	
	
	
	

	}
</script> --%>





<script type="text/javascript" src="index/lib.js"></script><script type="text/javascript" src="index/flexslider_f4a305d.js"></script><script type="text/javascript" src="index/http_07a1657.js"></script><script type="text/javascript" src="index/cookie_f4c070a.js"></script><script type="text/javascript" src="index/util.js"></script><script type="text/javascript" src="index/bdTemplate_28b34e7.js"></script><script type="text/javascript" src="index/main_ed5455d.js"></script><script type="text/javascript" src="index/Dialog_a99a6d7.js"></script><script type="text/javascript" src="index/dialog_3a6ceae.js"></script><script type="text/javascript" src="index/ui.js"></script><script type="text/javascript" src="index/index.js"></script><script type="text/javascript" src="index/ranklist_bf09e32.js"></script><script type="text/javascript">!function() {

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

require("home:widget/index/list/list.js").init(1);
}();
!function() {
require("home:widget/index/list/list.js").init(2);
}();
!function() {
require("home:widget/index/hotcinema/hotcinema.js").init();
}();
!function() {

var opt = {
    page:"webHomeIndexPg"
};
require("common:widget/ranklist/ranklist.js").init(opt);

}();
!function() {

window.addStat({
    da_src:'webHomeIndexPg',
    da_act:'ready'
});

require("home:widget/index/index.js").init();
}();</script><a href="javascript:;" class="widget-common-backup backup-btn" id="widgetCommonBackup" style="bottom: 40px; right: 100px;">    <span class="arrow"></span>    <em class="arrow-in"></em></a>


</body></html>