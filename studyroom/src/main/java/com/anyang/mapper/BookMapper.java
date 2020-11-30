package com.anyang.mapper;

import com.anyang.entity.Book;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookMapper {
    Integer findAllbooknum();//查询所有图书数量
    List<Book> findAll();//查询所有图书详细信息
}
