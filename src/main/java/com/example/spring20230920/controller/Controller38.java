package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("main38")
public class Controller38 {
    /*
    axios.get("/main38/sub1")
     */

    @GetMapping("sub1")
    @ResponseBody
    public String method1() {

        return "/main38/sub1";
    }

    @GetMapping("sub2")
    @ResponseBody
    public String method2() {

        return "hello world";
    }

    /*
    axios.get("/main38/sub3")
     */
    @GetMapping("sub3")
    @ResponseBody
    public Map<String, Object> method3() {
        // {"name": "son", "age": 30}
        return Map.of("name", "son",
                "age", 30);
    }
    @GetMapping("sub4")
    public Map<String, Object> method4() {
        // {"city": "seoul", "price":3000,
        //      "list": ["son", "lee", "kim"], "birth": "1999-03-03"}
    }
}
