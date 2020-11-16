package com.anyang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class TestController {
    /*
    * 跳转到登录页
    * */
    @RequestMapping("toTest")
    public String toTest(){

        return "login";
    }
    /*
    * 跳转到注册
    * */
    @RequestMapping("toadd")
    public String toadd(){

        return "register";
    }
    /*
    * 主页
    * */
    @RequestMapping("toindex")
    public String toindex(){

        return "show";
    }
}
