package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MyDao4 {

    @Select("""
            SELECT CustomerName
            FROM customers
            WHERE CustomerID = #{customerId}
            """)
    String select1(int customerId);
}
