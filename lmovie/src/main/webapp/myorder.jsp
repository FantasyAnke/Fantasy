<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	src="${pageContext.servletContext.contextPath }/myorder_files/saved_resource"></script>
<script>
	cid = "c_wmvmtivj";
	ci = 73;
	window.system = {
		"user" : {
			"id" : 662953629,
			"token" : "dwJ6pdTWi8pPMCESgDlBVqvApMYAAAAATwYAAJp_dM4prOzaRiTpzgPo86vwID8G-QHlQq1KYxE6V-650alS4LRaj4FMWhGBF-zpAw",
			"username" : "bcT林笑",
			"profile" : {
				"avatarType" : 0,
				"birthday" : 0,
				"currentExp" : 0,
				"gender" : 0,
				"id" : 0,
				"juryLevel" : 0,
				"nickNameStatus" : 0,
				"roleType" : 0,
				"signatureStatus" : 0,
				"totalExp" : 0,
				"uid" : 0,
				"userLevel" : 0,
				"vipType" : 0
			}
		},
		"uid" : 662953629,
		"cinemaId" : 16929,
		"mobilePhone" : "15994154861",
		"orderId" : "3359126961"
	};

	window.openPlatform = '';
	window.openPlatformSub = '';
</script>

<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/myorder_files/common.4b838ec3.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/myorder_files/order-confirm.598bbaa8.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/layui-v2.3.0/layui/css/layui.css"
	media="all">
<%-- <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/bootstrap.min.css" />





<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/bootstrap.min.js"></script> --%>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/layui-v2.3.0/layui/layui.js"></script>



<link rel="stylesheet" href="index/lib.css">
<link rel="stylesheet" href="index/ui.css">
<link rel="stylesheet" href="index/dialog_f5e2c3d.css">
<link rel="stylesheet" href="index/index.css">
<link rel="stylesheet" href="index/ranklist_778b93f.css">


<script
	src="${pageContext.servletContext.contextPath }/myorder_files/stat.74891044.js.下载"></script>
<script async="" defer="" charset="utf-8"
	src="${pageContext.servletContext.contextPath }/myorder_files/web.js.下载"></script>
<script>
	if (window.devicePixelRatio >= 2) {
		document.write('<link rel="stylesheet" href="//ms0.meituan.net/mywww/image-2x.8ba7074d.css"/>')
	}
</script>
<style>
@font-face {
	font-family: stonefont;
	src:
		url('//vfile.meituan.net/colorstone/8b1e8761ec246fffc59062c352f8cdb63168.eot');
	src:
		url('//vfile.meituan.net/colorstone/8b1e8761ec246fffc59062c352f8cdb63168.eot?#iefix')
		format('embedded-opentype'),
		url('//vfile.meituan.net/colorstone/f0b858a03ba9d4d3c4090823637224de2080.woff')
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









	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.servletContext.contextPath }/js/jquery.qrcode.min.js"></script>

	<!-- 二维码显示 模态框 -->
	<div class="modal fade" id="show_model" style="display: none;"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">支付二维码</h4>
				</div>
				<div class="modal-body">
					<label for="inputEmail3" class="col-sm-6 control-label">扫码支付：</label>
					<div id="qrcodeTable"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="add">Save
						changes</button>
				</div>
			</div>
		</div>
	</div>

	<!-- <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
  <blockquote class="layui-elem-quote layui-quote-nm">
    Tips：为了更清晰演示，每触发下述一个例子之前，都会关闭所有已经演示的层
  </blockquote>
  <button data-method="notice" class="layui-btn">示范一个公告层</button>
</div> -->




	<div class="container" id="app">
		<div class="order-progress-bar">
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
			<div class="step done">
				<span class="step-num">3</span>
				<div class="bar"></div>
				<span class="step-text">14分钟内付款</span>
			</div>
			<div class="step last ">
				<span class="step-num">4</span>
				<div class="bar"></div>
				<span class="step-text">影院取票观影</span>
			</div>
		</div>


		<div class="count-down-wrapper">
			<div class="count-down" id="time" data-payleftseconds="899">
				<p class="time-left">
					请在 <span class="minute">10</span> 分钟 <span class="second">53</span>秒内完成支付
				</p>
				<p class="tip">超时订单会自动取消</p>
			</div>
		</div>



		<script type="text/javascript">
			var orderTime = '${orderTime}';
			var newDate = new Date();
			//alert(orderTime);
			var t = new Date(orderTime);//转化为日期格式
			var t_s = t.getTime();//转化为时间戳毫秒数
			var n_s = newDate.getTime();
			var j_s = t_s + 1000 * 60 * 15
			var d_s = parseInt(j_s - n_s);
			var d = parseInt(d_s / 1000);

			$("#time").attr("data-payleftseconds", d);
		</script>
		<p class="warning">
			请仔细核对场次信息，出票后将<span class="attention">无法退票和改签</span>
		</p>
		<input type="hidden" id="bookNumber" value="${map[0].bookNumber }">
		<table class="order-table">
			<thead>
				<tr>
					<th>影片</th>
					<th>放映时间</th>
					<th>影院</th>
					<th>座位</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="movie-name">${map[0].movieDBName }</td>
					<td class="showtime">${map[0].msBeginTime }</td>
					<td class="cinema-name">${map[0].movieName }</td>
					<td><span class="hall">${map[0].mhName }</span> <!-- <div class="seats">
							<div>
								<span class=""><i>6</i>排<i>15</i>座</span>
							</div>
							<div></div>
						</div></td> --> <span>${map[0].seatNumber }</span>
				</tr>
			</tbody>
		</table>


		<div class="right">
			<div class="price-wrapper">
				<span>实际支付 :</span> <span class="price">${map[0].price }</span>
			</div>
			<div>
				<form class="layui-form" action="showZFB" method="post">
					<input type="hidden" name="bookNumber"
						value="${map[0].bookNumber }"> <input type="hidden"
						name="subject" value="影院购票"> <input type="hidden"
						name="price" id="toPrice">

					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit="" lay-filter="demo1">确认支付</button>
						</div>
					</div>
				</form>
				<!-- <div class="pay-btn" data-order-id="3359126961" data-act="pay-click"
					data-bid="b_u30afks6" id="btn">确认支付<input type="submit" value="确认支付"></div> -->

			</div>
		</div>


		<script type="text/javascript">
			//alert($("#bookNumber").val());
			//$("#toBookNumber").val($("#bookNumber").val());
			$("#toPrice").val($(".price").text());

			/* $("#btn").click(function(){
				$("#formPay").submit();
			}) */
		</script>

		<form name="cashierForm" method="post"
			action="https://mpay.meituan.com/cashier/pc/index">
			<input type="hidden" name="token" value=""> <input
				type="hidden" name="tradeno" value=""> <input type="hidden"
				name="pay_token" value=""> <input type="hidden"
				name="website" value="mtmaoyan"> <input type="hidden"
				name="pay_success_url"
				value="http://www.maoyan.com/order/result/3359126961"> <input
				type="hidden" name="nb_platform" value="www"> <input
				type="hidden" name="nb_source" value="cashier-pcforcustomer">
		</form>


		<div class="modal-container" style="display: none">
			<div class="modal">
				<span class="icon"></span>

				<p class="tip">支付超时，该订单已失效，请重新购买</p>

				<div class="ok-btn btn">我知道了</div>
			</div>
		</div>

	</div>


	<!--[if IE 8]><script src="//ms0.meituan.net/mywww/es5-shim.bbad933f.js"></script><![endif]-->
	<!--[if IE 8]><script src="//ms0.meituan.net/mywww/es5-sham.d6ea26f4.js"></script><![endif]-->
	<script
		src="${pageContext.servletContext.contextPath }/myorder_files/common.dc33ab40.js.下载"></script>
	<script
		src="${pageContext.servletContext.contextPath }/myorder_files/order-confirm.9722797a.js.下载"></script>

	<!-- <script type="text/javascript">
	$("#btn").click(function(){
		//window.location.href="/movie/movie/kb/alipay.trade.page.pay.jsp?WIDout_trade_no="+$("#bookNumber").val()+"&WIDtotal_amount="+$(".price").text()+"&WIDsubject="+"影院购票"+"&WIDbody=''";
		$.ajax({
			url:"showZFB",
			type:"post",
			data:{
				'bookNumber':$("#bookNumber").val(),
				'subject':"影院购票",
				'price':$(".price").text()
			},
			dataType:"html",
			success:function(data){
				//alert(data);
				var ewm = data;
				$("#show_model").modal("show");
				//window.location.href="qrcode.jsp?erweima="+data;
				$("#qrcodeTable").qrcode({
					render	: "table",
					text	: ewm
				});	 
			}
		});
	
	})
</script> -->


	<%-- <script>
	//jQuery('#qrcodeTable').qrcode("this plugin is great");
	//table
	 
  //jQuery('#qrcodeTable').qrcode({width: 200,height: 200,correctLevel:0,render: "table",text: "ba labv a fdsl"});   
 
	jQuery('#qrcodeTable').qrcode({
		render	: "table",
		text	: "<%=request.getAttribute("msg") %>"
	});	 
	/* jQuery('#qrcodeCanvas').qrcode({
		text	: "https://qr.alipay.com/bax02520ntwh1codx6m800cc"
	});	 */
</script> --%>





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