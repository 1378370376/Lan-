<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%pageContext.setAttribute("path", request.getContextPath()); %>
</head>
	<jsp:include page="/utils/css.jsp"></jsp:include>
<style>
.toolbar {
	border: 1px solid #ccc;
	width: 800px;
}
.text {
	border: 1px solid #ccc;
	height: 400px;
	width: 800px;
}
</style>
<body  class="cbp-spmenu-push">
	<div class="main-content">
		
		<jsp:include page="/utils/nav.jsp"></jsp:include>
		<jsp:include page="/utils/header.jsp"></jsp:include>
		<!-- //header-ends -->
		<!-- main content start-->
		
		<div id="page-wrapper">
			<div class="main-page">
			<div class="tables">
			<div class="bs-example widget-shadow" > 					
				<h4> 新闻信息</h4>
					<div class="row-fluid">

					<p>
						标题：<div class="controls"><input class="input-xlarge focused" id="title" type="text" /></div>
					</p>
					<p>
						作者：<div class="controls"><input class="input-xlarge focused" id="author" type="text" /></div>
					</p>
				</div>
				<div class="box-content">
					<div style="height: 50px;"></div>
					<div id="div1" class="toolbar"></div>
					<div style="padding: 5px 0; color: #ccc"></div>
					<div id="div2" class="text">
						<p> </p>
					</div>
			</div>
			<button class="btn btn-large btn-info"  onclick="tj()">保存</button>
			&nbsp;	&nbsp;
			<button class="btn btn-large btn-info"  onclick="back()">返回上一页</button>
			</div>
			</div>
			</div>
			</div>
			</div>			
		<div class="footer">
		   <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	<jsp:include page="/utils/js.jsp"></jsp:include>
</body>
	<script src="${path}/js/jquery-3.0.0.min.js"></script>
	<script src="${path}/js/wangEditor.min.js"></script>
	<script>
		var E=window.wangEditor
		var editor = new E('#div1', '#div2')
		//开启debug模式
		editor.customConfig.debug = true;
		// 关闭粘贴内容中的样式
		editor.customConfig.pasteFilterStyle = false
		// 忽略粘贴内容中的图片
		editor.customConfig.pasteIgnoreImg = true
		// 使用 base64 保存图片
		//editor.customConfig.uploadImgShowBase64 = true

		// 上传图片到服务器
		editor.customConfig.uploadFileName = 'file'; //设置文件上传的参数名称
		editor.customConfig.uploadImgServer = 'fileService'; //设置上传文件的服务器路径
		editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024; // 将图片大小限制为 3M
		//自定义上传图片事件
		editor.customConfig.uploadImgHooks = {
			before : function(xhr, editor, files) {

			},
			success : function(xhr, editor, result) {
				console.log("上传成功");
			},
			fail : function(xhr, editor, result) {
				console.log("上传失败,原因是" + result);
			},
			error : function(xhr, editor) {
				console.log("上传出错");
			},
			timeout : function(xhr, editor) {
				console.log("上传超时");
			}
		}
		editor.create();
		function tj(){
	 		var title = $("#title").val();
	 		var author = $("#author").val();
	 		var content = editor.txt.html();
	 		if(title == null || author == null || content == null
	 				||title == ''||author == ''||content == ''){
	 			alert('提交内容不能为空！');
	 			return;
	 		}
	 		$.ajax({
	 			url : '${path}/addNews',
	 			type: 'post',
	 			data: {
	 				'content':content,
	 				'title':title,
	 				'author':author
	 				},
	 			dataType: 'json',
	 			success: function(data){
	 			    if(data!=0){
	 			    	alert("添加成功！");
	 			    }else{
	 			    	alert("添加失败！");
	 			    }
	 			}
	 		});
	 	}
		function back(){
			window.location.href = "${path}/Newslist";
		}
	</script>
	
</html>