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
<base href="${basePath}">
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">
<link rel="icon" href="images/favicon.ico">
<title>写文章</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://cdn.ckeditor.com/4.6.2/standard-all/ckeditor.js"></script>
<style type="text/css">
#titleStyle {
	text-align: center;
}

#title {
	border-left-width: 0px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-color: black;
	height: 50px;
	width: 800px;
	font-size: 32px;
	color: #808080;
	text-align: center;
	margin-bottom: 20px;
}

#outline {
	resize: none;
	width: 700px;
	height: 150px;
	padding: 20px;
	font_size: 20px;
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>

<script>
function submit()
{
	   $.ajax({  
           cache: true,  
           type: "POST",  
           url:"article_add.html",  
           data:$('#myform').serialize(),// 你的formid  
           async: false,  
           error: function(request) {  
               //alert("Connection error:"+request.error);  //发表失败
           },  
           success: function(data) {  //发表成功
              
           }  
       });  
    
  
}
</script>



</head>

<body>

	<form id="myform"
		action="${pageContext.request.contextPath}"
		method="post" >

		<div id="titleStyle">
			<input id="title" name="title" type="text" value="#文章标题#"><br>
		</div>
		<div>
			<a href="mk/simples/editormd.jsp" style="color:blue;text-font:30px"><span>切换到markdown编辑器</span></a>
		</div>
		<textarea cols="80" id="editor1" name="editor" rows="10">
	</textarea>
		<table>
			<tr>
				<td>简介:</td>
				<td><textarea name="outline" id="outline" style="">请输入文章概要,帮助别人快速了解,250字左右即可...</textarea>
				</td>
				<td><span style="color:red"></span></td>
			</tr>
			<tr>
				<td>分类:</td>
				<td><input id="" name="category" type="text" value=""
					style="height:30px;width:300px" easyform="email;real-time;">
				</td>
			</tr>
		</table>
		
		
		
	</form>
	
	
	
	
	<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
       <a id="modal-699765" href="#modal-container-699765" role="button" class="btn" data-toggle="modal" onclick="submit()">发表文章</a>
      
      <div class="modal fade" id="modal-container-699765" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h4 class="modal-title" id="myModalLabel">
                操作成功!
              </h4>
            </div>
            <div class="modal-body">
            <div class="row clearfix">
    <div class="col-md-12 column">
      <div class="alert alert-dismissable alert-info">
         <button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button>
        <h4>
          本次发表:
        </h4> <strong>时间:</strong> 2017-5-14 20:22:36
        <br>
        </h4> <strong>用时:</strong> 500毫秒
      </div>
    </div>
  </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal" onclick="window.location.reload('editArticle.jsp')">继续写文章</button> 
               <button type="button" class="btn btn-primary" onclick="window.location.reload('article_add')">查看文章</button>
            </div>
          </div>
          
        </div>
        
      </div>
      
    </div>
  </div>
</div>
<br><br><br><br><br><br>

	<script>
		//tableresize---表格Resizing
		//codesnippet---代码段
		//uploadimage---上传图片
		//image2---带标题的图片
		//colorbutton,colordialog ----文字,文字背景
		var config = {
			extraPlugins : 'codesnippet,uploadimage,image2,colorbutton,colordialog,tableresize',
			codeSnippet_theme : 'school_book',//自定义主题: https://highlightjs.org/static/demo/-----//monokai_sublime
			height : 356,
			resize_minHeight : 356,
			contentsLanguage : 'zh-cn',
			uiColor : '',

			// Upload images to a CKFinder connector (note that the response type is set to JSON).
			uploadUrl : 'servlet/UploadServlet',//图片上传路径

			//服务器处理上传图片的地址
			filebrowserImageUploadUrl : 'servlet/UploadServlet',

		};

		CKEDITOR.replace('editor1', config);
	</script>
	 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>