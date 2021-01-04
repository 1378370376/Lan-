<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%pageContext.setAttribute("path", request.getContextPath()); %>
<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="${path}/index">
						<h1>后台管理系统</h1>
						<span>兰伟朋</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left">
<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							
									<div class="user-name">
										<p>${sessionScope.Manager.account}</p>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
							
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="${path}/showupdate"><i class="fa fa-user"></i> 修改个人密码</a> </li> 
								<li> <a href="${path}/"><i class="fa fa-sign-out"></i> 注销</a> </li>
							</ul>
						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>
		
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>