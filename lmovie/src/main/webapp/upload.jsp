<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传图片</title>
</head>
<body>
<form action="${pageContext.servletContext.contextPath }/upload2" method="post" 
	enctype="multipart/form-data">
		<input type="file" name="img">
		<input type="submit" value="提交">
	</form>
</body>
</html>