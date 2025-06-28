package com.ma.Music_app.Controller.Auth;


import com.ma.Music_app.Model.User;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/api")
public class ProfileUser {
    @GetMapping("/profile")
    public ResponseEntity<?> profile(HttpSession session) {
        User user = (User) session.getAttribute("user");

        if (user == null) {
            return ResponseEntity.status(401).body("Bạn chưa đăng nhập");
        }
        return ResponseEntity.ok(user);
    }

}
