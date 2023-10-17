package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao1;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
@RequestMapping("main27")
@RequiredArgsConstructor
public class Controller27 {

    private final MyDao1 dao;

    @GetMapping("sub1")
    public void method1(Integer id) throws SQLException {
        String select = dao.select(id);

        System.out.println("select = " + select);
    }
}
