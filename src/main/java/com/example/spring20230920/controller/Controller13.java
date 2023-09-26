package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Controller
@RequestMapping("main13")
public class Controller13 {
    @RequestMapping({"sub1", "sub2"})
    public void method1() {}

    @RequestMapping("sub3")
    public void method3(
            @RequestParam("param1") String param1,
            @RequestParam("param2") Integer param2,
            @RequestParam("param3") String param3,
            @RequestParam("param4") LocalDate param4, // 날짜
            @RequestParam("param5")LocalDateTime param5 // 날짜시간
            ) {
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
        System.out.println("param3 = " + param3);
        System.out.println("param4 = " + param4);
        System.out.println("param5 = " + param5);
    }
}
