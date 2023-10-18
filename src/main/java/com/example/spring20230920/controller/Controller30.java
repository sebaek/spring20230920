package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao4;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main30")
@RequiredArgsConstructor
public class Controller30 {

    private final MyDao4 dao;

    @GetMapping("sub1")
    public void method1(Integer id) {
        String name = dao.select1(id);
        System.out.println("name = " + name);
    }
}
