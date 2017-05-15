<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="images/favicon.ico">

<title>请登录</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/signin.css"
	rel="stylesheet">


</head>

<body>

	<div class="container">

		<form class="form-signin"
			action="${pageContext.request.contextPath}/user_login.action" method="post">
			<h2 class="form-signin-heading">请登录</h2>

			<input name="username" id="inputEmail" class="form-control"
				placeholder="用户名" required autofocus> 
				<input name="password" type="password" id="inputPassword"
				class="form-control" placeholder="密码" required> 
				<span
				style="text-align:center; margin-top:20px; color:red">${map.error}</span>
			<br> <a href="${pageContext.request.contextPath}/login.jsp"><img
				onclick="reloadCode()" alt="验证码 " id="imagecode"
				src="${pageContext.request.contextPath}/imageCode" /></a>&nbsp;&nbsp; <input
				name="imageCode" type="text" placeholder="请输入验证码"> <br>
			<span style="text-align:center; margin-top:20px; color:red">${map.imageCode}</span>


			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					记住密码
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
			没有账号?<a href="${pageContext.request.contextPath}/regist.jsp">立即注册</a>
		</form>

	</div>
	<!-- /container -->


</body>
</html>
