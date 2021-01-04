package ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.bean.Customer;
import ssm.bean.CustomerExample;
import ssm.dao.CustomerMapper;

@Service
public class AllUserService {
			
			@Autowired
			private CustomerMapper customerdao;
			
			public List<Customer> getAllUser() {
				return  customerdao.selectByExample(null);
			}
			
		public String freezeUser(Integer id) {
			Customer customer = customerdao.selectByPrimaryKey(id);
			customer.setStatus(0);
			String message="冻结失败！";
			if(customerdao.updateByPrimaryKeySelective(customer)!=0) {
				message="冻结成功！";
			}
			return message;
		}
		public String  deleteUser(Integer id) {
			Customer customer = customerdao.selectByPrimaryKey(id);
			customer.setStatus(3);
			String message ="删除失败！";
			if(customerdao.updateByPrimaryKeySelective(customer)!=0) {
				message="删除成功！";
			}
			return message;
		}
		public String startUser(Integer id) {
			Customer customer = customerdao.selectByPrimaryKey(id);
			customer.setStatus(1);
			String message ="启用失败！";
			if(customerdao.updateByPrimaryKeySelective(customer)!=0) {
				message="启用成功！";
			}
			return message;
		}
		
		public List<Customer> getSsCustomers(String name){
			CustomerExample example=new CustomerExample();
			example.createCriteria().andUsernameLike(name);
			return customerdao.selectByExample(example);
		}
}
