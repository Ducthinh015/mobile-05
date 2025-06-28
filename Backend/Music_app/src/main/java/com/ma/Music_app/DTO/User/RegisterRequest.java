package com.ma.Music_app.DTO.User;

import java.time.LocalDate;
import lombok.Data;

@Data
public class RegisterRequest {
    private String username;
    private String email;
    private String password;
    private String confirmPassword;
    private String phone;
    private Boolean gender;
    private LocalDate birthDay;
    private Integer packageId;
}
