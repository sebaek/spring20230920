package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao5;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("main31")
public class Controller31 {

    private final MyDao5 dao;

    @GetMapping("sub1")
    public void method1() {
        String res1 = dao.select1("mexico");
        System.out.println("res1 = " + res1);

        String res2 = dao.select1(null);
        System.out.println("res2 = " + res2);
    }

    @GetMapping("sub2")
    public void method2(Integer num) {
        dao.select2(num);
    }
}
