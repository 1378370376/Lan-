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
							<a href="${path}/Tradelist/${sessionScope.user.id}"><i class="fa fa-home nav_icon"></i> 查看交易记录</a>
						</li>
						<li>
							<a href="${path}/saveMoneyIndex"><i class="fa fa-home nav_icon"></i>存款</a>
						</li>
						<li>
							<a href="${path}/drawMoneyIndex"><i class="fa fa-home nav_icon"></i>取款</a>
						</li>
						<li>
							<a href="${path}/transferMoneyIndex"><i class="fa fa-home nav_icon"></i>转账</a>
						</li>
					</ul>
					<div class="clearfix"> </div>				
				</nav>
			</div>
		</div>