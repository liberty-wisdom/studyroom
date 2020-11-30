package com.anyang.controller;

import com.anyang.entity.Book;
import com.anyang.mapper.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("bookController")
public class BookController {

    @Autowired
    private BookMapper bookMapper;

    /*
    * 详细信息
    * */
    @RequestMapping("findAllLists")
    public String findAllLists(HttpSession session){
        List<Book> allLists = bookMapper.findAll();
        session.setAttribute("allLists",allLists);
        return "table_list";
    }
}
