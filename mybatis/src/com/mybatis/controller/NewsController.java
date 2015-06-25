package com.mybatis.controller;

import com.mybatis.bean.News;
import com.mybatis.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2015/5/25.
 */
@Controller
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private NewsService newsService;

    @RequestMapping("/list")
    public ModelAndView selectAll(){
        ModelAndView MV=new ModelAndView("list");
        List<News> newsList=new ArrayList<News>();
        newsList=newsService.getNews();
        MV.addObject("newsList",newsList);
        return MV;
    }
    @RequestMapping("/insert")
public String add1(){
    return "insert";
}
    @RequestMapping("/insertnews")
public ModelAndView insert(News news){
   newsService.insertNews(news);
    return selectAll();
}
@RequestMapping("update")
public String upd(){
    return "update";
}
    @RequestMapping("/updatenews")
    public ModelAndView update(News news){
    newsService.updateNews(news);
    return selectAll();
}
@RequestMapping("/find")
    public ModelAndView findById(Integer news_id){
    News news=this.newsService.findById(news_id);
    ModelAndView mv=new ModelAndView("updatenews");
    mv.addObject("news",news);
    return mv;
}

    @RequestMapping("/delete")
    public ModelAndView delete(@RequestParam("news_id") Integer news_id){
        newsService.deleteNews(news_id);
        return selectAll();
    }
}
