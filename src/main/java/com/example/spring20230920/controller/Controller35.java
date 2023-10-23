package com.example.spring20230920.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main35")
@RequiredArgsConstructor
public class Controller35 {
    @GetMapping("sub1")
    public void method1() {

    }

    @GetMapping("sub2")
    public void method2() {
        System.out.println("Controller35.method2");
    }
}
