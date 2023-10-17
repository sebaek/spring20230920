package com.example.spring20230920;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
public class MyApp15 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp15.class, args);
        MyClass29 myClass29 = context.getBean("myClass29", MyClass29.class);
        MyClass28 myClass28 = context.getBean("myClass28", MyClass28.class);

        System.out.println("myClass29 = " + myClass29);
        System.out.println(myClass28.getField());

    }
}

@Configuration
class Configuration2 {
    @Bean
    public MyClass29 myClass29() {
        return new MyClass29();
    }

    @Bean
    public MyClass28 myClass28() {
        MyClass28 myClass28 = new MyClass28();
        myClass28.setField(myClass29());
        return myClass28;
    }
}

class MyClass29 {

}
class MyClass28 {
    private MyClass29 field; // dependency

    public void setField(MyClass29 field) {
        this.field = field;
    }

    public MyClass29 getField() {
        return field;
    }
}
