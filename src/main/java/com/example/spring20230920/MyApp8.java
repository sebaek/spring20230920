package com.example.spring20230920;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp8 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp8.class, args);
        Object myClass14 = context.getBean("myClass14");
        System.out.println("myClass14 = " + myClass14);

        MyClass13 myClass13 = context.getBean("myClass13", MyClass13.class);
        System.out.println("myClass13.getDepen() = " + myClass13.getDepen());
    }
}

@Component
class MyClass14 {
    
}
@Component
class MyClass13 {
    private MyClass14 depen;

//    @Autowired // 생략 가능
    public MyClass13(MyClass14 depen) {
        this.depen = depen;
    }

    public MyClass14 getDepen() {
        return depen;
    }
}
