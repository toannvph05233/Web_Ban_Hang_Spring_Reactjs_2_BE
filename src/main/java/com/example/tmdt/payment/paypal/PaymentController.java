package com.example.tmdt.payment.paypal;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.core.type.TypeReference;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import com.example.tmdt.model.buyPrd.Bill;
import com.example.tmdt.payment.PaymentDTO;
import com.example.tmdt.repository.BillRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/pay")
public class PaymentController {
    public static final String URL_PAYPAL_SUCCESS = "success";
    public static final String URL_PAYPAL_CANCEL = "cancel";
    private Logger log = LoggerFactory.getLogger(getClass());
    @Autowired
    private PaypalService paypalService;

    @Autowired
    BillRepository billRepository;

    @PostMapping
    public ResponseEntity<String> pay(@RequestBody PaymentDTO paymentDTO) throws JsonProcessingException, UnsupportedEncodingException {
        String redirectUrl = "http://localhost:8080/api/pay/" + URL_PAYPAL_SUCCESS + "?bills=" + URLEncoder.encode(new ObjectMapper().writeValueAsString(paymentDTO.getIdBills()), "UTF-8");
        try {
            Payment payment = paypalService.createPayment(
                    Math.round(paymentDTO.getTotal() * 100.0) / 100.0,
                    "USD",
                    PaypalPaymentMethod.paypal,
                    PaypalPaymentIntent.sale,
                    "payment description",

                    "http://localhost:8080/api/pay/" + URL_PAYPAL_CANCEL,
                    redirectUrl);
            for (Links links : payment.getLinks()) {
                if (links.getRel().equals("approval_url")) {
                    return ResponseEntity.ok().body(links.getHref());
                }
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return ResponseEntity.badRequest().body("Payment creation failed.");
    }

    @GetMapping(URL_PAYPAL_SUCCESS)
    public ModelAndView successPay(HttpServletRequest request, @RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
        ModelAndView modelAndView = new ModelAndView("success");
        try {
            Payment payment = paypalService.executePayment(paymentId, payerId);
            if (payment.getState().equals("approved")) {
                String billsJson = request.getParameter("bills");
                List<Integer> billIds = new ObjectMapper().readValue(URLDecoder.decode(billsJson, "UTF-8"), new TypeReference<List<Integer>>() {
                });

                for (Integer id : billIds) {
                    Bill bill = billRepository.findById(Long.valueOf(id)).get();
                    bill.setPayment("đã thanh toán");
                    billRepository.save(bill);
                }
                return modelAndView;
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        modelAndView = new ModelAndView("failed");
        return modelAndView;
    }

    @GetMapping(URL_PAYPAL_CANCEL)
    public String cancelPay() {
        return "cancel";
    }
}