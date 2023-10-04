package com.example.spring20230920.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

@Controller
@RequestMapping("main19")
public class Controller19 {

    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String method1(Model model) throws Exception {
        String sql = """
                SELECT CustomerName
                FROM customers
                WHERE CustomerID = 3
                """;

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        try (connection; statement; resultSet) {
            resultSet.next();
            String name = resultSet.getString(1);
            model.addAttribute("customerName", name);
        }

        return "/main18/sub1";
    }

}
