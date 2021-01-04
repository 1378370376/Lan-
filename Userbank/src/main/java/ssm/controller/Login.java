package ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ssm.service.LoginService;

@Controller
public class Login {
	@Autowired	
	private LoginService service;
	@RequestMapping("show")
	public String showlogin() {
		return "home/login";
	}
	@RequestMapping("checkUserAccount")
	@ResponseBody
	public Integer checkUserAccount(@RequestParam("account")String account) {
		return service.checkUserAccount(account);
	}
	@RequestMapping("login")
	@ResponseBody
	public Integer login(@RequestParam("account")String account,
			@RequestParam("password")String password,HttpServletRequest req) {
		return service.login(account, password,req);		
	}
	
	@RequestMapping(value = "loginOut")
	public String LoginOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return	"redirect:/show";
	}
}
