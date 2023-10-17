package com.example.spring20230920;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class MyApp16 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp16.class, args);
        MyClass31 bean1 = context.getBean("myClass31Bean", MyClass31.class);
        MyClass30 bean2 = context.getBean("myClass30Bean", MyClass30.class);

        System.out.println("bean2 = " + bean2.hashCode()); // int

        System.out.println("bean1 = " + bean1.hashCode()); // int (1)

        System.out.println(bean2.getField().hashCode()); // int (1)

        // (1)로 표시한 값은 같은 값이 나오도록...
        // Configuration Spring Bean , configuration3 작성
        // MyClass30, MyClass31에 annotaion 작성 하지 않기
        // 필요하면 생성자나 setter 작성 가능

    }
}

class MyClass31 {

}
class MyClass30 {
    private MyClass31 field;

    public MyClass31 getField() {
        return field;
    }
}