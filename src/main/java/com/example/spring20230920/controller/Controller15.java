package com.example.spring20230920.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("main15")
public class Controller15 {

    @GetMapping("sub1")
    public void method1() {
    }

    @GetMapping("sub2")
    public void method2(HttpServletRequest request, HttpSession session) {

        System.out.println();
        System.out.println("request = " + request.getRemoteHost());
        System.out.println("session = " + session.getId());
        System.out.println();

    }

    @GetMapping("sub3")
    public void method3(
            @RequestParam(value = "name", defaultValue = "") String name,
            HttpSession session,
            HttpServletRequest request) {
        if (!name.isBlank()) {
            session.setAttribute("username", name);
        }
        Object username = session.getAttribute("username");

        if (username != null) {
            System.out.println();
            System.out.println("request = " + request.getRemoteHost());
            System.out.println("username = " + username);
            System.out.println();
        }
    }

    @GetMapping("sub4")
    public void method4() {

    }

    @PostMapping("sub5")
    public void method5(String name, HttpSession session) {
        session.setAttribute("username", name);

    }

    @GetMapping("sub6")
    public void method6() {

    }

    @GetMapping("sub7")
    public void method7() {

    }

    //    post 요청 /main15/sub8
//    request parameter foods를
//    session 에 attribute로 넣고
//    sub8.jsp 로 포워드하는 메소드 만들기
    @PostMapping("sub8")
    public void method8(@RequestParam("foods") List<String> foods, HttpSession session) {
//        System.out.println("Arrays.toString(foods) = " + Arrays.toString(foods));
        System.out.println("foods = " + foods);
        session.setAttribute("foodList", foods);

    }

//    get 요청 /main15/sub9
//    sub9.jsp로 포워드하는 메소드 만들기

//    단. sub8.jsp와 sub9.jsp에서는 sub7에서 선택한 음식들을 보여주기
    @GetMapping("sub9")
    public void method9() {

    }


}
