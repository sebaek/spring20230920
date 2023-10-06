package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RequestMapping("main22")
@Controller
public class Controller22 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(Integer page) throws SQLException {
        String sql = """
                SELECT customerId id,
                       customerName name            
                FROM customers
                ORDER BY id
                LIMIT ?, ?
                """;
        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

//        statement.setInt(1, 0); // 1페이지
//        statement.setInt(1, 10); // 2페이지
//        statement.setInt(1, 20); // 3페이지
        statement.setInt(1, (page - 1) * 10);
        statement.setInt(2, 10);

        ResultSet resultSet = statement.executeQuery();

        try (connection; statement; resultSet) {
            System.out.println("고객 목록");
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");

                System.out.println(id + " : " + name);
            }
        }
    }

    // 페이지당 7개 씩 공급자 목록 조회 (공급자 번호 순)
    // /main22/sub2?p=2
    @GetMapping("sub2")
    public void method2(@RequestParam(value = "p", defaultValue = "1") Integer page,
                        Model model) throws SQLException {
        String sql = """
                SELECT supplierId id,
                       supplierName name
                FROM suppliers
                ORDER BY id
                LIMIT ?, ?
                """;

        Connection connection = dataSource.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setInt(1, (page - 1) * 7);
        statement.setInt(2, 7);

        ResultSet resultSet = statement.executeQuery();

        List<Map<String, Object>> list = new ArrayList<>();
        try (connection; statement; resultSet) {
//            System.out.println(page + "페이지 공급자 목록");
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");

                list.add(Map.of("id", id, "name", name));
//                System.out.println(id + " : " + name);
            }
        }

        String sql1 = """
                SELECT COUNT(*) 
                FROM suppliers
                """;
        Connection connection1 = dataSource.getConnection();
        Statement statement1 = connection1.createStatement();
        ResultSet resultSet1 = statement1.executeQuery(sql1);

        try (connection1; statement1; resultSet1) {
            if (resultSet1.next()) {
                int countAll = resultSet1.getInt(1);
                // 마지막 페이지 번호
                int lastPageNumber = ((countAll - 1) / 7) + 1;

                model.addAttribute("lastPageNumber", lastPageNumber);
            }
        }

        model.addAttribute("supplierList", list);
    }
}
