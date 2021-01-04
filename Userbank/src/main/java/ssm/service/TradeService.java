package ssm.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ssm.bean.Customer;
import ssm.bean.CustomerExample;
import ssm.bean.Traderecord;
import ssm.bean.TraderecordExample;
import ssm.dao.CustomerMapper;
import ssm.dao.TraderecordMapper;

@Service
public class TradeService {
	  @Autowired
	  private TraderecordMapper tradeMapper;
	  @Autowired
	  private  CustomerMapper customerMapper;
	
		public List<Traderecord> getAllTrade(Integer id) {
			TraderecordExample example=new TraderecordExample();
			example.createCriteria().andUseridEqualTo(id);
			return 	tradeMapper.selectByExample(example);			
		}
		
		public String getTime() {
			Date dt = new Date();  		   
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		    return sdf.format(dt); 
		}
		
		@Transactional
		public Integer drawMoney(Integer id,String time,double money) {
			Customer customer = customerMapper.selectByPrimaryKey(id);
			double m=customer.getBalance()-money;
			customer.setBalance(m);
			Traderecord traderecord=new Traderecord(customer.getAccount(),money,"取款",time,id);			
			tradeMapper.insert(traderecord);
			return customerMapper.updateByPrimaryKey(customer);
		}
		@Transactional
		public Integer saveMoney(Integer id,String time,double money) {
			Customer customer = customerMapper.selectByPrimaryKey(id);
			double m=customer.getBalance()+money;
			customer.setBalance(m);
			Traderecord traderecord=new Traderecord(customer.getAccount(),money,"存款",time,id);			
			tradeMapper.insert(traderecord);
			return customerMapper.updateByPrimaryKey(customer);
		}
		public Integer checkOtherAccount(String account) {
			Integer i=0;
			CustomerExample example=new CustomerExample();
			example.createCriteria().andAccountEqualTo(account);
			if(!customerMapper.selectByExample(example).isEmpty()) {
				i=1;
			}
			return i;
		}
		@Transactional
		public Integer transferMoney(Integer id,Traderecord traderecord) {
			Double m=0.0;
			Customer customer = customerMapper.selectByPrimaryKey(id);
			m=customer.getBalance()-traderecord.getTransactionAmount();
			if(m>=0) {
			customer.setBalance(m);
			customerMapper.updateByPrimaryKey(customer);
			
			CustomerExample example=new CustomerExample();
			example.createCriteria().andAccountEqualTo(traderecord.getOtheraccount());
			List<Customer> list = customerMapper.selectByExample(example);
			Customer customer2 = list.get(0);
			m=customer2.getBalance()+traderecord.getTransactionAmount();
			customer2.setBalance(m);
			customerMapper.updateByPrimaryKey(customer2);
			
			traderecord.setUserid(id);
			traderecord.setId(null); 
			traderecord.setTradetyp("转账");
			return tradeMapper.insert(traderecord);
		}else {
			return 0;
		}
			
			}
	
		
}
