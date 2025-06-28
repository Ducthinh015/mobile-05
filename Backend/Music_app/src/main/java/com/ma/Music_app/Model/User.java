package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;

@Entity
@Table(name = "users")
@Data                  // tự động tạo getter, setter, toString, equals, hashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "UsID")
    private int id;

    @Column(columnDefinition = "bit")
    private Boolean gender;


    private LocalDate birthDay;

    @Column(length = 10)
    private String phone;

    @Column(length = 100, unique = true, nullable = false)
    private String email;

    @Column(length = 100, unique = true, nullable = false)
    private String username;

    @Column(length = 100, nullable = false)
    private String password;

    @ManyToOne
    @JoinColumn(name = "packageID")
    private UserPackage pkg;

    @Column
    private String role;

    @Column(nullable = false)
    private Boolean status = true;


}
