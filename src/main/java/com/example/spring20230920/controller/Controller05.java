package com.example.spring20230920.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main5")
public class Controller05 {


    // /main5/sub1?name=lee&age=33&address=paris
    @RequestMapping(value = "sub1", params = {"address", "age"})
    public void method1(String name, Integer age, String address) {
        System.out.println("name = " + name);
        System.out.println("age = " + age);
        System.out.println("address = " + address);
    }

    // /main5/sub2?name=lee&age=44&address=paris
    @RequestMapping("sub2")
    public void method2(String name, Integer age, String address) {
        Person5 o1 = new Person5();
        o1.setName(name);
        o1.setAge(age);
        o1.setAddress(address);

        System.out.println(o1);

//        service.action(o1);
    }

    // /main5/sub3?name=lee&age=44&address=paris
    @RequestMapping("sub3")
    public void method3(Person5 person5) {
        System.out.println("person5 = " + person5);
    }

    // /main5/sub4?email=ab@gmail.com&married=true&age=33&info=programmer
    // method4(Student5 s) 작성
    // Student5 클래스 작성
    @RequestMapping("sub4")
    public void method4(Student5 s) {
        System.out.println("s = " + s);
    }
}
class Student5 {
    private String email;
    private Boolean married;
    private Integer age;
    private String info;

    @Override
    public String toString() {
        return "Student5{" +
                "email='" + email + '\'' +
                ", married=" + married +
                ", age=" + age +
                ", info='" + info + '\'' +
                '}';
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getMarried() {
        return married;
    }

    public void setMarried(Boolean married) {
        this.married = married;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getInformation() {
        return info;
    }

    public void setInformation(String info) {
        this.info = info;
    }
}

class Person5 {
    private String name;
    private Integer age;
    private String address;

    @Override
    public String toString() {
        return "Person5{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", address='" + address + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
