package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main8")
public class Controller08 {

    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("attr1", "value1");
        model.addAttribute("attr2", "value2");

        // forward to /WEB-INF/jsp/main8/sub1.jsp
    }

    @RequestMapping("sub2")
    public void method(Model model) {
        model.addAttribute("propone", "😎");
        model.addAttribute("propTWO", "🙄");

    }

    @RequestMapping("sub3")
    public void method3(Model model) {
        model.addAttribute("myName", "손흥민");
        model.addAttribute("yourAddress", List.of(5, 4));
        model.addAttribute("herEmail", Map.of("a", "b"));

        // view name : /main8/sub3
        // /WEB-INF/jsp/main8/sub3.jsp
    }
}
