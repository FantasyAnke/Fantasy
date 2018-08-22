<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- <link rel="shortcut icon" href="http://dianying.nuomi.com/static/title.ico"> -->
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<title>糯米电影</title>


<title>百度电影</title>

<link rel="stylesheet" href="index1/lib.css">
<link rel="stylesheet" href="index1/ui.css">
<link rel="stylesheet" href="index1/dialog_f5e2c3d.css">
<link rel="stylesheet" href="index1/movielist.css">
<link rel="stylesheet" href="index1/pager_a7cdf14.css">
<link rel="stylesheet" href="index1/ranklist_778b93f.css">
</head>

<body>
	<div id="page">



		<div class="widget-common-nav" id="movieNav">
			<div class="content-center">
				<!--  <a href="https://www.nuomi.com/" target="_blank">
            <div class="logo fl"></div>
        </a> -->

				<div class="widget-common-nav-city""="">
					<div class="city-area fl" id="cityArea">
						<!-- 显示当前城市 -->
						<!--  <p class="selected font-grey clearfix"><span id="selectedCity">成都</span><span class="arrow"></span></p>

    <div class="citylist" id="citylist">
        <h3>热门城市</h3>
        <ul id="hotCityList"><li>    <a href="javascript:;" data-id="131" data-name="北京">北京</a></li><li>    <a href="javascript:;" data-id="289" data-name="上海">上海</a></li><li>    <a href="javascript:;" data-id="179" data-name="杭州">杭州</a></li><li>    <a href="javascript:;" data-id="257" data-name="广州">广州</a></li><li>    <a href="javascript:;" data-id="340" data-name="深圳">深圳</a></li><li>    <a href="javascript:;" data-id="132" data-name="重庆">重庆</a></li><li>    <a href="javascript:;" data-id="75" data-name="成都">成都</a></li><li>    <a href="javascript:;" data-id="315" data-name="南京">南京</a></li><li>    <a href="javascript:;" data-id="218" data-name="武汉">武汉</a></li><li>    <a href="javascript:;" data-id="233" data-name="西安">西安</a></li><li>    <a href="javascript:;" data-id="194" data-name="厦门">厦门</a></li><li>    <a href="javascript:;" data-id="332" data-name="天津">天津</a></li></ul>
        <a href="javascript:;" data-url="/home/citylist" class="link morelink font-shadow">更多城市 &gt;</a></div> -->
					</div>
				</div>



				<!-- <div class="search fr">
            <input class="input" id="searchInput" placeholder="搜你感兴趣的电影" type="text">
            <span class="icon" id="movieSearch" data-log="{'da_src':'navBk.searchBtn'}"></span>
        </div> -->

				<div class="search fr">
					<form action="findSearch" method="post">
						<input placeholder="搜你感兴趣的电影" type="text" name="movieDBName">
						<span class="icon" data-log="{'da_src':'navBk.searchBtn'}">
							<input type="submit" value="搜索"
							style="width: 38px; height: 32px;">
						</span>

					</form>


				</div>
			</div>
		</div>





		<div class="widget-common-menu">
			<div class="content-center">
				<div class="fr user-info hide" id="userInfo">
					<span class="username fr font-grey font14 clearfix" id="userName"
						data-url="/user"> <img class="avatar fl hide" src="">
						<em class="name fl"></em>
					</span> <span class="arrow fr"><em class="arrow-in"></em></span>
					<div class="slidedown">
						<span class="username font-grey font14" id="userOrderlist"
							data-url="/user/orderlist">我的订单</span>
						<!--<span class="username fr font-grey font14" id="userOrderlist"
                data-url="/user/orderlist">我的帐号</span>-->
						<span class="username font-grey font14" id="userLogout"
							data-log="{'da_src':'menuBk.logoutBtn'}">退出</span>
					</div>
				</div>
				<span class="username fr font-grey font14" id="userLogin"
					data-log="{'da_src':'menuBk.loginBtn'}">登录</span>
				<!--  <a class="cellphone fr font-grey font14" href="https://d.nuomi.com/inter/group" data-log="{'da_src':'menuBk.downloadLnk'}" target="_blank">APP下载</a> -->
				<div class="list clearfix">
					<a class="nav " href="javascript:;"
						data-log="{'da_src':'menuBk.homeLnk'}"
						data-url="${pageContext.servletContext.contextPath }/findAll">首页</a>
					<a class="nav active" href="javascript:;"
						data-log="{'da_src':'menuBk.movieLnk'}"
						data-url="${pageContext.servletContext.contextPath }/findhit">影片</a>
					<!-- <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="${pageContext.servletContext.contextPath }/index2.jsp">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="${pageContext.servletContext.contextPath }/index3.jsp">票房</a> -->
				</div>
			</div>
		</div>



		<script type="text/javascript" src="index1/uni_login_wrapper.js"></script>







		<div class="main" id="main">

			<div class="content" id="content">


				<div class="common-layout clearfix">

					<div class="con-center">


						<div class="widget-movie-topnav clearfix" id="widgetMovieTopnav">
							<a class="item " data-type="hot"
								data-url="${pageContext.servletContext.contextPath }/findhit"
								data-log="{'da_src':'webMovieListPg.navBk.hotLnk'}"
								href="javascript:;">热映影片</a> <a class="item active"
								data-type="new"
								data-url="${pageContext.servletContext.contextPath }/findmovie2"
								data-log="{'da_src':'webMovieListPg.navBk.newLnk'}"
								href="javascript:;">即将上映</a> <a class="item " data-type="lib"
								data-url="${pageContext.servletContext.contextPath }/findmovie3"
								data-log="{'da_src':'webMovieListPg.navBk.libLnk'}"
								href="javascript:;">影片库</a>

						</div>


						<script type="text/javascript">


</script>
					</div>

					<div class="clearfix">

						<div class="con-left">


							<div class="widget-movie-movielist" id="widgetMovieMovielist">
								<div id="pageletMovielist">










									<div class="widget-buy-willmovielist">

										<c:forEach items="${hit }" var="l">
											<!-- <h6 class="time nuomi-red">7月27号&nbsp;周五</h6> -->
											<div class="movie-content clearfix">
												<div class="movie-info">
													<a class="movie-pic" href="javascript:;"
														data-url="/movie/detail"
														data-data="{&quot;movieId&quot;:95452}"
														data-log="{'da_src':webMovieListPg.movieBk.movieHotLnk}">

														<img
														src="${pageContext.servletContext.contextPath }/img/${l.url }"
														alt="西虹市首富">
													</a>
													<div class="movie-detail">
														<p class="movie-name" data-url="/movie/detail"
															data-data="{&quot;movieId&quot;:95452}"
															data-log="{'da_src':webMovieListPg.movieBk.movieHotLnk}">
															${l.movieDBName } <span> IMAX 2D</span>

														</p>


														<div class="score">
															<span class="star"><em
																style="width: 84.24000000000001px;"></em></span> <span
																class="num nuomi-red">8.1</span>
														</div>


														<p class="font-shadow font16">喜获十亿现金 沈腾花式烧钱</p>
														<ul class="info">
															<li>类型：喜剧</li>
															<li>时长：118分钟</li>
															<li>上映时间：2018-7-27</li>
														</ul>
													</div>
												</div>
												<div class="btns fr">
													<a class="btn tg"
														href="${pageContext.servletContext.contextPath }/chooseticket?movieDBId=${l.movieDBId}"
														title="选座购票"
														data-log="{'da_src':'webMovieListPg.movieBk.buyBtn'}">选座购票</a>

												</div>
											</div>
										</c:forEach>






										<!--    <h6 class="time nuomi-red">8月3号&nbsp;周五</h6>
    <div class="movie-content clearfix">
        <div class="movie-info">
            <a class="movie-pic" href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}" data-log="{'da_src':webMovieListPg.movieBk.movieHotLnk}">
                
                <img src="index1/738b4710b912c8fc116f2816f0039245d7882149.jpg" alt="的士速递5">
  
            </a>
            <div class="movie-detail">
                <p class="movie-name" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}" data-log="{'da_src':webMovieListPg.movieBk.movieHotLnk}">
                    的士速递5
                    
                </p>

                
                <div class="score">
                    <span class="star"><em style="width:78px;"></em></span>
                    <span class="num nuomi-red">7.5</span>
                </div>
                

                <p class="font-shadow font16">
                    警官遇上司机 合力抓捕疑犯
                </p>
                <ul class="info">
                    <li>类型：喜剧,动作</li>
                    <li>时长：102分钟</li>
                    <li>上映时间：2018-8-3</li>
                </ul>
            </div>
        </div>
        <div class="btns fr">
            
            
            

            
            
            <a class="btn tg" href="javascript:;" data-url="/movie/detail" data-data="{&quot;movieId&quot;:95722}" title="选座购票" data-log="{'da_src':'webMovieListPg.movieBk.buyBtn'}">选座购票</a>
            

            
            

            
        </div>
    </div> -->


									</div>

									<div id="pagerInfo" data-pagesize="10" data-total="31"
										data-pagecount="4"></div>

								</div>
							</div>

							<div id="pagerContainer">
								<div class="mod-page">
									<a href="javascript:void(0)" onclick="toPage(1)">首页</a> <a
										href="javascript:void(0)" onclick="toPage(${bean.nowPage-1})">上一页</a>
									<a href="javascript:void(0)"
										onclick="toPage(${bean.nowPage+1})">下一页</a> <a
										href="javascript:void(0)" onclick="toPage(${bean.totalPage})">尾页</a>

								</div>
							</div>




						</div>


						<div class="con-right">

							<div class="widget-common-ranklist" id="commonRanklist"></div>



						</div>
					</div>


					<div class="con-center-bottom"></div>

				</div>





			</div>

		</div>






		<img id="statImgNew" style="display: none"
			src="index1/transparent.gif">
	</div>
	<script type="text/javascript">

	function toPage(nowPage)
	{
		if(nowPage < 1)
		{
			nowPage = 1;
			//alert("this is first page.");
		}
		if(nowPage > ${bean.totalPage})
		{
			nowPage =  ${bean.totalPage};
			//alert("this is last page.");
		}
		
		window.location = "${pageContext.servletContext.contextPath }/findmovie2?nowPage="+nowPage;
	}
</script>

	<script type="text/javascript" src="index1/lib.js"></script>
	<script type="text/javascript" src="index1/http_07a1657.js"></script>
	<script type="text/javascript" src="index1/cookie_f4c070a.js"></script>
	<script type="text/javascript" src="index1/util.js"></script>
	<script type="text/javascript" src="index1/bdTemplate_28b34e7.js"></script>
	<script type="text/javascript" src="index1/main_ed5455d.js"></script>
	<script type="text/javascript" src="index1/Dialog_a99a6d7.js"></script>
	<script type="text/javascript" src="index1/dialog_3a6ceae.js"></script>
	<script type="text/javascript" src="index1/ui.js"></script>
	<script type="text/javascript" src="index1/Pagination_2ff14ea.js"></script>
	<script type="text/javascript" src="index1/pager_65de8b7.js"></script>
	<script type="text/javascript" src="index1/movielist.js"></script>
	<script type="text/javascript" src="index1/ranklist_bf09e32.js"></script>
	<script type="text/javascript">!function() {
	
window._commonData = {"location":{"cityId":75,"cityName":"成都"},"user":{"status":false},"https":false};

}();
!function() {

require("common:widget/nav/city/city.js").init();

}();
!function() {
require('common:widget/nav/nav.js').init();
}();
!function() {
require("common:widget/menu/menu.js").init({"location":{"cityId":75,"cityName":"成都"},"user":{"status":false},"https":false});
}();
!function() {

window.addStat({
    da_src:'webMovieListPg',
    da_act:'ready'
});
	require('movie:widget/movielist/movielist.js').init();
}();
!function() {

var opt = {
    page:"webMovieListPg"
};
require("common:widget/ranklist/ranklist.js").init(opt);

}();</script>


	<a href="javascript:;" class="widget-common-backup backup-btn"
		id="widgetCommonBackup" style="bottom: 40px; right: 100px;"> <span
		class="arrow"></span> <em class="arrow-in"></em></a>
</body>
</html>