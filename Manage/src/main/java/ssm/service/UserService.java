package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.bean.Customer;
import ssm.bean.CustomerExample;
import ssm.dao.CustomerMapper;
import ssm.utils.MD5Util;

@Service
public class UserService {
	@Autowired
	private CustomerMapper dao;
	
	public Customer getUser(Integer id) {	
		return dao.selectByPrimaryKey(id);
		
	}
	public Integer saveUser(Customer user) {
		int n=0;
		boolean flag=true;
		Long number=0L;
		while(flag) {
			n=(int) (Math.random()*10);
			if(n>=4) {
			number=(long) (Math.random()*Math.pow(10, n));
			CustomerExample example=new CustomerExample();
			example.createCriteria().andAccountEqualTo(number.toString());
			if(dao.selectByExample(example).isEmpty()) {
				flag=false;
			}		
		}
			}
		if(user.getSex().equals("ÄÐ")) {
			user.setSex("F");
		}else {
			user.setSex("W");
		}
		user.setStatus(1);
		user.setPassword(MD5Util.getMD5Str(user.getPassword()));
		user.setAccount(number.toString());
		 return dao.insert(user);
	}
	
}
