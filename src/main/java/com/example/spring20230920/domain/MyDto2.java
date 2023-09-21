package com.example.spring20230920.domain;

public class MyDto2 {
    // name property (문자열)
    // address property (문자열)
    // birthDate property (문자열)
    // signed property  (논리형)

    private String name;
    private String address;
    private String birthDate;
    private Boolean signed;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public Boolean getSigned() {
        return signed;
    }

    public void setSigned(Boolean signed) {
        this.signed = signed;
    }
}
