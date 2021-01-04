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
						  <td>			
						 <div class="col-sm-8">
		<input type="text" class="form-control1" id="address" placeholder="${user.homeAddress}">
						</div>
						<div class="col-sm-2">
							<font color="red"  id="addressfont" style="visibility: hidden">家庭住址不能为空</font>							
						</div>
						</td>	
						  </tr> 
						   <tr> 
						  <td>手机号</td> 
						  <td>
						   <div class="col-sm-8">
		<input type="tel" class="form-control1" id="telphone" placeholder="${user.phoneNumber}">
						</div>
						<div class="col-sm-2">
							<font color="red"  id="telphonefont" style="visibility: hidden">电话号码不能为空</font>							
						</div>
						  </td>	
						  </tr> 
						   <tr> 
						  <td>身份证号</td> 
						  <td>${user.sfz}</td>	
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
		function tj(){
			var address=$("#address").val().trim();
			var phone=$("#telphone").val().trim();
			if(address!=null&&address!=""){
				
				$("#addressfont").css("visibility","hidden");
				
				if(phone!=null&&phone!=""){
					$("#telphonefont").css("visibility","hidden");
			$.ajax({
					url : "${path}/updateUserInfo",
					type : "POST",
					data : {
						"_method":"PUT",
						"id":"${sessionScope.user.id}",
						"homeAddress":address,
						"phoneNumber":phone
					},
					success:function(date){
						if(date!=0){
							alert("修改成功！");
						}else{
							alert("修改失败！");
						}
					}
				});
			}else{
				$("#telphonefont").css("visibility","visible");
			}
				
			}else{
				$("#addressfont").css("visibility","visible");
			}
		
	}
	</script>
</body>
</html>