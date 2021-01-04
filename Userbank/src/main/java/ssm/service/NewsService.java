package ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.bean.News;
import ssm.dao.NewsMapper;

@Service
public class NewsService {
	@Autowired
	private NewsMapper dao;
	
	public List<News> getAllNews(){		
		return dao.selectByExample(null);		
	}
	
	public News getOneNews(Integer id) {
		return dao.selectByPrimaryKey(id);
	}

}
