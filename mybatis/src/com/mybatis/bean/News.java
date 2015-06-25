package com.mybatis.bean;

/**
 * Created by Administrator on 2015/5/21.
 */
public class News {
    private Integer news_id;
    private String news_tm;
    private  String news_nr;
    private  String news_zz;

    public void setNews_id(Integer news_id) {
        this.news_id = news_id;
    }

    public Integer getNews_id() {
        return news_id;
    }

    public void setNews_tm(String news_tm) {
        this.news_tm = news_tm;
    }

    public String getNews_tm() {
        return news_tm;
    }

    public void setNews_nr(String news_nr) {
        this.news_nr = news_nr;
    }

    public String getNews_nr() {
        return news_nr;
    }

    public void setNews_zz(String news_zz) {
        this.news_zz = news_zz;
    }

    public String getNews_zz() {
        return news_zz;
    }
}
