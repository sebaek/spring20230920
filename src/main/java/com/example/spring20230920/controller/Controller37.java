package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("main37")
public class Controller37 {

    /*
    axios.post("/main37/sub1", '{"name":"jones"}', {
        headers: {
            "content-type": "application/json"
        }
    })

    axios.post("/main37/sub1", {name: "jones"})
     */

    /*
    직렬화 serialize
    js(java) object -> json text

    파싱 parse
    json text -> js(java) object
     */
    @PostMapping("sub1")
    public void method1(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
    axios.post("/main37/sub2", {name: "lee", age:33, score: 8.9})
     */
    /*
    js object
    {name: "lee", age:33, score: 8.9}
    -> 직렬화
    json text
    '{"name": "lee", "age":33, "score": 8.9}'
    -> 파싱
    java map
    {name="lee", age=33, score=8.9}
     */
    @PostMapping("sub2")
    public void method2(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    /*
    axios.put("/main37/sub3", {
        city: "seoul",
        name: "son",
        email: "son@gmail.com"
    })
     */

    @PutMapping("sub3")
    public void method3(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }
}
