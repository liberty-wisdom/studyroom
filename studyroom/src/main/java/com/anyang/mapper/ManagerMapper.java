package com.anyang.mapper;

import com.anyang.entity.Manager;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ManagerMapper {
    Manager findOneManager(@Param("username")String username);//使用用户名查询单个用户
    List<Manager> findAll();
}
