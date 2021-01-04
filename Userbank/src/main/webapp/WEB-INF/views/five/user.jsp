<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<h4>${user.username}的信息:</h4>
					<table class="table table-bordered"> 					
						  <tr> 
						  <td>账户</td> 
						  <td>${user.account}</td>	
						  </tr> 						     
						   <tr> 
						  <td>账户余额</td> 
						  <td>${user.balance}</td>	
						  </tr> 
						   <tr> 
						  <td>姓名</td> 
						  <td>${user.username}</td>	
						  </tr> 
						   <tr> 
						  <td>出生日期</td> 
						  <td>${user.birthday}</td>	
						  </tr> 
						   <tr> 
						  <td>性别</td> 
						  <td>${user.sex=='F' ? "男":"女"}</td>	
						  </tr> 
						   <tr> 
						  <td>家庭住址</td> 
						  <td>${user.homeAddress}</td>	
						  </tr> 
						   <tr> 
						  <td>手机号</td> 
						  <td>${user.phoneNumber}</td>	
						  </tr> 
						   <tr> 
						  <td>身份证号</td> 
						  <td>${user.sfz}</td>	
						  </tr> 					  
						 </table>
						
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