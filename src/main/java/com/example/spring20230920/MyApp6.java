package com.example.spring20230920;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class MyApp6 {
    public static void main(String[] args) {
        // Inversion Of Control (IOC)
        // IOC Container
        ApplicationContext context = SpringApplication.run(MyApp6.class, args);

        MyClass9 myClass9 = context.getBean("myClass9", MyClass9.class);
        myClass9.method9();

        System.out.println("myClass9.getField1() = " + myClass9.getField1());

        Object myClass10 = context.getBean("myClass10");
        System.out.println("myClass10 = " + myClass10);
    }
}

@Component // myClass10
class MyClass10 {
    public void method10() {
        System.out.println("MyClass10.method10");
    }
}

@Component // myClass9
class MyClass9 {

    private MyClass10 field1; // dependency

    public MyClass9() {
    }

    public MyClass9(MyClass10 field1) {
        this.field1 = field1;
    }

    @Autowired // Dependency Injection (DI, 의존성 주입)
    public void setField1(MyClass10 field1) {
        this.field1 = field1;
    }

    public MyClass10 getField1() {
        return field1;
    }

    public void method9() {
        field1.method10();
    }
}
