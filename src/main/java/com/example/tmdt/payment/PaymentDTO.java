package com.example.tmdt.payment;

import com.example.tmdt.model.buyPrd.Bill;
import lombok.Data;

import java.util.List;

@Data
public class PaymentDTO {
    private Double total;
    private List<Integer> idBills;
}

