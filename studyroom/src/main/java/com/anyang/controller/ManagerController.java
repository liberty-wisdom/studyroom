package com.anyang.controller;

import com.anyang.entity.Manager;
import com.anyang.mapper.ManagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("managerController")
public class ManagerController {

    @Autowired
    private ManagerMapper managerMapper;
    /*
    * 登录使用
    * 使用校验username,界面显示name
    * */
    @RequestMapping("findOneManager")
    public String findOneManager(String username, HttpSession session){
        Manager oneManager = managerMapper.findOneManager(username);
        session.setAttribute("name",oneManager.getName());
        return "show";
    }
    /*
    * 查询所有用户（不包括权限）
    * */
    @RequestMapping("findAll")
    public String findAll(HttpSession session){
        List<Manager> all = managerMapper.findAll();
        session.setAttribute("all",all);
        return "show";
    }
}
