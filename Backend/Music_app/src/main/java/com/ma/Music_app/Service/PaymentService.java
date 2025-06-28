package com.ma.Music_app.Service;

import com.ma.Music_app.DTO.Payment.PaymentRequest;
import com.ma.Music_app.DTO.Payment.PaymentResponse;
import com.ma.Music_app.Model.PaymentTransaction;
import com.ma.Music_app.Model.User;
import com.ma.Music_app.Model.UserPackage;
import com.ma.Music_app.respository.PackageRepository;
import com.ma.Music_app.respository.PaymentRepository;
import com.ma.Music_app.respository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.UUID;


@Service
public class PaymentService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PackageRepository packageRepository;

    @Autowired
    private PaymentRepository paymentRepository;

    public PaymentResponse createPayment(PaymentRequest request) {
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(() -> new RuntimeException("User not found"));

        UserPackage pkg = packageRepository.findById(request.getPackageId())
                .orElseThrow(() -> new RuntimeException("Package not found"));

        PaymentTransaction txn = new PaymentTransaction();
        txn.setUser(user);
        txn.setUserPackage(pkg);
        txn.setStatus("pending");
        txn.setAmount(pkg.getPrice().longValue());
        txn.setCreatedAt(LocalDateTime.now());


        txn = paymentRepository.save(txn);


        int id = txn.getPaymentid();
        String redirectUrl = "https://fakepayment.com/checkout?txn=" + id;


        paymentRepository.save(txn);

        return new PaymentResponse(id, "pending", redirectUrl);
    }

    public void updateTransactionStatus(Integer transactionId, String status) {
        PaymentTransaction txn = paymentRepository.findById(transactionId)
                .orElseThrow(() -> new RuntimeException("Transaction not found"));

        txn.setStatus(status);
        paymentRepository.save(txn);

        if ("success".equalsIgnoreCase(status)) {
            User user = txn.getUser();
            UserPackage pkg = txn.getUserPackage();

            user.setPkg(pkg);

            userRepository.save(user);
        }
    }
}

