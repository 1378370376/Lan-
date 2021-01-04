package ssm.controller;

import java.util.List;

import javax.validation.Valid;

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
import ssm.bean.Traderecord;
import ssm.service.TradeService;

@Controller
public class Trade {
	@Autowired
	private TradeService service;

	@RequestMapping("Tradelist/{id}")
	public String getAllTrade(@PathVariable("id")Integer id,@RequestParam(value = "pn",defaultValue = "1")Integer pn
			,Model model) {
		PageHelper.startPage(pn,5);
		List<Traderecord> list = service.getAllTrade(id);
		PageInfo page = new PageInfo(list,5);
		model.addAttribute("page", page);
		return "one/index";
	}
	@RequestMapping("drawMoneyIndex")
	public String drawMoneyIndex(Model model) {
		model.addAttribute("time", service.getTime());
		return "three/user";
	}
	
	@RequestMapping(value = "updateDrawMoneyTrade/{id}",method = RequestMethod.PUT)
	@ResponseBody
	public Integer drawMoney(@PathVariable Integer id,@RequestParam(value = "time") String time,@RequestParam("money") Double money) {
		return service.drawMoney(id,time,money);
	} 
	@RequestMapping(value="saveMoneyIndex")
	public String saveMoneyIndex(Model model) {
		model.addAttribute("time", service.getTime());
		return "two/user";
	}
	@RequestMapping(value = "updateSaveMoneyTrade/{id}",method = RequestMethod.PUT)
	@ResponseBody
	public Integer saveMoney(@PathVariable Integer id,@RequestParam(value = "time") String time,@RequestParam("money") Double money) {
		return service.saveMoney(id, time, money);
	} 
	
	@RequestMapping(value="transferMoneyIndex")
	public String transferMoneyIndex(Model model) {
		model.addAttribute("time", service.getTime());
		return "four/user";
	}
	 @RequestMapping(value="checkAccount") 
	 @ResponseBody
	 public Integer checkAccount(@RequestParam("account")String account) {
		return  service.checkOtherAccount(account);
	 }
	 @RequestMapping(value="transferMoney/{id}") 
	 @ResponseBody
	 public Integer transferMoney(@PathVariable Integer id,@Valid Traderecord traderecord) {
		 return service.transferMoney(id, traderecord);
	 }
}
