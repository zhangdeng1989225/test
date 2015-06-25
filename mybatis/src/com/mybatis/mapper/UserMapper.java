package com.mybatis.mapper;

import com.mybatis.bean.News;
import com.mybatis.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2015/4/19.
 */
public interface UserMapper {
    User login(@Param(value = "name") String name,
               @Param(value = "password") String password);


}
