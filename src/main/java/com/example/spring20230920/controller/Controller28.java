package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao2;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main28")
@RequiredArgsConstructor
public class Controller28 {

    private final MyDao2 dao;

    @GetMapping("sub1")
    public void method1(Integer id) throws Exception {
        String name = dao.select(id);
        System.out.println("name = " + name);
    }
}
