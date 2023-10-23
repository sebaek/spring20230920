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

    @GetMapping("sub3")
    public void methdo3(String address) {
        System.out.println("address = " + address);
    }

    @GetMapping("sub4")
    public void method4(String address,
                        String name,
                        Integer age,
                        String email) {
        System.out.println("address = " + address);
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        System.out.println("email = " + email);

    }
}
