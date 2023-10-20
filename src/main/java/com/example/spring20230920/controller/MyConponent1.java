package com.example.spring20230920.controller;

import com.example.spring20230920.dao.MyDao6;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;


@Component
@RequiredArgsConstructor
public class MyConponent1 {

    private final MyDao6 dao;

    @Transactional
    public void tx1() {
        dao.update1();

//        int c = 1 / 0; // runtimeException

        dao.update2();
    }
}
