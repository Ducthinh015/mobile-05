package com.ma.Music_app.Model;

import jakarta.persistence.*;
import lombok.*;
import java.math.BigDecimal;

@Entity
@Table(name = "package")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserPackage {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer packageID;

    @Column(unique = true)
    private String name;

    private Long price;

    private Integer durationDay;
}
