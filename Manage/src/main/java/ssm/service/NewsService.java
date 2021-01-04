package ssm.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ssm.bean.News;
import ssm.bean.NewsExample;
import ssm.dao.NewsMapper;

@Service
public class NewsService {
		@Autowired
		private NewsMapper dao;
	public List<News> getNews(){
		return dao.selectByExample(null);
	}
	public News getOneNews(Integer id) {
		return dao.selectByPrimaryKey(id);
	}
	public Integer addNews(News news) {
			Date dt = new Date();  		   
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		    news.setUpdatetime(sdf.format(dt));  
		return dao.insert(news);
	}
	public List<News> getSsNews(String name){
		NewsExample example=new NewsExample ();
		example.createCriteria().andTitleLike(name);
		return dao.selectByExample(example);
	}
	public Integer deleteNews(Integer id) {
		return dao.deleteByPrimaryKey(id);
	}
}
