<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

</head>
<body><%-- 
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 登录
</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog" style="width:400px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <center><h4 class="modal-title" id="myModalLabel">用户登录</h4></center>
      </div>
      <div class="modal-body">
        <form role="form" action="" method="post" class="registration-form">
	                    	<div class="form-group">
	                    		<label class="sr-only" for="form-first-name">First name</label>
	                        	<input type="text" name="form-first-name" placeholder="请输入用户名" class="form-first-name form-control" id="form-first-name">
	                        </div>
	                        <div class="form-group">
	                        	<label class="sr-only" for="form-last-name">Last name</label>
	                        	<input type="text" name="form-last-name" placeholder="请输入密码" class="form-last-name form-control" id="form-last-name">
	                        </div>
	                        
	                     <center><button  type="submit" class="btn" >登录</button></center>
	                    </form>
      </div>
      <div class="modal-footer">
       
        <button type="button" class="btn btn-primary" >立即注册</button>
      </div>
    </div>
  </div>
</div> --%>


<div class="modal fade"  id="mm" tabindex="-1" role="dialog">
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
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<a href="javascript:void(0);" id="t">ttt</a>
<script type="text/javascript">
	$("#t").click(function(){
		$("#mm").modal('show');
	})
</script>

</body>
</html>