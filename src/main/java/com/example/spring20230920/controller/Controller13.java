package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto11;
import com.example.spring20230920.domain.MyDto12;
import com.example.spring20230920.domain.MyDto13;
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
    @RequestMapping({
            "sub1",
            "sub2",
            "sub4",
            "sub7",
            "sub9",
            "sub11",
            "sub13"})
    public void method1() {
    }

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

    @RequestMapping("sub5")
    public void method5(
            @RequestParam("userId") String id,
            @RequestParam("userEmail") String email,
            @RequestParam("birthDate") LocalDate birth,
            @RequestParam("hobby") List<String> hobby
    ) {
        System.out.println("id = " + id);
        System.out.println("email = " + email);
        System.out.println("birth = " + birth);
        System.out.println("hobby = " + hobby);
    }

    @RequestMapping("sub6")
    public void mehthod6(MyDto11 user) {
        System.out.println("user = " + user);
    }

    @RequestMapping("sub8")
    public void method8(MyDto12 info) {
        System.out.println("info = " + info);
    }

    @RequestMapping("sub10")
    public void method10(
            @RequestParam("title") String title,
            @RequestParam("contentBody") String contentBody
    ) {
        System.out.println("title = " + title);
        System.out.println("contentBody = " + contentBody);
    }

    @RequestMapping("sub12")
    public void method12(MyDto13 vo) {
        System.out.println("vo = " + vo);
    }

    @RequestMapping("sub14")
    public void method14(
            @RequestParam("hobby") String hobby,
            @RequestParam("food") List<String> food
    ) {
        System.out.println("hobby = " + hobby);
        System.out.println("food = " + food);
    }
}
