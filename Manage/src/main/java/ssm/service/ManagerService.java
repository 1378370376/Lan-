package ssm.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.bean.Manager;
import ssm.bean.ManagerExample;
import ssm.dao.ManagerMapper;
import ssm.utils.SessionContext;

@Service
public class ManagerService {
	
	@Autowired
	private ManagerMapper dao;

	public Integer checkManager(Integer id,String password) {
		Integer i=0;
		Manager manager = dao.selectByPrimaryKey(id);
		
		if(manager.getPassword().equals(password)) {
			i=1;
		}
		return i;
	}
	public Integer updateManager(Integer id,String password) {
		Manager manager = dao.selectByPrimaryKey(id);
		manager.setPassword(password);
		return dao.updateByPrimaryKey(manager);
	}
	public Integer checkManagerAccount(String account) {
		Integer i=0;
		ManagerExample example=new ManagerExample();
		example.createCriteria().andAccountEqualTo(account);
		if(!dao.selectByExample(example).isEmpty()) {
			i=1;
		}
		return i;
	}
	public Integer checkLogin(Manager manager,HttpServletRequest requst) {
		Integer i=0;
		ManagerExample example=new ManagerExample();
		example.createCriteria().andAccountEqualTo(manager.getAccount()).andPasswordEqualTo(manager.getPassword());				
		List<Manager> list = dao.selectByExample(example);
		HttpSession session = requst.getSession();
		if(!list.isEmpty()) {
//			SessionContext instance = SessionContext.getInstance();
//			Map<String,HttpSession> map = instance.getMap();
			
//				if(map.containsKey(list.get(0).getAccount())) {
//					map.get(list.get(0).getAccount()).invalidate(); 
//				}				
				session.setAttribute("Manager",list.get(0));
//				map.put(list.get(0).getAccount(), session);
				i=1;
		}
		return i;		
	}
}
