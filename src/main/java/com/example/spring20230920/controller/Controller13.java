package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("main13")
public class Controller13 {
    @RequestMapping({"sub1", "sub2"})
    public void method1() {}

    @RequestMapping("sub3")
    public void method3(
            @RequestParam("param1") String param1,
            @RequestParam(value = "param2", defaultValue = "0") Integer param2,
            @RequestParam("param3") String param3,
            @RequestParam(value = "param4", defaultValue = "2023-09-26") LocalDate param4, // 날짜
            @RequestParam(value = "param5", defaultValue = "2023-09-26T11:15:30") LocalDateTime param5, // 날짜시간
            @RequestParam(value = "param6", defaultValue = "value1") String param6,
            @RequestParam(value = "param8", required = false) String[] param8,
            @RequestParam("param8") List<String> param9
            ) {

        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
        System.out.println("param3 = " + param3);
        System.out.println("param4 = " + param4);
        System.out.println("param5 = " + param5);
        System.out.println("param6 = " + param6);

        if (param8 != null) {
            Arrays.stream(param8).forEach(System.out::println);
        }

        System.out.println("list로 받음");
        param9.forEach(System.out::println);
    }
}
