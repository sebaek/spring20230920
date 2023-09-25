package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main11")
public class Controller11 {
    @RequestMapping("sub1")
    public void method1() {
    }

    @RequestMapping("sub2")
    public void method2() {
    }
    @RequestMapping("sub3")
    public void method3() {}
}
