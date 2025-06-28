package com.ma.Music_app.respository;

import com.ma.Music_app.Model.PaymentTransaction;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepository extends JpaRepository<PaymentTransaction, Integer> {
}
