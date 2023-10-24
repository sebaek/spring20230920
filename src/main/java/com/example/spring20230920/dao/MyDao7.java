package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.util.Map;

@Mapper
public interface MyDao7 {
    @Select("""
            SELECT * FROM customers
            WHERE customerID = #{id}
            """)
    Map<String, Object> selectByCustomerId(Integer id);

    @Select("""
        SELECT * FROM Employees
        WHERE EmployeeId = #{id}
        """)
    Map<String, Object> selectByEmployeeId(Integer id);

    @Insert("""
            INSERT INTO employees (lastName, firstName, birthDate)
            VALUES (#{lastName}, #{firstName}, #{birthDate})
            """)
    int insertEmployee(String lastName, String firstName, LocalDate birthDate);

    @Insert("""
        INSERT INTO products (productName, price, categoryId)
        VALUES (#{name}, #{price}, #{category})
        """)
    int insertProduct(String name, Double price, Integer category);

    @Delete("""
            DELETE FROM products
            WHERE productId = #{pid}
            """)
    int deleteByProductId(Integer pid);

    @Delete("""
            DELETE FROM customers
            WHERE customerId = #{id} 
            """)
    int deleteByCustomerId(Integer id);
}
