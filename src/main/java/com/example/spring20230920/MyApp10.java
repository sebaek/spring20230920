package com.example.spring20230920;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

public class MyApp10 {
}

interface MyInterface1 {

}

@Component
class MyClass18 implements MyInterface1 {

}

@Component
class MyClass19 implements MyInterface1 {

}

@Component
//@RequiredArgsConstructor
class MyClass17 {
    private final MyInterface1 field;

    public MyClass17(@Qualifier("myClass18") MyInterface1 field) {
        this.field = field;
    }
}
