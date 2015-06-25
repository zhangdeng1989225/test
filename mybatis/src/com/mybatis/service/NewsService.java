package com.mybatis.service;

import com.mybatis.bean.News;

import java.util.List;

/**
 * Created by Administrator on 2015/5/25.
 */

public interface NewsService {
    public List<News> getNews();
    public int insertNews(News news);
    public int deleteNews(Integer news_id);
    public int updateNews(News news);
    public News findById(Integer news_id);
}
