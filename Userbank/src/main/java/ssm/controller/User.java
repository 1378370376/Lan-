package ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ssm.bean.Customer;
import ssm.service.UserService;

@Controller
public class User {
		@Autowired
		private UserService service;
	
		@RequestMapping("userIndex/{id}")
		public String userIndex(@PathVariable("id") Integer id,Model model) {
			model.addAttribute("user", service.getCustomer(id));
			return "five/user";
		}
		@RequestMapping("updateUserIndex/{id}")
		public String  updateUserIndex(@PathVariable("id") Integer id,Model model) {
			model.addAttribute("user", service.getCustomer(id));
			return "five/updateUser";
			
		}
		
		@RequestMapping(value="updateUserInfo",method=RequestMethod.PUT)
		@ResponseBody
		public Integer updateUserInfo(@Valid Customer customer) {
			System.out.println(customer);
			return service.updateCustomer(customer);
			
		}
		@RequestMapping("updateAccount")
		public String  updateAccount() {
		
			return "five/updateAccount";
			
		}
		@RequestMapping(value="CheckUser/{id}",method = RequestMethod.PUT)
		@ResponseBody
		public Integer  checkUser(@PathVariable("id") Integer id,@RequestParam(value = "password") String password) {
			return service.checkCustomer(id, password);
			
		}
		@RequestMapping(value="updateUser/{id}",method = RequestMethod.PUT)
		@ResponseBody
		public Integer UpdateUser(@PathVariable("id")Integer id,@RequestParam(value = "password") String password) {
			return service.updateUser(id, password);			
		}
		
}
