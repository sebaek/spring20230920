package com.example.spring20230920.domain;

import lombok.Data;

import java.time.LocalDate;

@Data
public class MyDto41 {
    private Integer id;
    private String lastName;
    private String firstName;
    private LocalDate birthDate;
}
