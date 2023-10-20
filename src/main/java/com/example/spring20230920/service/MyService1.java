package com.example.spring20230920.service;

import com.example.spring20230920.dao.MyDao6;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class MyService1 {

    private final MyDao6 dao;

    public void tx1() {
        dao.update1();

        int c = 1 / 0; // runtimeException

        dao.update2();
    }
}
