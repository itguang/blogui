<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>${article.title}</title>

<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/blog.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/non-responsive.css"
	rel="stylesheet">


</head>

<body>


	<div class="container">

		<div class="blog-header">
			<h1 class="blog-title">${article.title}标题</h1>

		</div>

		<div class="row">
			<div class="blog-post">
			标签:
				<span class="label label-info">&nbsp;${article.tag}&nbsp;</span> &nbsp;<br><br>
				<span class="glyphicon glyphicon-eye-open" style="text-align:right">&nbsp;21024
				</span> 
				&nbsp;&nbsp;&nbsp;
				<span class="glyphicon glyphicon-time" style="text-align:right">&nbsp;${article.time} by <a href="#">${article.author}</a>
				</span> 
				<strong> 
				<span class="text-right"><p class="" text>
							<br>
						</p> </span></strong>

				<div class="col-sm-8 blog-main">

					<div class="blog-post">${article.content}</div>


					<!-- /.blog-post -->

					<nav>
						<ul class="pager">
							<li><a href="#">上一篇</a></li>
							<li><a href="#">下一篇</a></li>
						</ul>
					</nav>

				</div>
				<!-- /.blog-main -->
				

					<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
						<div class="sidebar-module sidebar-module-inset"
							style="text-align: center;">
							<h4>关于作者</h4>
							<div class="row clearfix">
								<div class="col-md-12 column">
									<img alt="140x140" src="images/tou.jpg" class="img-circle" />
								</div>
							</div>
							<p>
								<strong><a href="#">itguang</a></strong>
							</p>
							<p>昵称:最后一只雅美蝶</p>
							<p>总访问量:1024次</p>

						</div>
						<div class="sidebar-module">
							<h4>文章分类</h4>
							<ol class="list-unstyled">
								<li><a href="#">March 2014</a></li>
								<li><a href="#">February 2014</a></li>
								<li><a href="#">January 2014</a></li>
								<li><a href="#">December 2013</a></li>
								<li><a href="#">November 2013</a></li>
								<li><a href="#">October 2013</a></li>
								<li><a href="#">September 2013</a></li>
								<li><a href="#">August 2013</a></li>


							</ol>
						</div>
						<div class="sidebar-module">
							<h4>阅读排行</h4>
							<ol class="list-unstyled">
								<li><a href="#">March 2014</a></li>
								<li><a href="#">February 2014</a></li>
								<li><a href="#">January 2014</a></li>
								<li><a href="#">December 2013</a></li>
								<li><a href="#">November 2013</a></li>
								<li><a href="#">October 2013</a></li>
								<li><a href="#">September 2013</a></li>
								<li><a href="#">August 2013</a></li>


							</ol>
						</div>
						<div class="sidebar-module">
							<h4>文章存档</h4>
							<ol class="list-unstyled">
								<li><a href="#">March 2014</a></li>
								<li><a href="#">February 2014</a></li>
								<li><a href="#">January 2014</a></li>
								<li><a href="#">December 2013</a></li>
								<li><a href="#">November 2013</a></li>
								<li><a href="#">October 2013</a></li>
								<li><a href="#">September 2013</a></li>
								<li><a href="#">August 2013</a></li>
								<li><a href="#">July 2013</a></li>

							</ol>
						</div>
						<div class="sidebar-module">
							<h4>Elsewhere</h4>
							<ol class="list-unstyled">
								<li><a href="#">GitHub</a></li>
								<li><a href="#">Twitter</a></li>
								<li><a href="#">Facebook</a></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.blog-sidebar -->

			</div>
			<!-- /.row -->

		
		<!-- /.container -->

		<%@include file="footer.jsp"%>
</body>
</html>
