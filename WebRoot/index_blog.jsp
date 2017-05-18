<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- The above 2 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="itguang">
<link rel="icon" href="images/favicon.ico">

<!-- Note there is no responsive meta tag here -->



<title>it光</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom styles for this template -->
<link href="css/non-responsive.css" rel="stylesheet">

<link href="css/blog.css" rel="stylesheet">

</head>

<body>

	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">


					<nav class="navbar navbar-default navbar-inverse navbar-fixed-top"
						role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span>

							</button>
							&nbsp;&nbsp;&nbsp;<a class="navbar-brand" href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it光</a>
						</div>

						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class=""><a href="index.jsp"><span
										class="badge pull-right">42</span> 首页</a></li>
								<li class="active"><a
									href="${pageContext.request.contextPath}/article_list.action">我的博客</a></li>
								<li><a href="index_itsource.jsp">资源分享</a></li>
								<li><a href="index_read.jsp">读书</a></li>


								<li><a href="#">好玩的</a></li>
								<li><a href="#">最右</a></li>
								<li><a href="#">问答</a></li>
								<li><a href="#">赞助</a></li>



							</ul>
							<%@include file="top_last.jsp"%>
						</div>

					</nav>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">

		<br>
		<div class="row clearfix">
		
			<div class="col-md-12 column">
			
				<c:forEach items="${page.records}" var="c" varStatus="vs">
					<div class="jumbotron well">
						<h2>
							<a
								href="${pageContext.request.contextPath}/article_read?aid=${c.aid}"
								target="_blank" style="text-decoration: none;">${c.title}</a>

						</h2>
						<p style="font-size: 18px">${c.outline}...</p>
						<p></p>

						<!-- <button type="button" class="btn btn-default btn-xs"> -->
						<span class="glyphicon glyphicon-user"></span> <a
							href="article.html" target="_blank"
							style="text-decoration: none; color: black">${c.author}&nbsp;</a>
						<!-- </button> -->

						<span class="glyphicon glyphicon-time">&nbsp;${c.time}</span>
						&nbsp; <span class="glyphicon glyphicon-eye-open">&nbsp;21024次</span>
						&nbsp; <span class="glyphicon glyphicon-list">&nbsp; <span
							class="label label-info">${c.tag}</span> <span
							class="label label-info">标签3</span>
						</span>


					</div>
				</c:forEach>


			</div>
		</div>


		<ul class="pagination">

			
			<li><a
				href="${pageContext.request.contextPath}/article_list.action?pagenum=1">首页</a></li>
			<li><a
				href="${pageContext.request.contextPath}/article_list.action?pagenum=${page.pagenum-1==0?1:page.pagenum-1}">上一页</a></li>
    <c:forEach begin="${page.startPage}" end="${page.endPage}" var="num">
      
      <li><a href="${pageContext.request.contextPath}/article_list.action?pagenum=${num}">${num}</a></li>
       </c:forEach>

			<li><a
				href="${pageContext.request.contextPath}/article_list.action?pagenum=${page.pagenum+1>page.totalpage?page.totalpage:page.pagenum+1}">下一页</a></li>
			<li><a
				href="${pageContext.request.contextPath}/article_list.action?pagenum=${page.totalpage}">尾页</a></li>
		</ul>
		<li>第${page.pagenum}页/共${page.totalpage}页&nbsp;&nbsp;</li>

	</div>
	<!-- /container -->

	<%@include file="footer.jsp"%>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery.min.js"><\/script>')
	</script>
	<!-- <script src="js/bootstrap.min.js"></script> -->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
