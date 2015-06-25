package com.mybatis.controller;

import com.mybatis.bean.News;
import com.mybatis.bean.User;
import com.mybatis.mapper.UserMapper;
import com.mybatis.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2015/5/21.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserMapper usermapper;
@Autowired
private NewsService newsService;
    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model model) {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        System.out.println("main");
        User user_login = usermapper.login(name, password);
        System.out.println(user_login);
        if (user_login == null) {
            System.out.println("Error login!");
            return "fail";
        } else {
            model.addAttribute("user", user_login);
            return "main";
        }
    }


}
