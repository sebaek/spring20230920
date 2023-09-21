package com.example.spring20230920.domain;

public class MyDto1 {
    // property 명 : get/set 없애고 소문자로 시작
    // boolean type property 읽기 메소드는 is로 시작할 수 있음
    
    // name property
    // homeAddress property
    

    private String name;
    private String homeAddress;
    private String MYHOME;
    private Boolean married;
    private boolean checked;

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public Boolean getMarried() {
        return married;
    }

    public void setMarried(Boolean married) {
        this.married = married;
    }

    public String getMYHOME() {
        return MYHOME;
    }

    public void setMYHOME(String MYHOME) {
        this.MYHOME = MYHOME;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
