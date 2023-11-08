package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao10;
import com.example.spring20230920.domain.MyDto18Employee;
import com.example.spring20230920.domain.MyDto34Customer;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

//@Controller
//@ResponseBody // 모든 메소드에 적용됨
@RestController // @Controller + @ResponseBody
@RequiredArgsConstructor
@RequestMapping("api/main1")
public class RestController1 {

    private final MyDao10 dao;

    // http://localhost:8080/api/main1/sub1
    @GetMapping("sub1")
    public String method1() {
        return "customer name!!";
    }

    // http://localhost:8080/api/main1/sub2
    // get 요청시
    // 5번 고객의 customerName 응답
    @GetMapping("sub2")
    public String method2() {
        return dao.getCustomerName();
    }

    @GetMapping("sub3")
    public MyDto34Customer method3() {
        return dao.getCustomer();
    }

    // /api/main1/sub4?id=33
    @GetMapping("sub4")
    public ResponseEntity<MyDto34Customer> method4(Integer id) {
        MyDto34Customer customer = dao.getCustomerById(id);

        if (customer == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(customer);
    }

    @GetMapping("sub5")
    public ResponseEntity<MyDto18Employee> method5(Integer id) {
        MyDto18Employee employee = dao.getEmployeeById(id);
        if (employee == null) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(employee);
    }

    @GetMapping("sub6")
    public List<Integer> method6() {
        return dao.getCustomerIdList();
    }

    @GetMapping("sub7")
    public List<Integer> method7() {
        return dao.getEmployeeIdList();
    }
}
