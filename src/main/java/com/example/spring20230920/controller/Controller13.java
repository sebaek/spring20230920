package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main13")
public class Controller13 {
    @RequestMapping("sub1")
    public void method1() {}
}
