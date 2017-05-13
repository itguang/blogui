<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<link rel="icon"
	href="${pageContext.request.contextPath}/images/favicon.ico">
<title>it光</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/non-responsive.css"
	rel="stylesheet">


</head>
<body>
	<%@include file="top.jsp"%>
	

	<div class="tab-content">
	
		<!-- 首页列表 -->
		<div id="home" class="tab-pane fade in active">
			<%@include file="list_article.jsp"%>
		</div>
		
		
		<!-- 博客列表 -->
		<div id="blog" class="tab-pane fade">
			<%@include file="blog_list_article.jsp"%>
		</div>
		
		<!-- 读书-->
		<div id="read" class="tab-pane fade">
			<%@include file="list_book.jsp"%>
		</div>
		
		
		<!--  资源分享-->
		<div id="itsource" class="tab-pane fade">
			<%@include file="list_itsource.jsp"%>
		</div>
	
		<div id="menu5" class="tab-pane fade">
			<h1>问答</h1>

		</div>
		<div id="menu6" class="tab-pane fade">
			<h1>赞助</h1>

		</div>
		
	</div>
	

    
</body>
</html>