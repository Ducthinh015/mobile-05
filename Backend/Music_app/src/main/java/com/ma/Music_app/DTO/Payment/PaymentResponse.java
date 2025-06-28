package com.ma.Music_app.DTO.Payment;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentResponse {
    private int transactionId;
    private String status;
    private String paymentUrl;

}
