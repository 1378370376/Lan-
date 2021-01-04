package ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ssm.service.ManagerService;

@Controller
public class Manager {
	
	@Autowired
	private ManagerService service;
	
	@RequestMapping("show")
	public String showLogin() {
		return "home/login";
	}
	@RequestMapping("showupdate")
	public String showUpdate() {
		return "five/updateManager";
	}

	@RequestMapping(value = "CheckManager/{id}",method = RequestMethod.PUT)
	@ResponseBody
	public Integer CheckManager(@PathVariable("id")Integer id,@RequestParam(value = "password")String password) {
		return service.checkManager(id, password);
	}
	@RequestMapping(value = "updateManager/{id}",method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateManager(@PathVariable("id")Integer id,@RequestParam(value = "password")String password) {
		return service.updateManager(id, password);
	}
	
	@RequestMapping(value="checkManagerAccount")
	@ResponseBody
	public Integer checkManagerAccount(@RequestParam(value="account") String account) {
		return service.checkManagerAccount(account);
	}
	
	@RequestMapping(value = "login")
	@ResponseBody
	public Integer Login(@Valid ssm.bean.Manager manager,HttpServletRequest req) {
		return service.checkLogin(manager,req);	
	}
	@RequestMapping(value = "loginOut")
	public String LoginOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return	"redirect:/show";
	}
	
}
