package ssm.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ssm.bean.Customer;
import ssm.service.UserService;



@Controller
public class User {
	
			@Autowired
			private UserService service;
			
			@RequestMapping("adduser")
			public String addUser() {							
				return "four/user";		
				}
			
		
			@RequestMapping("user/{id}")
			public String getUser(@PathVariable Integer id,Model model) {				
				model.addAttribute("user", service.getUser(id));
				return "one/user";		
				}
			@RequestMapping("save")
			@ResponseBody
			public Integer saveUser(@Valid Customer user) {
				int n=0;
				System.out.println(user);
				
				  if(service.saveUser(user)!=0) {
					  n=1;
					}
				 
				return n;
			}
}
