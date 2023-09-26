package com.example.spring20230920.domain;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class MyDto12 {
    private Integer id;
    private String name;
    private String address;
    private LocalDateTime schedule;
    private List<String> todos;
}
