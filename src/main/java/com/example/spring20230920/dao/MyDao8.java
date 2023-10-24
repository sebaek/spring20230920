package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto33Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface MyDao8 {

    @Select("""
        SELECT * 
        FROM products
        WHERE productId = #{id}
        """)
    Map<String, Object> selectProductById(Integer id);

    @Select("""
            SELECT employeeId id,
                    firstName,
                    lastName,
                    birthDate,
                    photo,
                    notes
            FROM Employees
            WHERE EmployeeId = #{id}
            """)
    MyDto33Employee selectByEmplyeeId(Integer id);
}
