package com.example.spring20230920.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyDto9 {
    private Long id;
    private String firstName;
    private String lastName;
    private String className;
    private String phoneNumber;

}
