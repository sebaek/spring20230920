package com.example.spring20230920;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp3 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp3.class, args);
        MyClass4 bean = context.getBean("mybean4", MyClass4.class);
        MyClass5 bean1 = context.getBean("myClass5", MyClass5.class);
        System.out.println("bean = " + bean);
        System.out.println("bean1 = " + bean1);
    }
}
@Component // spring bean의 이름을 명시하지 않으면 클래스이름 -> lowerCamelCase
class MyClass5 { // myClass5

}

@Component("mybean4")
class MyClass4 {

}
