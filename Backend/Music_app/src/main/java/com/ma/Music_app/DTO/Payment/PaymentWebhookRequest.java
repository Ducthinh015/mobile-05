package com.ma.Music_app.DTO.Payment;

import lombok.Data;

@Data
public class PaymentWebhookRequest {
    private String transactionId;
    private String status;
}
