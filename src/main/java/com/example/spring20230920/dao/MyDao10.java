package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto34Customer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MyDao10 {

    @Select("""
        SELECT CustomerName FROM customers
        WHERE CustomerID = 50
        """)
    String getCustomerName();

    @Select("""
        SELECT 
         customerId id,
         customerName name,
         contactName,
         address,
         city,
         postalCode, 
         country
         FROM customers
        WHERE customerId = 50
        """)
    MyDto34Customer getCustomer();

    @Select("""
        SELECT 
         customerId id,
         customerName name,
         contactName,
         address,
         city,
         postalCode, 
         country
         FROM customers
        WHERE customerId = #{id}
        """)
    MyDto34Customer getCustomerById(Integer id);
}
