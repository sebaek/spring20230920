package com.example.spring20230920;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp4 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp4.class, args);
        MyClass6 myClass6 = context.getBean("myClass6", MyClass6.class);
        myClass6.setValue1("값1");
        myClass6.method1();
    }
}

@Component
class MyClass6 {

    private String value1;

    public MyClass6() {
    }

    public MyClass6(String value1) {
        this.value1 = value1;
    }

    public void setValue1(String value1) {
        this.value1 = value1;
    }

    public void method1() {
        System.out.println("value1 = " + value1);
    }
}
