package com.example.tmdt.controller;

import com.example.tmdt.model.Discount;
import com.example.tmdt.repository.DiscountRepository;
import com.example.tmdt.repository.query.DateDiscount;
import com.example.tmdt.security.repository.IAccountRepository;
import com.example.tmdt.security.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/discounts")
public class DiscountController {
    @Autowired
    AccountServiceImpl accountService;

    @Autowired
    IAccountRepository iAccountRepository;
    @Autowired
    private DiscountRepository discountRepository;

    @GetMapping
    public ResponseEntity<List<Discount>> getAllDiscounts() {
        return new ResponseEntity<>(discountRepository.findAll(), HttpStatus.OK);
    }

    @GetMapping("/account/{id}")
    public ResponseEntity<List<Discount>> getAllDiscountsUser(@PathVariable Long id) {
        List<Discount> discounts = discountRepository.findAll();
        DateDiscount dateAccount = iAccountRepository.findDateByAccount(id);
        List<Discount> discountList = new ArrayList<>();
        for (Discount d:discounts) {
            if (d.getDate().isBefore(dateAccount.getDate())&& d.getCount() > 0){
                discountList.add(d);
            }
        }
        return new ResponseEntity<>(discountList, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Discount> getDiscountById(@PathVariable Long id) {
        Discount discount = discountRepository.findById(id).get();
        if (discount == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(discount, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Discount> createDiscount(@RequestBody Discount discount) {
        Discount newDiscount = discountRepository.save(discount);
        return new ResponseEntity<>(newDiscount, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Discount> updateDiscount(@PathVariable Long id, @RequestBody Discount discount) {
        discount.setId(id);
        Discount updatedDiscount = discountRepository.save(discount);
        return new ResponseEntity<>(updatedDiscount, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteDiscount(@PathVariable Long id) {
        discountRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}