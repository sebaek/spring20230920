package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main1")
public class Controller02 {

    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller02.method1");
    }

    // /main1/sub2 메소드 작성
    @RequestMapping("sub2")
    public void method2() {
        System.out.println("Controller02.method2");
    }

    // /main1/sub3 요청에 일하는 method3() 작성
    @RequestMapping("sub3")
    public void method3() {
        System.out.println("Controller02.method3");

    }
}
