package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto7;
import com.example.spring20230920.domain.MyDto8;
import com.example.spring20230920.domain.MyDto9;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;
import java.util.Scanner;

@Controller
@RequestMapping("main9")
public class Controller09 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("attr1", "son");
        model.addAttribute("attr2", 300);
        model.addAttribute("attr3", true);
        model.addAttribute("attr4", 3.14);

        // 모델속성이 배열일 경우
        model.addAttribute("attr5", new String[]{"lee", "kim"});

        String[] myArr1 = {"korea", "seoul", "jeju"};
        model.addAttribute("yourArr6", myArr1);


    }

    @RequestMapping("sub2")
    public void method2(Model model) {
        model.addAttribute("myName", new String[] {"김두식", "봉석"});
        model.addAttribute("yourEmail", new String[] {"ab@", "bc@", "de@"});
        model.addAttribute("herAddress", new String[] {"seoul"});
    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("names", List.of("두식", "봉석", "희수"));

        var list1 = List.of("무빙", "엘리멘탈");
        model.addAttribute("list1", list1);

        var list2 = List.of("korea", "us", "japan");
        model.addAttribute("mapList1", list2);

        var list3 = List.of("seoul", "jeju", "busan", "incheon");
        model.addAttribute("cities", list3);
    }

    @RequestMapping("sub4")
    public void method4(Model model) {
        var map1 = Map.of("son", 7, "lee", 19, "kim", 30);

        model.addAttribute("myMap", map1);

        var map2 = Map.of("seoul", "특별시", "busan", "광역시");

        model.addAttribute("cityMap", map2);
        model.addAttribute("color", Map.of(
                "red", "#ff0000",
                "blue", "#0000ff",
                "black", "#000000"
        ));

        var map3 = Map.of(
                "name", "두식",
                "my name", "봉석",
                "your-name", "희수"
        );
        model.addAttribute("attr3", map3);

    }

    @RequestMapping("sub5")
    public void method5(Model model) {
        var map1 = Map.of("phone1", "iphone", "phone2", "galaxy");
        var map2 = Map.of("korea", "seoul", "us", "ny");
        var map3 = Map.of("1st", "hamburger", "2nd", "pizza");

        model.addAttribute("korea", "us");
        model.addAttribute("phones", map1);
        model.addAttribute("caps", map2);
        model.addAttribute("foods", map3);

    }

    @RequestMapping("sub6")
    public void method6(Model model) {
        model.addAttribute("attr1", new Object());
        model.addAttribute("attr2", new Scanner(System.in));
        model.addAttribute("attr3", new MyDto7());
    }

    @RequestMapping("sub7")
    public void method7(Model model) {
        MyDto8 o1 = new MyDto8();
        o1.setFood("pizza");
        o1.setComputer("intel");
        o1.setBirthDate("2020-01-01");

        model.addAttribute("person1", o1);

    }

    @RequestMapping("sub8")
    public void method8(Model model) {
        MyDto9 obj = new MyDto9();
        obj.setId(9999L);
        obj.setClassName("java");
        obj.setLastName("son");
        obj.setFirstName("kangin");
        obj.setPhoneNumber("0299999999");

        model.addAttribute("student", obj);
    }
}

