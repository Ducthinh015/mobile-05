package com.ma.Music_app.Model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class PaymentTransaction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int Paymentid;

    @ManyToOne
    private User user;

    @ManyToOne
    private UserPackage UserPackage;

    private String status;
    private Long amount;
    private LocalDateTime createdAt;
}

