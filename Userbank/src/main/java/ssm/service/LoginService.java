package ssm.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.bean.Customer;
import ssm.bean.CustomerExample;
import ssm.dao.CustomerMapper;
import ssm.utils.MD5Util;
import ssm.utils.SessionContext;

@Service
public class LoginService {
		
	@Autowired
	private CustomerMapper customerMapper;
	public Integer checkUserAccount(String account) {
		Integer integer=0;
		CustomerExample example=new CustomerExample();
		example.or().andAccountEqualTo(account);
		example.or().andSfzEqualTo(account);
		example.or().andPhoneNumberEqualTo(account);
		List<Customer> list = customerMapper.selectByExample(example);
		if(!list.isEmpty()) {
			integer=1;
		}
		return integer;
	}
	public Integer login(String account ,String password,HttpServletRequest requst) {
		Integer i=0;
		CustomerExample example=new CustomerExample();
		example.or().andAccountEqualTo(account);
		example.or().andSfzEqualTo(account);
		example.or().andPhoneNumberEqualTo(account);
		List<Customer> list = customerMapper.selectByExample(example);
		password=MD5Util.getMD5Str(password);
		if(list.get(0).getPassword().equals(password)) {
			SessionContext instance = SessionContext.getInstance();
			Map<String,HttpSession> map = instance.getMap();
			HttpSession session = requst.getSession();
			
				if(map.containsKey(list.get(0).getUsername())) {
					map.get(list.get(0).getUsername()).invalidate(); 
				}				
				session.setAttribute("user",list.get(0));
				map.put(list.get(0).getUsername(), session);
				i=1;
		}
		return i;
	}
}
