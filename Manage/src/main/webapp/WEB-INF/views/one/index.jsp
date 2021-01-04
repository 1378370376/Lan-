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
				<h4>所有账户:</h4>
				<form action="${path}/ssUsers" method="post">
								 <div class="form-group">
								  <label for="likename" class="col-sm-2 control-label">输入姓名查询:</label> 
								  <div class="col-sm-4"> 
								  <input type="text" class="form-control" name="name" > 
								  </div> 
								  <input type="submit" class="btn btn-primary" value="搜索" />
								  </div> 
								  </form>	
					<table class="table table-bordered"> 
						<thead> 
							 <tr> 
								<th>序号</th> 
								<th>账户</th>
								<th>账户余额</th>
								<th>姓名</th>
								<th>详细地址</th>
								<th>身份证号</th>
								<th>手机号码</th>
								<th>状态</th>
								<th>操作</th>
							</tr> 
						</thead>						
						 <tbody>
						 <c:forEach items="${page.list}" var="user">
						 <c:if test="${user.status !=3}">
						  <tr> 
						 		 <td >${user.id}</td> 
						 		 <td><a href="user/${user.id}" >${user.account}</a></td> 
						 		 <td>${user.balance}</td>
						 		 <td>${user.username}</td>
						 		 <td>${user.homeAddress}</td> 
						 		 <td>${user.sfz}</td> 
						 		 <td>${user.phoneNumber}</td> 
						 		 <td>${user.status==1 ? "启用" :"禁用"}</td> 
						 		 <td><button type="button" onclick=freeze(${user.id}) class="btn btn-warning">冻结</button>
						 		 <button type="button" onclick="deleteUser(${user.id})" class="btn btn-danger">删除</button>
						 		 </td>
						  </tr> 
						  </c:if>
						  </c:forEach>  
						  		
						      </tbody>
						 </table>
						 <div class="col-md-6">
						<nav>
							<ul class="pagination pagination-lg">
							
								<li><a href="${path}/list" >首页</a></li>
								<c:if test="${page.hasPreviousPage}">
								<li><a href="${path}/list?pn=${page.pageNum - 1}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach items="${page.navigatepageNums }" var="page_Num">
							<c:if test="${page_Num == page.pageNum }">
								<li class="active"><a href="#">${page_Num }</a></li>
							</c:if>
							<c:if test="${page_Num != page.pageNum }">
								<li><a href="${path}/list?pn=${page_Num}">${page_Num}</a></li>
							</c:if>
						</c:forEach>
								<c:if test="${page.hasNextPage}">
								<li><a href="${path}/list?pn=${page.pageNum+1}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
								</c:if>
								<li> <a href="${path}/list?pn=${page.pages}">末页</a></li>
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
	<script type="text/javascript">
	function freeze(id){
		$.ajax({
			url : "${path}/freeze/" + id,
			type : "POST",
			data : "_method=PUT",
			success:function(result){
				alert(result);
				 window.location.href="${path}/list";
			}
		});
	}
	
	function deleteUser(id){
		$.ajax({
			url : "${path}/delete/" + id,
			type : "POST",
			data : "_method=DELETE",
			success:function(result){
				alert(result);
				window.location.href="${path}/list";
			}
		});
	}
	
	</script>
</body>
</html>