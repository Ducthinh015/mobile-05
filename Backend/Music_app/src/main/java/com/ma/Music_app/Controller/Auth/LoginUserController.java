package com.ma.Music_app.Controller.Auth;

import com.ma.Music_app.Model.User;
import com.ma.Music_app.respository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
public class LoginUserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Map<String, String> loginRequest, HttpSession session) {
        Map<String, Object> response = new HashMap<>();

        String loginInput = loginRequest.get("login");
        String password = loginRequest.get("password");

        if (loginInput == null || password == null) {
            response.put("message", "Thiếu thông tin đăng nhập");
            return ResponseEntity.badRequest().body(response);
        }

        Optional<User> userOptional = loginInput.contains("@") ?
                userRepository.findByEmail(loginInput) :
                userRepository.findByPhone(loginInput);

        if (userOptional.isEmpty()) {
            response.put("message", "Người dùng không tồn tại");
            return ResponseEntity.badRequest().body(response);
        }

        User user = userOptional.get();

        if (!passwordEncoder.matches(password, user.getPassword())) {
            response.put("message", "Sai mật khẩu");
            return ResponseEntity.badRequest().body(response);
        }

        // Lưu thông tin vào session
        session.setAttribute("user", user);
        session.setAttribute("role", user.getRole());

        // Phản hồi
        response.put("message", "Đăng nhập thành công");
        response.put("user", Map.of(
                "id", user.getId(),
                "username", user.getUsername(),
                "email", user.getEmail(),
                "phone", user.getPhone(),
                "role", user.getRole()
        ));

        return ResponseEntity.ok(response);
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpSession session) {
        session.invalidate();
        return ResponseEntity.ok("Đăng xuất thành công");
    }

    @GetMapping("/profile")
    public ResponseEntity<?> profile(HttpSession session) {
        User user = (User) session.getAttribute("user");

        if (user == null) {
            return ResponseEntity.status(401).body("Bạn chưa đăng nhập");
        }

        return ResponseEntity.ok(Map.of(
                "id", user.getId(),
                "username", user.getUsername(),
                "email", user.getEmail(),
                "phone", user.getPhone(),
                "role", user.getRole()
        ));
    }
}
