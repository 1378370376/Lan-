<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<%pageContext.setAttribute("path", request.getContextPath()); %>
			<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
					<li>
							<a href="${path}/index"><i class="fa fa-home nav_icon"></i> 首页</a>
						</li>
						<li>
							<a href="${path}/list"><i class="fa fa-home nav_icon"></i> 所有账户</a>
						</li>
						<li>
							<a href="${path}/freeList"><i class="fa fa-home nav_icon"></i>已冻结账户</a>
						</li>
						<li>
							<a href="${path}/startlist"><i class="fa fa-home nav_icon"></i> 已开启账户</a>
						</li>
						<li>
							<a href="${path}/adduser"><i class="fa fa-home nav_icon"></i>开户</a>
						</li>
						<li>
							<a href="${path}/Newslist"><i class="fa fa-home nav_icon"></i>新闻管理</a>
						</li>
					</ul>
					<div class="clearfix"> </div>
				
				</nav>
			</div>
		</div>