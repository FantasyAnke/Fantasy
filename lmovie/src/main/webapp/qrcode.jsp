<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'qrcode.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/layui-v2.3.0/layui/css/layui.css"
	media="all">

<link rel="stylesheet" href="index/lib.css">
<link rel="stylesheet" href="index/ui.css">
<link rel="stylesheet" href="index/dialog_f5e2c3d.css">
<link rel="stylesheet" href="index/index.css">
<link rel="stylesheet" href="index/ranklist_778b93f.css">

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/layui-v2.3.0/layui/layui.js"></script>

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
							data-url="${pageContext.servletContext.contextPath }/findbooking?customerId=2">我的订单</span>
						<span class="username font-grey font14"
							data-url="${pageContext.servletContext.contextPath }/personal.jsp">个人中心</span>

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



		<script type="text/javascript" src="index/uni_login_wrapper.js"></script>



		<!-- <div class="main" id="main">

			<div class="content" id="content">
			
			
			</div>

		</div> -->

		<!-- <img id="statImgNew" style="display: none" src="index/transparent.gif"> -->
	</div>











	<!-- 导入qrcode 和jquery -->
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath }/js/jquery.qrcode.min.js"></script>

	<div id="left"
		style="width: 400px; height: 100px; float: left;padding: 120px 100px 134px 300px;">
		<h1>订单编号：${entity.bookNumber } <br> 订单价格：${entity.price } <br>
		订单描述：${entity.subject }</h1>
	</div>
	<div id="right" style="width: 700px; height: 360px; float: right;">
		<h1 style="padding: 10px;">二维码支付</h1>
		<div id="qrcodeTable"></div>
	</div>
	<div id="left"
		style="width: 380px; height: 230px; float: left; padding-left: 300px;padding-right:20px; padding-top: 20px;">
		<h1><a href="javascript:history.back(-1)">返回订单页面</a></h1>
	</div>

	<div style="width: 700px; height: 150px; float: right;">
		<form class="layui-form"
			action="${pageContext.servletContext.contextPath }/ZFSuccess"
			method="post">
			<input type="hidden" name="bookNumber" value="${entity.bookNumber }">
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn layui-btn-normal" lay-submit=""
						lay-filter="demo1">支付成功</button>
				</div>
			</div>
		</form>

		<form class="layui-form"
			action="${pageContext.servletContext.contextPath }/ZFFailed"
			method="post">
			<input type="hidden" name="bookNumber" value="${entity.bookNumber }">
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn layui-btn-warm" lay-submit=""
						lay-filter="demo2">未支付</button>
				</div>
			</div>
		</form>

		<form class="layui-form"
			action="${pageContext.servletContext.contextPath }/ZFFailed"
			method="post">
			<input type="hidden" name="bookNumber" value="${entity.bookNumber }">
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn layui-btn-danger" lay-submit=""
						lay-filter="demo3">支付失败</button>
				</div>
			</div>
		</form>

	</div>


	<!-- <p>Render in canvas</p>
<div id="qrcodeCanvas"></div> -->


	<script>
		var ewm = '${ewm}';
		//jQuery('#qrcodeTable').qrcode("this plugin is great");
		//table

		//jQuery('#qrcodeTable').qrcode({width: 200,height: 200,correctLevel:0,render: "table",text: "ba labv a fdsl"});   

		jQuery('#qrcodeTable').qrcode({
			render : "table",
			text : ewm
		});
		/* jQuery('#qrcodeCanvas').qrcode({
			text	: "https://qr.alipay.com/bax02520ntwh1codx6m800cc"
		});	 */
	</script>





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
