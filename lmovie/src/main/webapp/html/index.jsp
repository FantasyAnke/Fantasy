
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Register Login Widget Flat Responsive Widget Template :: w3layouts</title>
<!--Custom Theme files-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Register Login Widget template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login Signup Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="${pageContext.servletContext.contextPath }/html/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Jura:400,300,500,600' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.3.min.js"></script>

</head>
<body>
	<h1>登录注册</h1>
	<!-- main -->
	<div class="main">
		<!--login-profile-->
		
		<!--login-profile-->
		<!--signin-form-->
		<div class="w3">
			<div class="signin-form profile">
				<h3>登录</h3>
				
				<div class="login-form">
					<form action="/A307/platformlogin" method="post">
						<input type="text" name="platformname" placeholder="请输入用户名" required="">
						<input type="password" name="platformpass" placeholder="请输入密码" required="">
						<div class="tp">
							<input type="submit" value="登录">
						</div>
					</form>
				</div>
				
			</div>
		</div>
		<div class="agile">
			<div class="signin-form profile">
				<h3>注册</h3>
				
				<div class="login-form">
		  <form action="/A307/platformregister" method="post">  
			<input type="text"  name="platformname" placeholder="用户名"  id="platformname"required="">
			<input type="password" name="platformpass" placeholder="密码" id="platformpass" required="">
			<input type="text" name="phone" placeholder="手机号" id="phone" required="">
			<input type="text" name="number" placeholder="身份证号" id="number" required="">
			<input type="submit"  value="注册" onclick="register()" > 

		</form>  
				</div>
				
			</div>
		</div>
		<div class="clear"></div>
			
	</div>
	<!-- <div class="copyright">
		<p> &copy; 2016 Register Login Widget . All rights reserved | Design by <a href="http://w3layouts.com/" target="_blank" >W3layouts</a></p>
	</div> -->	
	
<script type="text/javascript">



 /* function register(){
	alert($("#number").val());
	$.ajax({
		url:"platformregister",
		type:"post",
		data:{
			platformname:$("#platformname").val(),
			platformpass:$("#platformpass").val(),
			phone:$("#phone").val(),
			number:$("#number").val(),
		},
		dataType:"json",
		success:function(data){
			if(data=="1"){
				rlert(1);
				alert("注册成功，请登录")
				/* $(".platformname").html("登录成功！").css("color","green");
				$("#myModal").modal("hide"); */
				
				
			}else{
				
				
			}
		}
	});
}  */
	
	
	
	

	
</script>
					
</body>


</html>