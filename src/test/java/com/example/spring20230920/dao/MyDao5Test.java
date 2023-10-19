package com.example.spring20230920.dao;

import com.example.spring20230920.Spring20230920Application;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(classes = Spring20230920Application.class)
class MyDao5Test {

    @Autowired
    MyDao5 dao;

    @Test
    void select5test1() {
        dao.select5();
    }
}