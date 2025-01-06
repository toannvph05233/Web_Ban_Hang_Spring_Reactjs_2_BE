package com.example.tmdt.repository;

import com.example.tmdt.model.ProductDetail;
import com.example.tmdt.model.buyPrd.BillDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IProductDetailRepo extends JpaRepository<ProductDetail, Long> {
    List<ProductDetail> findAllByProductId(Long id);
}
