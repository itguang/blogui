<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">

		
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
						href="article.jsp" target="_blank"
						style="text-decoration: none; color: black">itguang&nbsp;</a>
					<!-- </button> -->

					<span class="glyphicon glyphicon-time">&nbsp;2017-5-7 20:18</span>
					&nbsp; <span class="glyphicon glyphicon-eye-open">&nbsp;21024次</span>
					&nbsp; <span class="glyphicon glyphicon-list">&nbsp; <span
						class="label label-info">标签2</span> <span class="label label-info">标签3</span>
					</span>
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


	


</body>
</html>