package com.mybatis.mapper;

import com.mybatis.bean.News;

import java.util.List;

/**
 * Created by Administrator on 2015/5/26.
 */
public interface NewsMapper {
    public List<News> selectAll();
    public News findById(Integer news_id);
    public int insert(News news);
    public int delete(Integer news_id);
    public int update(News news);
}
