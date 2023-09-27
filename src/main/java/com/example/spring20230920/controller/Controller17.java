package com.example.spring20230920.controller;

import com.example.spring20230920.domain.MyDto14;
import jakarta.annotation.PostConstruct;
import jakarta.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("main17")
public class Controller17 {
    @Autowired
    private ServletContext application;

    @PostConstruct
    public void init() {
        application.setAttribute("posts", new ArrayList<MyDto14>());
    }

    @GetMapping("list")
    public void list(Model model) {
        Object list = application.getAttribute("posts");
        model.addAttribute("postList", list);
    }

    @GetMapping("new")
    public void newPost() {

    }

    @PostMapping("new")
    public String newPost(MyDto14 post) {
        Object posts = application.getAttribute("posts");
        List<MyDto14> list = (List<MyDto14>) posts;
        list.add(post);

        return "redirect:/main17/list";
    }

    @GetMapping("view")
    public void view(Integer id, Model model) {
        List<MyDto14> list = (List<MyDto14>) application.getAttribute("posts");
        model.addAttribute("post", list.get(id));

    }
}
