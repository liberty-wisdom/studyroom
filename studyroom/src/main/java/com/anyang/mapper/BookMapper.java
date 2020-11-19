package com.anyang.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper {
    Integer findAllbooknum();//查询所有图书数量
}
