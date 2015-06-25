package com.mybatis.serviceImpl;

import com.mybatis.bean.News;
import com.mybatis.mapper.NewsMapper;

import com.mybatis.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/5/25.
 */
@Service("newsService")
    public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapperr;

    public NewsMapper newsMapper(NewsMapper newsMapper){
        return newsMapper;
    }

    public void setNewsMapperr(NewsMapper newsMapperr) {
        this.newsMapperr = newsMapperr;
    }

    @Override
   public List<News> getNews(){
       return newsMapperr.selectAll();
   }
    @Override
public int insertNews(News news){
    return newsMapperr.insert(news);
}
    @Override
    public int deleteNews(Integer news_id){
        return newsMapperr.delete(news_id);

    }
    @Override
    public int updateNews(News  news){
        return newsMapperr.update(news);
    }
     @Override
    public News findById(Integer news_id){
         return this.newsMapperr.findById(news_id);
     }
}
