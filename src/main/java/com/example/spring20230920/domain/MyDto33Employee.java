package com.example.spring20230920.domain;

import lombok.Data;

import java.time.LocalDate;

@Data
public class MyDto33Employee {
    private Integer id;
    private String lastName;
    private String firstName;
    private String photo;
    private String notes;
    private LocalDate birthDate;
}
