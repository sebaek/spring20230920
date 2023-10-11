package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Controller
@RequestMapping("main25")
public class Controller25 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "id", required = false) Integer customerId) throws SQLException {
        if (customerId == null) {
            System.out.println("삭제할 id를 넣어주세요");
            return;
        }
        String sql = """
                DELETE FROM customers
                WHERE customerId = ?            
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setInt(1, customerId);
            int rows = statement.executeUpdate(); // insert, delete, update

            if (rows == 1) {
                System.out.println(rows + "개 레코드 잘 지워짐");
            } else {
                System.out.println("지워지지 않음");
            }
        }
    }

    @GetMapping("sub2")
    public void method2() {

    }

    @PostMapping("sub2")
    public void method3(@RequestParam("pid") Integer productId) throws SQLException {
        String sql = """
                DELETE FROM products
                WHERE productId = ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement;) {
            statement.setInt(1, productId);
            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("잘 지워짐");
            } else {
                System.out.println("뭔가 문제 생김");
            }
        }
    }

    @GetMapping("sub4")
    public void method4() throws SQLException {
        String sql = """
                UPDATE shippers
                SET
                    shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        try (connection; statement) {
            statement.setString(1, "이강인");
            statement.setString(2, "01077778888");
            statement.setInt(3, 1);

            int rows = statement.executeUpdate();

            if (rows == 1) {
                System.out.println("잘 변경됨");
            } else {
                System.out.println("뭔가 잘 못됨");
            }

        }

    }

    @GetMapping("sub5")
    public void method5() {

    }

    @PostMapping("sub5")
    public void method6(
            @RequestParam("id") Integer shipperId,
            @RequestParam("name") String shipperName,
            @RequestParam("phone") String phone
    ) throws SQLException {
        String sql = """
                UPDATE shippers
                SET shipperName = ?,
                    phone = ?
                WHERE
                    shipperId = ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);
        try (connection; statement) {
            statement.setString(1, shipperName);
            statement.setString(2, phone);
            statement.setInt(1, shipperId);

            int rows = statement.executeUpdate();
            
            if (rows == 1) {
                System.out.println("잘 변경됨");
            } else {
                System.out.println("문제 생김");
            }

        }
    }
}
