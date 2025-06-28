package com.ma.Music_app.DTO.User;

import java.time.LocalDate;
import java.util.List;

import lombok.Data;

@Data
public class UserReponse {
    private Long id;
    private String username;
    private String email;
    private String phone;
    private Boolean gender;
    private LocalDate birthDay;
    private List<String> roles;


    public UserReponse(Long id, String username, String email, String phone, Boolean gender, LocalDate birthDay) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.birthDay = birthDay;
    }
}
