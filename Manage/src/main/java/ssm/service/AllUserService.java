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
			String message="����ʧ�ܣ�";
			if(customerdao.updateByPrimaryKeySelective(customer)!=0) {
				message="����ɹ���";
			}
			return message;
		}
		public String  deleteUser(Integer id) {
			Customer customer = customerdao.selectByPrimaryKey(id);
			customer.setStatus(3);
			String message ="ɾ��ʧ�ܣ�";
			if(customerdao.updateByPrimaryKeySelective(customer)!=0) {
				message="ɾ���ɹ���";
			}
			return message;
		}
		public String startUser(Integer id) {
			Customer customer = customerdao.selectByPrimaryKey(id);
			customer.setStatus(1);
			String message ="����ʧ�ܣ�";
			if(customerdao.updateByPrimaryKeySelective(customer)!=0) {
				message="���óɹ���";
			}
			return message;
		}
		
		public List<Customer> getSsCustomers(String name){
			CustomerExample example=new CustomerExample();
			example.createCriteria().andUsernameLike(name);
			return customerdao.selectByExample(example);
		}
}
