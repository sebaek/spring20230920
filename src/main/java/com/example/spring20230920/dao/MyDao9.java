package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto33Employee;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyDao9 {
    @Insert("""
            INSERT INTO employees (firstName, lastName, birthDate, notes)
            VALUES (#{firstName}, #{lastName}, #{birthDate}, #{notes})
            """)
    int insertEmployee(MyDto33Employee dto);
}



