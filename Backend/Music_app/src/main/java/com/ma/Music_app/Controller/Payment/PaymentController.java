package com.ma.Music_app.Controller.Payment;

import com.ma.Music_app.DTO.Payment.PaymentRequest;
import com.ma.Music_app.DTO.Payment.PaymentResponse;
import com.ma.Music_app.Model.PaymentTransaction;
import com.ma.Music_app.Service.PaymentService;
import com.ma.Music_app.respository.PaymentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/payments")
public class PaymentController {
    @Autowired
    private PaymentService paymentService;

    private PaymentResponse PaymentResponse;

    private PaymentRepository paymentRepository;

    @PostMapping("/webhook")
    public ResponseEntity<PaymentResponse> createPayment(@RequestBody PaymentRequest request) {
        PaymentResponse response = paymentService.createPayment(request);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/{transactionId}")
    public ResponseEntity<PaymentTransaction> getTransaction(@PathVariable Integer transactionId) {
        return paymentRepository.findById(transactionId)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

}

