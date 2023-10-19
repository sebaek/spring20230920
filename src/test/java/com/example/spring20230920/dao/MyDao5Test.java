package com.example.spring20230920.dao;

import com.example.spring20230920.Spring20230920Application;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest(classes = Spring20230920Application.class)
class MyDao5Test {

    @Autowired
    MyDao5 dao;

    @Test
    void select5test1() {
        dao.select5();
    }

    @Test
    void select6test1() {
        dao.select6();
    }

    @Test
    void select7test1() {
        dao.select7(List.of("mexico", "uk"));
    }

    @Test
    void select7test2() {
        dao.select7(List.of("uk", "usa", "korea"));
    }

    @Test
    void select8test1() {
        dao.select8(List.of("uk", "usa", "korea"));
    }

    @Test
    void select8test2() {
        dao.select8(List.of());
    }
}