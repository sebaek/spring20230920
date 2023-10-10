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

}
