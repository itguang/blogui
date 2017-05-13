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

<title></title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/non-responsive.css"
	rel="stylesheet">

  <link href="${pageContext.request.contextPath}/css/non-responsive.css"
	rel="stylesheet">


</head>

<body>


	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top"
		role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">it光</a>

			</div>
			<div>

				<ul class="nav navbar-nav">
					<li class="active"><a data-toggle="tab" href="#home">首页</a></li>
					<li><a data-toggle="tab" href="#blog">博客</a></li>

					
					
					<li><a data-toggle="tab" href="#itsource">资源分享</a></li>
					<li><a data-toggle="tab" href="#read">读书</a></li>
					

					<li><a data-toggle="tab" href="#menu5">问答</a></li>

					<li><a data-toggle="tab" href="#menu6">赞助</a></li>


				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" />
					</div>
					<button type="submit" class="btn btn-default">搜索全站</button>
				</form>
				<ul class="nav navbar-nav navbar-right">


					<li><a href="${pageContext.request.contextPath}/login.jsp"><span
							class="glyphicon glyphicon-user"></span> 登陆</a></li>
					<li><a href="${pageContext.request.contextPath}/regist.jsp"><span
							class="glyphicon glyphicon-log-in"></span> 注册</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">个人中心<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">发表博客</a></li>
							<li><a href="#">分享资源</a></li>
							<li><a href="#">个人信息</a></li>
							<li class="divider"></li>
							<li><a href="#">修改信息</a></li>
							<li><a href="#">注销登陆</a></li>
						</ul>
			</div>
		</div>
	</nav>

 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
