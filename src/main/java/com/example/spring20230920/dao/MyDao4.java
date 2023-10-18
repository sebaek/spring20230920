package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MyDao4 {

    @Select("""
            SELECT CustomerName
            FROM customers
            WHERE CustomerID = #{aldkjflajdlkfj}
            """)
    // 파라미터가 하나면 이름이 일치하지 않아도됨
    // 두 개 이상이면 꼭 이름을 맞춰 줘야함!!
    String select1(int customerId);

    @Select("""
        SELECT ProductName 
        FROM products
        WHERE Price BETWEEN #{from} AND #{to}      
        """)
    List<String> select2(Double from, Double to);
}
