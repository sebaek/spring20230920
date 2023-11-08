package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto18Employee;
import com.example.spring20230920.domain.MyDto34Customer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

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

    @Select("""
            SELECT 
                employeeId id,
                lastName,
                firstName,
                birthDate,
                photo,
                notes
            FROM employees
            WHERE employeeId = #{id}
            """)
    MyDto18Employee getEmployeeById(Integer id);

    @Select("""
            SELECT customerId 
            FROM customers 
            ORDER BY customerId
            """)
    List<Integer> getCustomerIdList();

    @Select("""
        SELECT employeeId 
        FROM employees
        ORDER BY employeeId
        """)
    List<Integer> getEmployeeIdList();
}
