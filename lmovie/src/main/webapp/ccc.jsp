<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			
				<div class="widget-common-nav-city""="">
					<div class="city-area fl" id="cityArea"></div>
				</div>

				<div class="search fr">
					<!-- <input class="input" id="searchInput" placeholder="搜你感兴趣的电影" type="text">
            <span class="icon" id="movieSearch" data-log="{'da_src':'navBk.searchBtn'}"></span> -->

					<form action="findSearch" method="post">
						<input class="input" placeholder="搜你感兴趣的电影" type="text"
							name="movieDBName"> <span class="icon"
							data-log="{'da_src':'navBk.searchBtn'}"> <input
							type="submit" value="搜索" style="width: 38px; height: 32px;">
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
			<div class="content-center">
				<!-- hide -->
				<div class="fr user-info " id="userInfo">
					<span class="username fr font-grey font14 clearfix" id="userName"
						data-url="/user"> <img class="avatar fl hide" src="">
						<em class="name fl"></em>
					</span> <span class="arrow fr"><em class="arrow-in"></em></span>
					<div class="slidedown">
						<span class="username font-grey font14"
							data-url="/A307/findbooking?customerId=2">我的订单</span> <span
							class="username font-grey font14" data-url="/A307/personal.jsp">个人中心</span>

						<span class="username font-grey font14">退出</span>

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
					<a class="nav active" href="javascript:;"
						data-log="{'da_src':'menuBk.homeLnk'}"
						data-url="${pageContext.servletContext.contextPath }/findAll">首页</a>
					<a class="nav " href="javascript:;"
						data-log="{'da_src':'menuBk.movieLnk'}" data-url="/A307/findhit">影片</a>
					<!-- <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.cinemaLnk'}" data-url="/A307/index2.jsp">影院</a>
            <a class="nav " href="javascript:;" data-log="{'da_src':'menuBk.boxLnk'}" data-url="/A307/index3.jsp">票房</a> -->
				</div>
			</div>
		</div>



		<script type="text/javascript" src="index/uni_login_wrapper.js"></script>



		<div class="main" id="main">

			<div class="content" id="content">
aaaa

			</div>

		</div>

		<!-- <img id="statImgNew" style="display: none" src="index/transparent.gif"> -->
	</div>







	<script type="text/javascript" src="index/lib.js"></script>
	<script type="text/javascript" src="index/flexslider_f4a305d.js"></script>
	<script type="text/javascript" src="index/http_07a1657.js"></script>
	<script type="text/javascript" src="index/cookie_f4c070a.js"></script>
	<script type="text/javascript" src="index/util.js"></script>
	<script type="text/javascript" src="index/bdTemplate_28b34e7.js"></script>
	<script type="text/javascript" src="index/main_ed5455d.js"></script>
	<script type="text/javascript" src="index/Dialog_a99a6d7.js"></script>
	<script type="text/javascript" src="index/dialog_3a6ceae.js"></script>
	<script type="text/javascript" src="index/ui.js"></script>
	<script type="text/javascript" src="index/index.js"></script>
	<script type="text/javascript" src="index/ranklist_bf09e32.js"></script>
	<script type="text/javascript">
		!function() {

			window._commonData = {
				"location" : {
					"cityId" : 210,
					"cityName" : "开封"
				},
				"user" : {
					"status" : false
				},
				"https" : false
			};

		}();
		!function() {

			require("common:widget/nav/city/city.js").init();

		}();
		!function() {
			require('common:widget/nav/nav.js').init();
		}();
		!function() {
			require("common:widget/menu/menu.js").init({
				"location" : {
					"cityId" : 210,
					"cityName" : "开封"
				},
				"user" : {
					"status" : false
				},
				"https" : false
			});
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
				page : "webHomeIndexPg"
			};
			require("common:widget/ranklist/ranklist.js").init(opt);

		}();
		!function() {

			window.addStat({
				da_src : 'webHomeIndexPg',
				da_act : 'ready'
			});

			require("home:widget/index/index.js").init();
		}();
	</script>
	<a href="javascript:;" class="widget-common-backup backup-btn"
		id="widgetCommonBackup" style="bottom: 40px; right: 100px;"> <span
		class="arrow"></span> <em class="arrow-in"></em></a>


</body>
</html>