/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.tmdt.payment.vnpay;

import com.example.tmdt.model.buyPrd.Bill;
import com.example.tmdt.payment.PaymentDTO;
import com.example.tmdt.payment.paypal.PaypalService;
import com.example.tmdt.repository.BillRepository;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.paypal.api.payments.Payment;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;


@RestController
@CrossOrigin("*")
@RequestMapping("/api/pay/vnpay")
public class PaymentVnPayController {
    public static final String URL_PAYPAL_SUCCESS = "success";
    public static final String URL_PAYPAL_CANCEL = "cancel";
    private Logger log = LoggerFactory.getLogger(getClass());
    @Autowired
    private PaypalService paypalService;

    @Autowired
    BillRepository billRepository;

    @PostMapping
    protected ResponseEntity<String> create(@RequestBody PaymentDTO paymentDTO, HttpServletRequest req) throws ServletException, IOException {
        String redirectUrl = "http://localhost:8080/api/pay/vnpay/" + URL_PAYPAL_SUCCESS + "?bills=" + URLEncoder.encode(new ObjectMapper().writeValueAsString(paymentDTO.getIdBills()), "UTF-8");
        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String orderType = "other";
        long amount = (long) (Math.round(paymentDTO.getTotal() * 1000.0) / 100.0);
        String bankCode = "NCB";

        String vnp_TxnRef = Config.getRandomNumber(8);
        String vnp_IpAddr = "127.0.0.1";

        String vnp_TmnCode = Config.vnp_TmnCode;

        Map<String, String> vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");

        vnp_Params.put("vnp_BankCode", bankCode);
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang:" + vnp_TxnRef);
        vnp_Params.put("vnp_OrderType", orderType);

        vnp_Params.put("vnp_Locale", "vn");
        vnp_Params.put("vnp_ReturnUrl", redirectUrl);
        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;

        return ResponseEntity.ok(paymentUrl);
    }

    @GetMapping(URL_PAYPAL_SUCCESS)
    public ModelAndView successPay(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("success");
        try {
            String billsJson = request.getParameter("bills");
            List<Integer> billIds = new ObjectMapper().readValue(URLDecoder.decode(billsJson, "UTF-8"), new TypeReference<List<Integer>>() {
            });
            for (Integer id : billIds) {
                Bill bill = billRepository.findById(Long.valueOf(id)).get();
                bill.setPayment("đã thanh toán");
                billRepository.save(bill);
            }
            return modelAndView;

        } catch (Exception e) {
            log.error(e.getMessage());
        }
        modelAndView = new ModelAndView("failed");
        return modelAndView;
    }
}
