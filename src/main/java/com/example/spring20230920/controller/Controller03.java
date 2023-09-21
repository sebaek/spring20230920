package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

@Controller
@RequestMapping("main2")
public class Controller03 {
    // url에 대한 설명
    // https://developer.mozilla.org/en-US/docs/Learn/Common_questions/Web_mechanics/What_is_a_URL

    // /main2/sub1?address=seoul
    @RequestMapping("sub1")
    public void method1(WebRequest request) {
        System.out.println("Controller03.method1");

        String address = request.getParameter("address");
        System.out.println("address = " + address);
    }


    // /main2/sub2?name=son&address=london
    @RequestMapping("sub2")
    public void method2(WebRequest request) {
        String name = request.getParameter("name");
        String address = request.getParameter("address");

        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    // /main2/sub3?name=손흥민
    @RequestMapping("sub3")
    public void method3(@RequestParam("name") String name) {
        System.out.println("name = " + name);
    }

    // /main2/sub4?name=김두식&address=서울
    @RequestMapping("sub4")
    public void method4(@RequestParam("name") String name,
                        @RequestParam("address") String address) {
        System.out.println("name = " + name);
        System.out.println("address = " + address);
    }

    // /main2/sub5?email=abc@gmail.com&gender=남자&number=010-9999
    // method5 작성
    @RequestMapping("sub5")
    public void method5(@RequestParam("email") String mail,
                        @RequestParam("gender") String gender,
                        @RequestParam("number") String phone) {
        System.out.println("mail = " + mail);
        System.out.println("gender = " + gender);
        System.out.println("phone = " + phone);
    }
}
