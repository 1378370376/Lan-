package ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ssm.service.NewsService;

@Controller
public class Index {
	@Autowired
	private NewsService service;
		
	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("news", service.getAllNews());
		return "home/index";
	}
	@RequestMapping("getNews/{id}")
	public String getNews(@PathVariable Integer id,Model model) {
		model.addAttribute("news", service.getOneNews(id));
		return "home/newslook";
	}
}
