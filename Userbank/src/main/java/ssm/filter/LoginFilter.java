package ssm.filter;

import java.util.Arrays;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LoginFilter implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String	uncheckedUrls = "/index.jsp,.css,.js,.png,.jpg,.eot,.ttf,.woff,.svg,.gif";
		String 	redirectUrl ="/show";
		String servletPath = request.getServletPath();
		List<String> urls = Arrays.asList(uncheckedUrls.split(","));
		for (String string : urls) {
			if (servletPath.indexOf(string) != -1) {
				return false;
			}
		}
		Object user = request.getSession().getAttribute("user");
		if (user == null) {
			response.sendRedirect(request.getContextPath() + redirectUrl);
		}
		return true;
	
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
}
