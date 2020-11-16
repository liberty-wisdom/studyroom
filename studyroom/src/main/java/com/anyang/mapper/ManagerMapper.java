package com.anyang.mapper;

import com.anyang.entity.Manager;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ManagerMapper {
    Manager findOneManager(@Param("username")String username);
}
