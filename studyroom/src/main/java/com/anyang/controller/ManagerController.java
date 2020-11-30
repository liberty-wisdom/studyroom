package com.anyang.controller;

import com.anyang.entity.Book;
import com.anyang.entity.Manager;
import com.anyang.mapper.BookMapper;
import com.anyang.mapper.ManagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("managerController")
public class ManagerController {

    @Autowired
    private ManagerMapper managerMapper;
    @Autowired
    private BookMapper bookMapper;
    /*
    * 登录使用
    * 使用username、password校验登录,界面显示name
    * */
    @RequestMapping("findOneManager")
    @ResponseBody
    public Object findOneManager(String username,String password,HttpSession session){
        Manager oneManager = managerMapper.findOneManager(username,password);
        if(oneManager==null){
            return 0;
        }else{
            session.setAttribute("name",oneManager.getName());
            return 1;
        }
    }
    /*
    * 前往主页
    * */
    @RequestMapping("toshow")
    public String toshow(HttpSession session){
        //查询所有图书数量
        Integer allbooknum = bookMapper.findAllbooknum();
        session.setAttribute("num",allbooknum);
        //查询图说详细信息
        List<Book> all = bookMapper.findAll();
        session.setAttribute("all",all);
        return "index";
    }
    /*
    * 退出登录
    * */
    @RequestMapping("droplogin")
    public String droplogin(HttpSession session){
        session.invalidate();
        return "login";
    }
    /*
    * 查询所有用户（不包括权限）
    * */
    @RequestMapping("findAll")
    public String findAll(HttpSession session){
        List<Manager> all = managerMapper.findAll();
        session.setAttribute("all",all);
        return "index";
    }
}
