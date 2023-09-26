package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main14")
public class Controller14 {
    @RequestMapping("sub1")
    public void method1() {

    }

    @RequestMapping(value = "sub2", method = RequestMethod.GET)
    public void method2(
            @RequestParam("id") String id,
            @RequestParam("password") String password
    ) {
        System.out.println("Controller14.method2");

        System.out.println("id = " + id);
        System.out.println("password = " + password);
    }

    @RequestMapping(value = "sub2", method = RequestMethod.POST)
    public void method3(
            @RequestParam("id") String id,
            @RequestParam("password") String password
    ) {
        System.out.println("Controller14.method3");

        System.out.println("id = " + id);
        System.out.println("password = " + password);
    }
}
