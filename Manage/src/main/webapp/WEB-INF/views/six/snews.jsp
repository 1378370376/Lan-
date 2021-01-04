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
				<h4> 新闻信息</h4>
							<div class="form-body">
							<form action="${path}/ssNews" method="get">
								 <div class="form-group">
								  <label for="likename" class="col-sm-2 control-label">输入标题查询:</label> 
								  <div class="col-sm-4"> 
								  <input type="text" class="form-control" name="name"  value="${name}"> 
								  </div> 
								  <input type="submit" class="btn btn-primary" value="搜索" />
								  </div> 
								  </form>							  
							</div>
					<table class="table table-bordered"> 					
						  <tr> 
						 <th>序号</th>
									<th>标题</th>
									<th>作者</th>
									<th>修改时间</th>
									<th>操作</th>
						  </tr>
						   		<c:forEach items="${page.list}" var="release" varStatus="i">
								<tr>
									<td>${i.index +1 }</td>
									<td class="center">${release.title }</td>
									<td class="center">${release.author }</td>
									<td>${release.updatetime}</td>
									<td class="center">
										<a class="btn btn-info" href="${path}/getNews/${release.id}"> 
											<i class="icon-edit" >详情</i>
										</a> 
										<a class="btn btn-danger" href="#" onclick="deleteNews(${release.id})"> 
											<i class="icon-trash">删除</i>
										</a>
									</td>
								</tr>
								</c:forEach>			  
						 </table>
						 <div class="col-md-6">
						<nav>
							<ul class="pagination pagination-lg">
							
								<li><a href="${path}/ssNews?name=${name}" >首页</a></li>
								<c:if test="${page.hasPreviousPage}">
								<li><a href="${path}/ssNews?pn=${page.pageNum - 1}&&name=${name}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
								</c:if>
								<c:forEach items="${page.navigatepageNums }" var="page_Num">
							<c:if test="${page_Num == page.pageNum }">
								<li class="active"><a href="#">${page_Num }</a></li>
							</c:if>
							<c:if test="${page_Num != page.pageNum }">
								<li><a href="${path}/ssNews?pn=${page_Num}&name=${name}">${page_Num}</a></li>
							</c:if>
						</c:forEach>
								<c:if test="${page.hasNextPage}">
								<li><a href="${path}/ssNews?pn=${page.pageNum+1}&name=${name}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
								</c:if>
								<li> <a href="${path}/ssNews?pn=${page.pages}&&name=${name}">末页</a></li>
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
	
		function deleteNews(id){
			if(confirm('是否确定删除？')){
				$.ajax({
					url : '${path}/deleteNews/'+id,
					type : 'post',
					dataType : 'json',
					data : {
						"_method":"DELETE",
						},
					success : function(data){
						if(data != 0){
							alert("删除成功！");
							window.location.href = "${path}/Newslist";
						}else{
							alert("删除失败！");
						}
					}
				});
			}
		}
	</script>
</body>
</html>