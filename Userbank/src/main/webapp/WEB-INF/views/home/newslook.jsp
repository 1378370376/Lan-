<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%pageContext.setAttribute("path", request.getContextPath()); %>
</head>
	<jsp:include page="/utils/css.jsp"></jsp:include>
<body  class="cbp-spmenu-push">
	<div class="main-content">
		
		<jsp:include page="/utils/nav.jsp"></jsp:include>
		<jsp:include page="/utils/header.jsp"></jsp:include>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
			<div style="height: 50px;"></div>
					<div id="div1" class="toolbar"></div>
					<div style="padding: 5px 0; color: #ccc"></div>
					<div id="div2" class="text">
						<div align="center"><h2>${news.title}</h2></div>
						<div align="center"><h4>${news.author}</h4></div>
						<p>${news.content}</p>
						</div>
					<a class="btn btn-large btn-info" href="${path}/index" >返回上一页</a>
				</div>
					</div>
			</div>
		<div class="footer">
		   <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	<jsp:include page="/utils/js.jsp"></jsp:include>
	<script type="text/javascript" src="${path}/js/wangEditor.min.js"></script>
</body>
</html>