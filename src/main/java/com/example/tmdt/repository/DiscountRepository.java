package com.example.tmdt.repository;

import com.example.tmdt.model.Discount;
import com.example.tmdt.repository.query.DateDiscount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiscountRepository extends JpaRepository<Discount, Long> {

}
