package ssm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ssm.bean.Customer;
import ssm.dao.CustomerMapper;
import ssm.utils.MD5Util;

@Service
public class UserService {
	@Autowired
	private CustomerMapper customerMapper;
	
	public Customer getCustomer(Integer id) {
		return customerMapper.selectByPrimaryKey(id);
	}
	@Transactional
	public Integer updateCustomer(Customer customer) {
		Customer customer2 = customerMapper.selectByPrimaryKey(customer.getId());
		customer2.setHomeAddress(customer.getHomeAddress());
		customer2.setPhoneNumber(customer.getPhoneNumber());
		return customerMapper.updateByPrimaryKey(customer2);		
	}
	public Integer checkCustomer(Integer id,String password) {
		Integer i =0;
		Customer customer = customerMapper.selectByPrimaryKey(id);
		if(customer.getPassword().equals(MD5Util.getMD5Str(password))) {
			i=1;
		}
		return i;
	}
	public Integer updateUser(Integer id,String passsword) {
		Customer customer = customerMapper.selectByPrimaryKey(id);
		customer.setPassword(MD5Util.getMD5Str(passsword));
		return customerMapper.updateByPrimaryKey(customer);		
	}
	
}
