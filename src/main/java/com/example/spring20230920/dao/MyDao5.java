package com.example.spring20230920.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MyDao5 {



    @Select("""
            <script>
                SELECT COUNT(*) 
                FROM customers
                
                <if test='country != null'>
                WHERE country = #{country}
                </if>
            </script>
            """)
    String select1(String country);



    @Select("""
            <script>
                SELECT CustomerName FROM customers
                
                <if test='num == 10'>
                    -- 수가 10이다.
                </if>
                <if test='num != 10'>
                    -- 수가 10이 아니다.
                </if>
                <if test='num > 10'>
                    -- 수가 10보다 크다.
                </if>
                <if test='num lt 10'>
                    -- 수가 10보다 작다.
                </if>
                <if test='num >= 10'>
                    -- 수가 10보다 크거나 같다.
                </if>
                <if test='num lte 10'>
                    -- 수가 10보다 작거나 같다.
                </if>
            </script>
            """)
    List<String> select2(Integer num);
}
