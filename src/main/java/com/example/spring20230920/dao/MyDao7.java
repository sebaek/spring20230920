package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface MyDao7 {
    @Select("""
            SELECT * FROM customers
            WHERE customerID = #{id}
            """)
    Map<String, Object> selectByCustomerId(Integer id);
}
