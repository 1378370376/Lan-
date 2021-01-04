package ssm.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import ssm.bean.Customer;
import ssm.service.NewsService;

@Controller
public class News {
	@Autowired
	private NewsService service;
	
	@RequestMapping("Newslist")
	public String listNews(@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model) {
		PageHelper.startPage(pn,5);
		List<ssm.bean.News> list = service.getNews();
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		return "six/news";
	}
	@RequestMapping(value = "getNews/{id}")
	public String getOneNews(@PathVariable("id") Integer id,Model model) {
		model.addAttribute("news",service.getOneNews(id));
		return "six/newslook";
		
	}
	
	@RequestMapping("showAddNews")
	public String showAddNews() {
		return "six/addnews";
	}
	@RequestMapping("addNews")
	@ResponseBody
	public Integer addNews(@Valid ssm.bean.News news) {		
		return service.addNews(news);		
	}
	@RequestMapping("ssNews")
	public String ssNews(@RequestParam(value = "name") String name,@RequestParam(value = "pn",defaultValue = "1")Integer pn,Model model) {
		PageHelper.startPage(pn,5);
		List<ssm.bean.News> list=service.getSsNews(name);
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		model.addAttribute("name", name);
		return "six/snews";		
	}
	@RequestMapping("deleteNews/{id}")
	@ResponseBody
	public Integer delteNews(@PathVariable Integer id) {
		return service.deleteNews(id);
	}
}
