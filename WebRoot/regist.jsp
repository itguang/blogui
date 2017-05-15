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

<title>请注册</title>

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
			action="${pageContext.request.contextPath}/user_regist.action"
			method="post">
			<h2 class="form-signin-heading">请注册</h2>

			<input name="email" type="email" id="inputEmail" class="form-control"
				placeholder="邮箱" required autofocus> <span
				style="text-align:center; margin-top:20px; color:red">${map.email_error}</span>
			<input name="username" type="text" id="inputPassword"
				class="form-control" placeholder="用户名" required> <span
				style="text-align:center; margin-top:20px; color:red">${map.username_error}</span>

			<input name="password" type="password" id="inputPassword"
				class="form-control" placeholder="密码" required> <input
				name="rePassword" type="password" id="inputPassword"
				class="form-control" placeholder="确认密码" required> <span
				style="text-align:center; margin-top:20px; color:red">${map.password_error}</span>

			<button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
			我有账号,<a href="${pageContext.request.contextPath}/login.jsp">去登陆</a>
		</form>

	</div>
	<!-- /container -->


</body>
</html>
