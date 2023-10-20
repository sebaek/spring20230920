package com.example.spring20230920.dao;

import com.example.spring20230920.domain.MyDto37;
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
}
