package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
@RequestMapping("main24")
public class Controller24 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1() throws SQLException {
        String sql = """
                INSERT INTO products (ProductName, SupplierID, CategoryID, Unit, Price)
                VALUE (?, ?, ?, ?, ?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setString(1, "돈까스");
            statement.setInt(2, 3);
            statement.setInt(3, 4);
            statement.setString(4, "한 장");
            statement.setDouble(5, 500.00d);

    //        statement.executeQuery(); // select 쿼리
            int count = statement.executeUpdate(); // DML(insert, delete, update) 쿼리

            if (count == 1) {
                System.out.println("잘됨!!!");
            } else {
                System.out.println("뭔가 잘 못됨@@@@@@");
            }

        }

    }

    // /main24/sub2 로 요청시
    // suppliers 테이블에 하나의 레코드 추가하는 메소드 작성

    @GetMapping("sub2")
    public void method2() throws SQLException {
        String sql = """
                INSERT INTO suppliers 
                (SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
                VALUE (?, ?, ?, ?, ?, ?, ?)
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement;) {
            statement.setString(1, "손흥민");
            statement.setString(2, "sonny");
            statement.setString(3, "토트넘");
            statement.setString(4, "런던");
            statement.setString(5, "12345");
            statement.setString(6, "영국");
            statement.setString(7, "01099999999");

            int count = statement.executeUpdate();

            if (count == 1) {
                System.out.println("잘 입력됨");
            } else {
                System.out.println("뭔가 잘 못됨@@");
            }

        }

    }
}
