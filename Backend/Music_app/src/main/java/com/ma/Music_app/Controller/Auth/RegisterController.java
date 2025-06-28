package com.ma.Music_app.Controller.Auth;

import com.ma.Music_app.DTO.User.RegisterRequest;
import com.ma.Music_app.Model.User;
import com.ma.Music_app.Model.UserPackage;
import com.ma.Music_app.respository.PackageRepository;
import com.ma.Music_app.respository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("/api/auth")
public class RegisterController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PackageRepository packageRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody RegisterRequest dto) {
        Map<String, Object> response = new HashMap<>();

        if (!dto.getPassword().equals(dto.getConfirmPassword())) {
            response.put("message", "Password and confirm password do not match");
            return ResponseEntity.badRequest().body(response);
        }

        if (userRepository.findByUsername(dto.getUsername()).isPresent()) {
            response.put("message", "Username already exists");
            return ResponseEntity.badRequest().body(response);
        }

        if (userRepository.findByEmail(dto.getEmail()).isPresent()) {
            response.put("message", "Email already exists");
            return ResponseEntity.badRequest().body(response);
        }


        Optional<UserPackage> selectedPackage = packageRepository.findById(dto.getPackageId());
        if (selectedPackage.isEmpty()) {
            response.put("message", "Selected package not found");
            return ResponseEntity.badRequest().body(response);
        }


        User user = User.builder()
                .username(dto.getUsername())
                .email(dto.getEmail())
                .password(passwordEncoder.encode(dto.getPassword()))
                .phone(dto.getPhone())
                .gender(dto.getGender())
                .birthDay(dto.getBirthDay())
                .pkg(selectedPackage.get())
                .status(true)
                .role("USER")
                .build();

        User savedUser = userRepository.save(user);
        savedUser.setPassword(null); // ẩn password

        return ResponseEntity.ok(savedUser);
    }
}
