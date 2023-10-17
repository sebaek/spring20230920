package com.example.spring20230920;

public class MyApp1 {

    public static void main(String[] args) {
        System.out.println("code.....");

        MyClass1 o1 = new MyClass1();
        o1.method1();
    }
}

class MyClass1 {
    public void method1() {
        System.out.println("MyClass1.method1");
    }
}
