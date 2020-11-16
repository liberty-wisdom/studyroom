package com.anyang.mapper;

import com.anyang.entity.Manager;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ManagerMapper {
    Manager findOneManager(@Param("username")String username);
    List<Manager> findAll();
}
