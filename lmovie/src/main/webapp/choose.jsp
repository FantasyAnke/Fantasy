<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="dns-prefetch" href="http://p0.meituan.net/">
<link rel="dns-prefetch" href="http://p1.meituan.net/">
<link rel="dns-prefetch" href="http://ms0.meituan.net/">
<link rel="dns-prefetch" href="http://ms1.meituan.net/">
<link rel="dns-prefetch" href="http://analytics.meituan.com/">
<link rel="dns-prefetch" href="http://report.meituan.com/">
<link rel="dns-prefetch" href="http://frep.meituan.com/">



<meta name="keywords" content="">
<meta name="description" content="">
<meta http-equiv="cleartype" content="yes">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">

<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="email=no">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">


<script async=""
	src="${pageContext.servletContext.contextPath }/mymovie_files/saved_resource"></script>
<script>
	cid = "c_2yzd0xp5";
	ci = 73;
	window.system = {
		"seatsPrice" : {
			"1" : {
				"expression" : "${pieceone[0].filmprice}X1",
				"price" : "${pieceone[0].filmprice}"
			},
			"2" : {
				"expression" : "${pieceone[0].filmprice}X2",
				"price" : "${pieceone[0].filmprice * 2}"
			},
			"3" : {
				"expression" : "${pieceone[0].filmprice}X3",
				"price" : "${pieceone[0].filmprice*3}"
			},
			"4" : {
				"expression" : "${pieceone[0].filmprice}X4",
				"price" : "${pieceone[0].filmprice*4}"
			}
		},
		"remind" : "",
		"uuid" : "9E9297E09A1811E8836EF5378CA03BDFD8DB063527F24E799F92EF373F119720",
		"cinemaId" : 16929
	};

	window.openPlatform = '';
	window.openPlatformSub = '';
</script>



<link rel="stylesheet" href="index/lib.css">
<link rel="stylesheet" href="index/ui.css">
<link rel="stylesheet" href="index/dialog_f5e2c3d.css">
<link rel="stylesheet" href="index/index.css">
<link rel="stylesheet" href="index/ranklist_778b93f.css">



<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/mymovie_files/common.4b838ec3.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/mymovie_files/cinemas-seat.d66e64ba.css">
<script
	src="${pageContext.servletContext.contextPath }/mymovie_files/stat.74891044.js.下载"></script>
<script async="" defer="" charset="utf-8"
	src="${pageContext.servletContext.contextPath }/mymovie_files/web.js.下载"></script>
<script>
	if (window.devicePixelRatio >= 2) {
		document.write('<link rel="stylesheet" href="//ms0.meituan.net/mywww/image-2x.8ba7074d.css"/>')
	}
</script>
<style>
@font-face {
	font-family: stonefont;
	src:
		url('//vfile.meituan.net/colorstone/adfdcec16e883535f4ae748a13add4ee3168.eot');
	src:
		url('//vfile.meituan.net/colorstone/adfdcec16e883535f4ae748a13add4ee3168.eot?#iefix')
		format('embedded-opentype'),
		url('//vfile.meituan.net/colorstone/2ef27abd5e686e223c76c04256ed7e0b2084.woff')
		format('woff');
}

.stonefont {
	font-family: stonefont;
}
</style>
<meta name="lx:autopv" content="off">
<meta name="lx:appnm" content="movie">
<meta name="lx:category" content="movie">
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


	<%-- aaa${list } --%>

	<%-- ${piece.msId } --%>
	<%-- ${pieceone[0] }<br>
	${pieceone[0].SeatRow }sss --%>

	<input type="hidden" id="msId" value="${piece.msId }">
	<div class="container" id="app">
		<!-- <div class="order-progress-bar">
			<div class="step first done">
				<span class="step-num">1</span>
				<div class="bar"></div>
				<span class="step-text">选择影片场次</span>
			</div>
			<div class="step done">
				<span class="step-num">2</span>
				<div class="bar"></div>
				<span class="step-text">选择座位</span>
			</div>
			<div class="step ">
				<span class="step-num">3</span>
				<div class="bar"></div>
				<span class="step-text">14分钟内付款</span>
			</div>
			<div class="step last ">
				<span class="step-num">4</span>
				<div class="bar"></div>
				<span class="step-text">影院取票观影</span>
			</div>
		</div> -->


		<div class="main clearfix">
			<div class="hall">
				<div class="seat-example">
					<div class="selectable-example example">
						<span>可选座位</span>
					</div>
					<div class="sold-example example">
						<span>已售座位</span>
					</div>
					<div class="selected-example example">
						<span>已选座位</span>
					</div>
					<!-- <div class="couple-example example">
						<span>情侣座位</span>
					</div> -->
				</div>


				<div class="seats-block" data-cols="13"
					data-section-id="0000000000000001" data-section-name="普通区"
					data-seq-no="201808170142907">
					<div class="row-id-container">
						<!-- <span class="row-id">1</span> <span class="row-id">2</span> <span
							class="row-id">3</span> <span class="row-id">4</span> <span
							class="row-id">5</span> <span class="row-id">6</span> <span
							class="row-id">7</span> <span class="row-id">8</span> <span
							class="row-id">9</span> -->

						<c:forEach var="i" begin="1" end="${pieceone[0].SeatRow }">
							<span class="row-id">${i }</span>
						</c:forEach>

					</div>

					<div class="seats-container">
						<div class="screen-container" style="left: 0px;">
							<div class="screen">银幕中央</div>
							<div class="c-screen-line"></div>
						</div>


						<div class="seats-wrapper">
							<c:forEach var="i" begin="1" end="${pieceone[0].SeatRow }">
								<div class="row">
									<c:forEach var="j" begin="1" end="${pieceone[0].SeatColumn }">
										<span class="seat selectable" data-column-id="${j}"
											data-row-id="${i }" data-no="0000000000000001-${i}-${j}"
											data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
									</c:forEach>


									<%-- <%
										
										for (int j = 10 ; j > 0; j--) {
									%> --%>
									<%-- <script type="text/javascript">
										for (var j = 10 ; j > 0; j--) {
											<span class="seat selectable" data-column-id="<%= j %>"
												data-row-id="${i }" data-no="0000000000000001-${i}-<%= j %>"
												data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
										}
									</script> --%>
									<%-- <span class="seat selectable" data-column-id="<%= j %>"
										data-row-id="${i }" data-no="0000000000000001-${i}-<%= j %>"
										data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
									<%
										}
									%> --%>

								</div>
							</c:forEach>


						</div>
					</div>

				</div>

			</div>

			<div class="side">
				<!-- 右侧显示电影模块 -->
				<div class="movie-info clearfix">
					<div class="poster">
						<img
							src="${pageContext.servletContext.contextPath }/img/${pieceone[0].url }">
					</div>
					<div class="content">
						<p class="name text-ellipsis">${pieceone[0].movieDBName }</p>
						<div class="info-item">
							<span>类型 :</span> <span class="value">${pieceone[0].movieType }</span>
						</div>
						<div class="info-item">
							<span>时长 :</span> <span class="value">${pieceone[0].mins }</span>
						</div>
					</div>
				</div>

				<div class="show-info">
					<div class="info-item">
						<span>影院 :</span> <span class="value text-ellipsis">${pieceone[0].movieName }</span>
					</div>
					<div class="info-item">
						<span>影厅 :</span> <span class="value text-ellipsis">${pieceone[0].mhName }</span>
					</div>
					<div class="info-item">
						<span>语言 :</span> <span class="value text-ellipsis">${pieceone[0].language }</span>
					</div>
					<div class="info-item">
						<span>时间 :</span> <span class="value text-ellipsis screen">${pieceone[0].msBeginTime }</span>
					</div>
					<div class="info-item">
						<span>票价 :</span> <span class="value text-ellipsis">￥${pieceone[0].filmprice }/张</span>
					</div>
				</div>

				<div class="ticket-info">
					<div class="no-ticket" style="display: block;">
						<p class="buy-limit">座位：一次最多选4个座位</p>
						<p class="no-selected">
							请<span>点击左侧</span>座位图选择座位
						</p>
					</div>
					<div class="has-ticket" style="display: none;">
						<span class="text">座位：</span>
						<div class="ticket-container" data-limit="4"></div>
					</div>

					<div class="total-price">
						<span>总价 :</span> <span class="price">0</span>
					</div>
				</div>



				<div class="confirm-order">
					<!-- <form class="login-form">
						<input type="text" class="input-phone" placeholder="输入手机号">
						<div class="captcha" style="display: none">
							<input type="text" class="input-captcha" placeholder="验证码">
							<img class="captcha-pic" src="${pageContext.servletContext.contextPath }/mymovie_files/appcaptcha">
							<span class="change-captcha">看不清楚？换一张</span>
						</div>
						<div class="code-inputer">
							<input type="text" class="input-code" placeholder="填写验证码">
							<span class="send-code disable">获取验证码</span>
						</div>
					</form> -->
					<div class="confirm-btn disable" data-act="confirm-click"
						data-bid="b_0a0ep6pp" id="btn">确认选座</div>
				</div>
			</div>
		</div>
		<div class="modal-container" style="display: none">
			<div class="modal">
				<span class="icon"></span>

				<p class="tip"></p>

				<div class="ok-btn btn">我知道了</div>
			</div>
		</div>


	</div>

	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath }/js/jquery-2.1.3.min.js"></script>

	<c:forEach items="${list }" var="e">
		<script type="text/javascript">
			var seatNumbers = '${e.seatNumber}';
			var strs = new Array(); //定义一数组
			var strdata = new Array(); //定义一数组
			strs = seatNumbers.split(/['排''座']/); //字符分割\
			var data = "";
			var dataRowId = "";
			var dataColumnId = "";
			for (i = 0; i < strs.length; i++) {
				//document.write(strs[i] + "<br/>"); //分割后的字符输出
				//document.write(strs[i].substring(0,1)+"<br/>"); 
				//document.write(strs[i].substring(1)+"<br/>"); 
				data += strs[i];
				/* dataRowId = strs[i].substring(0,1);
				dataColumnId = strs[i].substring(1); */
			}
			//document.write(data);
			strdata = data.split(/[,]/);

			$(".row").each(function() {
				$(this).find("span").each(function() {
					for (i = 0; i < strdata.length; i++) {
						dataRowId = strdata[i].substring(0, 1);
						dataColumnId = strdata[i].substring(1);
						//document.write(strdata[i] + "<br/>"); //分割后的字符输出
						if ($(this).attr("data-column-id") == dataColumnId && $(this).attr("data-row-id") == dataRowId) {
							$(this).removeClass("seat selectable");
							$(this).addClass("seat sold");
						}
					}
				})
			})
		</script>
	</c:forEach>

	<input type="hidden" id="movieId" value="${pieceone[0].movieId }">

	<script type="text/javascript">
		$("#btn").click(function() {
			var dataColumnIds = "";
			var dataRowIds = "";
			var seatNumbers = "";
			$(".ticket-container").find('span').each(function() {
				//alert($(this).attr("data-column-id")+","+$(this).attr("data-row-id"));
				dataColumnIds += $(this).attr("data-column-id") + ",";
				dataRowIds += $(this).attr("data-row-id") + ",";
				seatNumbers += $(this).text() + ",";
			})
			dataColumnIds = dataColumnIds.substring(0, dataColumnIds.length - 1);
			dataRowIds = dataRowIds.substring(0, dataRowIds.length - 1);
			seatNumbers = seatNumbers.substring(0, seatNumbers.length - 1);
			//alert(dataColumnIds);
			//alert(dataRowIds);
			//alert(seatNumbers);
			//'dataColumnIds':dataColumnIds,
			//'dataRowIds':dataRowIds,
			//alert($(".price").text());
			$.ajax({
				url : "insertBookIng",
				type : "post",
				data : {
					'seatNumber' : seatNumbers,
					'msid' : $("#msId").val(),
					'price' : $(".price").text(),
					'movieId': $("#movieId").val()
				},
				dataType : "json",
				success : function(data) {
					$("#oTime").val(data.orderTime);
					window.location.href = "zfb?bookNumber=" + data.bookNumber + "&orderTime=" + data.orderTime+"&movieId="+$("#movieId").val();
				}
			});

			/* $(".row").each(function(){
				$(this).find("span").each(function(){
					if($(this).hasClass('seat selected')){
						dataColumnId = $(this).attr("data-column-id");
						dataRowId = $(this).attr("data-row-id");
					}
				})
			}) */

		})
	</script>

	<!-- <div class="footer" style="visibility: visible;">
    <p class="friendly-links">
      商务合作邮箱：v@maoyan.com
      客服电话：10105335
      违法和不良信息举报电话：4006018900
      <br>
      投诉举报邮箱：tousujubao@meituan.com
      舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links">
        友情链接 :
        <a href="http://www.meituan.com/" data-query="utm_source=wwwmaoyan" target="_blank">美团网</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan" target="_blank">美团下载</a>
    </p>
    <p>
        ©2016
        猫眼电影 maoyan.com
        <a href="https://tsm.miit.gov.cn/pages/EnterpriseSearchList_Portal.aspx?type=0&amp;keyword=%E4%BA%ACICP%E8%AF%81160733%E5%8F%B7&amp;pageNo=1" target="_blank">京ICP证160733号</a>
        <a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备16022489号-1</a>
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232" target="_blank">京公网安备 11010102003232号</a>
        <a href="http://maoyan.com/about/licence" target="_blank">网络文化经营许可证</a>
        <a href="http://www.meituan.com/about/rules" target="_blank">电子公告服务规则</a>
    </p>
    <p>北京猫眼文化传媒有限公司</p>
</div> -->

	<!--[if IE 8]><script src="//ms0.meituan.net/mywww/es5-shim.bbad933f.js"></script><![endif]-->
	<!--[if IE 8]><script src="//ms0.meituan.net/mywww/es5-sham.d6ea26f4.js"></script><![endif]-->
	<script
		src="${pageContext.servletContext.contextPath }/mymovie_files/common.dc33ab40.js.下载"></script>
	<script
		src="${pageContext.servletContext.contextPath }/mymovie_files/cinemas-seat.f35e64e9.js.下载"></script>






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