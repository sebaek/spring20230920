package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main5")
public class Controller05 {


    // /main5/sub1?name=lee&age=33&address=paris
    @RequestMapping(value = "sub1", params = {"address", "age"})
    public void method1(String name, Integer age, String address) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        System.out.println("address = " + address);

//        service.method(name, age, address);

    }
}
