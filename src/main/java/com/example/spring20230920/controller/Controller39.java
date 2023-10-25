package com.example.spring20230920.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
@RequestMapping("main39")
public class Controller39 {

    @GetMapping("sub0")
    public void method0() {

    }

    @GetMapping("sub1")
    @ResponseBody // ResponseEntity 이면 생략 가능
    public ResponseEntity method1() {
        // ResponseEntity
        // : 응답코드, 응답본문 작성 가능한 객체

        return ResponseEntity.status(400).build();
    }

    @GetMapping("sub2")
    @ResponseBody
    public ResponseEntity method2() {
        return ResponseEntity.badRequest().build();
//        return ResponseEntity.internalServerError().build();
    }



}
