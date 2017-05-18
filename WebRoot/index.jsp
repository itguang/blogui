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
								<li class="active"><a href="index.jsp"><span
										class="badge pull-right">42</span> 首页</a></li>
								<li class=""><a href="${pageContext.request.contextPath}/article_list.action">我的博客</a></li>
								<li><a href="index_itsource.jsp">资源分享</a></li>
								<li><a href="index_read.jsp">读书</a></li>


								<li><a href="#">好玩的</a></li>
								<li><a href="#">最右</a></li>
								<li><a href="#">问答</a></li>
								<li><a href="#">赞助</a></li>



							</ul>
							
							<%@include file="top_last.jsp" %>

						</div>

					</nav>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="carousel slide" id="carousel-865826">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-865826"></li>
						<li data-slide-to="1" data-target="#carousel-865826"></li>
						<li data-slide-to="2" data-target="#carousel-865826"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="images/default.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="images/default1.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="images/default2.jpg" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-865826"
						data-slide="prev"><span
						class="glyphicon glyphicon-chevron-left"></span></a> <a
						class="right carousel-control" href="#carousel-865826"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>

		</div>
		<br>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="jumbotron well">
					<h2>
						<a href="article.jsp" target="_blank"
							style="text-decoration: none;">helloworld</a>

					</h2>
					<p style="font-size: 18px">This is a template for a simple
						marketing or informational website. It includes a large callout
						called the hero unit and three supporting pieces of content. Use
						it as a starting point to create something more unique...</p>
					<p></p>

					<!-- <button type="button" class="btn btn-default btn-xs"> -->
					<span class="glyphicon glyphicon-user"></span> <a
						href="article.html" target="_blank"
						style="text-decoration: none; color: black">itguang&nbsp;</a>
					<!-- </button> -->

					<span class="glyphicon glyphicon-time">&nbsp;2017-5-7 20:18</span>
					&nbsp; <span class="glyphicon glyphicon-eye-open">&nbsp;21024次</span>
					&nbsp; <span class="glyphicon glyphicon-list">&nbsp; <span
						class="label label-info">标签2</span> <span class="label label-info">标签3</span>
					</span>


				</div>
				<div class="jumbotron well">
					<h2>
						<a href="" style="text-decoration: none;">helloworld</a>

					</h2>
					<p style="font-size: 18px">This is a template for a simple
						marketing or informational website. It includes a large callout
						called the hero unit and three supporting pieces of content. Use
						it as a starting point to create something more unique...</p>
					<p></p>

					<button type="button" class="btn btn-default btn-xs">
						<span class="glyphicon glyphicon-user"></span> itguang
					</button>
					<button type="button" class="btn btn-default btn-xs">
						<span class="glyphicon glyphicon-time"></span> 2017-5-7 20:18
					</button>
					<span>分类:</span> <span class="label label-info">标签1</span> <span
						class="label label-info">标签2</span> <span class="label label-info">标签3</span>

				</div>
				<div class="jumbotron well">
					<h2>
						<a href="" style="text-decoration: none;">helloworld</a>

					</h2>
					<p style="font-size: 18px">This is a template for a simple
						marketing or informational website. It includes a large callout
						called the hero unit and three supporting pieces of content. Use
						it as a starting point to create something more unique...</p>
					<p></p>

					<button type="button" class="btn btn-default btn-xs">
						<span class="glyphicon glyphicon-user"></span> itguang
					</button>
					<button type="button" class="btn btn-default btn-xs">
						<span class="glyphicon glyphicon-time"></span> 2017-5-7 20:18
					</button>
					<span>分类:</span> <span class="label label-info">标签1</span> <span
						class="label label-info">标签2</span> <span class="label label-info">标签3</span>

				</div>
			</div>
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
