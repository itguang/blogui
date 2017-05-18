<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
								<li class=""><a
									href="${pageContext.request.contextPath}/article_list.action">我的博客</a>
								</li>
								<li class="active"><a href="index_itsource.jsp">资源分享</a></li class="active">
								<li><a href="index_read.jsp">读书</a></li>
								<li><a href="index_fun.html">好玩的</a></li>
								<li><a href="#">最右</a></li>
								<li><a href="index_answer.html">问答</a></li>
								<li><a href="index_donate.html">赞助</a></li>
							</ul>
							<%@include file="top_last.jsp"%>
						</div>

					</nav>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>

				<a class="btn" href="#">View details »</a><br>

				<!-- <button type="button" class="btn btn-default btn-xs"> -->
				<span class="glyphicon glyphicon-user"></span> <a
					href="article.html" target="_blank"
					style="text-decoration: none; color: black">itguang&nbsp;</a>
				<!-- </button> -->

				<span class="glyphicon glyphicon-time">&nbsp;2017-5-7 20:18</span>
				&nbsp; <span class="g  glyphicon glyphicon-download-alt">&nbsp;21024次</span>
				&nbsp; <span class="glyphicon glyphicon-list">&nbsp; <span
					class="label label-info">标签2</span> <span class="label label-info">标签3</span>
				</span> <br> <br>
			</div>
			<div class="col-md-12 column">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>

				<a class="btn" href="#">View details »</a><br>

				<!-- <button type="button" class="btn btn-default btn-xs"> -->
				<span class="glyphicon glyphicon-user"></span> <a
					href="article.html" target="_blank"
					style="text-decoration: none; color: black">itguang&nbsp;</a>
				<!-- </button> -->

				<span class="glyphicon glyphicon-time">&nbsp;2017-5-7 20:18</span>
				&nbsp; <span class="g  glyphicon glyphicon-download-alt">&nbsp;21024次</span>
				&nbsp; <span class="glyphicon glyphicon-list">&nbsp; <span
					class="label label-info">标签2</span> <span class="label label-info">标签3</span>
				</span> <br> <br>
			</div>
			<div class="col-md-12 column">
				<h2>Heading</h2>
				<p>Donec id elit non mi porta gravida at eget metus. Fusce
					dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
					ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
					magna mollis euismod. Donec sed odio dui.</p>

				<a class="btn" href="#">View details »</a><br>

				<!-- <button type="button" class="btn btn-default btn-xs"> -->
				<span class="glyphicon glyphicon-user"></span> <a
					href="article.html" target="_blank"
					style="text-decoration: none; color: black">itguang&nbsp;</a>
				<!-- </button> -->

				<span class="glyphicon glyphicon-time">&nbsp;2017-5-7 20:18</span>
				&nbsp; <span class="g  glyphicon glyphicon-download-alt">&nbsp;21024次</span>
				&nbsp; <span class="glyphicon glyphicon-list">&nbsp; <span
					class="label label-info">标签2</span> <span class="label label-info">标签3</span>
				</span> <br> <br>
			</div>
			<ul class="pagination">
				<li><a href="#">上一页</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">下一页</a></li>
			</ul>
		</div>
		<!-- /.container -->

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
