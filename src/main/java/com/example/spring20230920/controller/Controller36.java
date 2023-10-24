package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao7;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.Map;

@Controller
@RequestMapping("main36")
@RequiredArgsConstructor
public class Controller36 {

    private final MyDao7 dao;

    @GetMapping("sub1")
    public void method1() {

    }

    // axios.get("/main36/sub2", {params: {id: 5}})
    // /main36/sub2?id=5
    @GetMapping("sub2")
    public void method2(Integer id) {
        Map<String, Object> data = dao.selectByCustomerId(id);
        System.out.println("data = " + data);
    }

    // axios.get("/main36/sub3", {params: {id: 2}});
    /*
    axios.request({
            url: "/main36/sub3",
            method: "get",
            params: {id: 2}
        });

     */
    // /main36/sub3?id=2
    @GetMapping("sub3")
    public void method3(Integer id) {
        Map<String, Object> data = dao.selectByEmployeeId(id);
        System.out.println("data = " + data);
    }

    /*
    axios.post("/main36/sub4", {
        lastName: "손",
        firstName: "흥민",
        birthDate: "2020-02-02"
    }, {
        headers: {
            "content-type": "application/x-www-form-urlencoded"
        }
    })

     */
    // post /main36/sub4
    // lastName=손&firstName=흥민&birthDate=2020-02-02
    @PostMapping("sub4")
    public void method4(String lastName,
                        String firstName,
                        LocalDate birthDate) {
        int i = dao.insertEmployee(lastName, firstName, birthDate);
        System.out.println(i + "개 데이터 입력됨");
    }
}
