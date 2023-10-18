package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MyDao3 {


    // 1행 1열
    @Select("""
            SELECT customerName FROM customers
            WHERE CustomerID = 1
            """)
    String select1();
}
