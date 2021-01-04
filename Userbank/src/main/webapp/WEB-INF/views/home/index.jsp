<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<h1 align="center">		
			<font color="red">欢迎来到银行系统</font>
			</h1>
			<ul>
			<c:forEach items="${news}" var="news">
			<li><a href="${path}/getNews/${news.id}">${news.title}</a><li>
			</c:forEach>
			</ul>
			
			</div>
			</div>
			</div>
		<div class="footer">
		   <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	<jsp:include page="/utils/js.jsp"></jsp:include>
</body>
</html>