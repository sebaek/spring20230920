package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main4")
public class Controller04 {

    // /main4/sub1?name=son
    // request parameter의 이름과 method parameter의 이름이 같으면
    // @RequestParam의 value element 생략 가능
    @RequestMapping("sub1")
    public void method1(@RequestParam String name) {
        System.out.println("name = " + name);
    }

    // /main4/sub2?address=seoul&email=abc@gmail.com&age=44
    // 메소드 작성
}
