package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto37;
import com.example.spring20230920.domain.MyDto38;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface MyDao6 {

    @Insert("""
            INSERT INTO customers (customerName)
            VALUE (#{name})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert1(MyDto37 dto);

    @Insert("""
            INSERT INTO employees (lastName)
            VALUES (#{lastName})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "eid")
    int insert2(MyDto38 dto);

    @Insert("""
            INSERT INTO employees (lastName, firstName)
            VALUES (#{lastName}, #{firstName})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "eid")
    int insert3(MyDto38 dto);
}
