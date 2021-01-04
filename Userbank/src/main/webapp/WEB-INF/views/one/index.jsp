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
				<h4>产看交易记录:</h4>
					<table class="table table-bordered"> 
						<thead> 
							 <tr> 
								<th>序号</th> 
								<th>对方账户</th>
								<th>交易金额</th>
								<th>交易类型</th>
								<th>交易日期</th>
							</tr> 
						</thead>						
						 <tbody>
						 <c:forEach items="${page.list}" var="user">
						  <tr> 
						 		 <td >${user.id}</td> 
						 		 <td>${user.otheraccount}</td> 
						 		 <td>${user.transactionAmount}</td>
								 <td>${user.tradetyp}</td>
								 <td>${user.tradeTime}</td>						 		
						  </tr> 
						  </c:forEach>  
						  		
						      </tbody>
						 </table>
						 <div class="col-md-6">
						<nav>
							<ul class="pagination pagination-lg">
							
								<li><a href="${path}/Tradelist/${sessionScope.user.id}" >首页</a></li>
								<c:if test="${page.hasPreviousPage}">
								<li><a href="${path}/Tradelist/${sessionScope.user.id}?pn=${page.pageNum - 1}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach items="${page.navigatepageNums }" var="page_Num">
							<c:if test="${page_Num == page.pageNum }">
								<li class="active"><a href="#">${page_Num }</a></li>
							</c:if>
							<c:if test="${page_Num != page.pageNum }">
								<li><a href="${path}/Tradelist/${sessionScope.user.id}?pn=${page_Num}">${page_Num}</a></li>
							</c:if>
						</c:forEach>
								<c:if test="${page.hasNextPage}">
								<li><a href="${path}/Tradelist/${sessionScope.user.id}?pn=${page.pageNum+1}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
								</c:if>
								<li> <a href="${path}/Tradelist/${sessionScope.user.id}?pn=${page.pages}">末页</a></li>
							</ul>
						</nav>
						</div>
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
</html>