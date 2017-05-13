<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath); 
%>



<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">
 <link rel="icon" href="images/favicon.ico">
<title>写文章</title>

 <link rel="stylesheet" href="../css/editormd.css" />



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



</head>

<body>
	
	<form action="${pageContext.request.contextPath}/servlet/ArticleController" method="post">
	
	<div id="titleStyle">
		<input id="title" name="title" type="text" value="#文章标题#"><br>
	</div>
	
		 <div class="editormd" id="test-editormd">
                <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc"></textarea>
                <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
                <textarea class="editormd-html-textarea" name="editor"></textarea>
            </div>
            
            
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
		<input value="发表文章" type="submit"
			style="margin-right:20px; margin-top:20px;width:100px;height:40px"> <br> <br>
		<br> <br> <br> <br>
	</form>

	 <script src="js/jquery.min.js"></script>
        <script src="../editormd.min.js"></script>
        <script type="text/javascript">
			var testEditor;
            var text;

            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "90%",
                    height  : 640,
                    syncScrolling : "single",
                    htmlDecode : true, // Decode all html tags & attributes
                    // htmlDecode      : "style,script,iframe",  // you can filter tags decode
                   
                    path    : "../lib/",
                    imageUpload    : false,
                     saveHTMLToTextarea : true
              

                });
               // text = testEditor.getMarkdown();       // 获取 Markdown 源码
              
                        // 获取 Textarea 保存的 HTML 源码

               // text =  testEditor.getPreviewedHTML();  // 获取预览窗口里的 HTML，在开启 watch 且没有开启 saveHTMLToTextarea 时使用
                
                /*
                // or
                testEditor = editormd({
                    id      : "test-editormd",
                    width   : "90%",
                    height  : 640,
                    path    : "../lib/"
                });
                */
            });
          
        </script>
</body>

</html>