package com.anyang.controller;

import com.anyang.entity.Manager;
import com.anyang.mapper.ManagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("managerController")
public class ManagerController {

    @Autowired
    private ManagerMapper managerMapper;
    @RequestMapping("findOneManager")
    public String findOneManager(String username, HttpSession session){
        Manager oneManager = managerMapper.findOneManager(username);
        session.setAttribute("name",oneManager.getName());
        return "show";
    }

}
