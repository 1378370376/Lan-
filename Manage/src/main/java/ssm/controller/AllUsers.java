package ssm.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import ssm.bean.Customer;
import ssm.service.AllUserService;

@Controller
public class AllUsers {
	
	@Autowired
	private AllUserService service;
	
	@RequestMapping("list")
	public String getUsers(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model) {		
		PageHelper.startPage(pn,5);
		List<Customer> list = service.getAllUser();
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		return "one/index";
	} 
	@RequestMapping("freeList")
	public String getFreezeUser(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model) {
		PageHelper.startPage(pn,5);
		List<Customer> list = service.getAllUser();
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		return "two/index";
	}
	
	@RequestMapping("startlist")
	public String getStartUsers(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model) {		
		PageHelper.startPage(pn,5);
		List<Customer> list = service.getAllUser();
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		return "three/index";
	} 
	@RequestMapping(value = "freeze/{id}",produces = "text/plain;charset=utf-8",method = RequestMethod.PUT)
	@ResponseBody
	public String freezeUser(@PathVariable("id")Integer id) {
		return service.freezeUser(id);	
	}
	
	@RequestMapping(value = "delete/{id}",produces = "text/plain;charset=utf-8",method = RequestMethod.DELETE)
	@ResponseBody
	public String deleteUser(@PathVariable("id")Integer id) {
		return service.deleteUser(id);	
	}
	@RequestMapping(value = "start/{id}",produces = "text/plain;charset=utf-8",method =RequestMethod.PUT)
	@ResponseBody
	public String startUser(@PathVariable("id")Integer id) {
		return service.startUser(id);
	}
	
	@RequestMapping("ssUsers")
	public String ssNews(@RequestParam(value = "name") String name,@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model) {
		PageHelper.startPage(pn,5);
		List<Customer> list=service.getSsCustomers(name);
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		model.addAttribute("name", name);
		return "one/ssusers";		
	}
	
}
