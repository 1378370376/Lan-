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
				<h4>取款</h4>
					<table class="table table-bordered"> 					
						  <tr> 
						  <td>取款时间</td> 
						  <td><input type="text" id="time" value="${time}" readonly="readonly"/></td>	
						  </tr> 						    
						     <tr> 
						  <td>取款金额</td> 
						  <td>
						  <input type="text"  id="money"  onblur="yz()"/>
						 <div class="col-md-2">
							<font color="red" id="moneyfont"style="visibility:hidden">取款金额格式不正确</font>
						</div> 
						<span>  <font color="red">只能取出整数类型</font></span>
						  </td>	
						  </tr> 					  
						 </table>
						<button class="btn btn-primary" onclick="tj()">提交</button>
						</div>
			</div>
			</div>
			</div>
			</div>
			
		<div class="footer">
		   <p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	<jsp:include page="/utils/js.jsp"></jsp:include>
	<script type="text/javascript">
	var flag=false;
	function yz(){
		var reg = /^[1-9]\d*$/;
		var money=$("#money").val().trim();
		if(reg.test(money)){
			flag=true;
			$("#moneyfont").css("visibility","hidden");
		}else{
			$("#moneyfont").css("visibility","visible");
		}
	}
	function tj(){
		var time=$("#time").val();
		var money=$("#money").val();
	/* 	var id=${SessionScope.user.id}; */
		  $.ajax({
				url : "${path}/updateDrawMoneyTrade/${sessionScope.user.id}",
				type : "POST",
				data :{ 
					"_method":"PUT",
					"time":time,
					"money":money
				},
				success:function(result){
					if(result!=0){
						alert("取款成功！");
					 window.location.href="${path}/drawMoneyIndex";
					 }else{
						 alert("取款失败！");
					 }
				}
			});
	}
	
	</script>
</body>
</html>