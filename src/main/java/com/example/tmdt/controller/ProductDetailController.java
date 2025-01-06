package com.example.tmdt.controller;

import com.example.tmdt.model.Color;
import com.example.tmdt.model.Product;
import com.example.tmdt.model.ProductDetail;
import com.example.tmdt.model.Size;
import com.example.tmdt.repository.IColorRepo;
import com.example.tmdt.repository.IProductDetailRepo;
import com.example.tmdt.repository.ISizeRepo;
import com.example.tmdt.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/product_detail")
public class ProductDetailController {

    @Autowired
    IProductDetailRepo iProductDetailRepo;

    @Autowired
    IColorRepo iColorRepo;

    @Autowired
    ISizeRepo iSizeRepo;

    @Autowired
    ProductRepository productRepository;


    @GetMapping("/color")
    public ResponseEntity<List<Color>> getColor() {
        List<Color> colors = iColorRepo.findAll();
        if (colors.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT); // 204 No Content if no details found
        }
        return new ResponseEntity<>(colors, HttpStatus.OK); // 200 OK with the list
    }

    @GetMapping("/size/{idProductDetail}/{idColor}")
    public ResponseEntity<List<Size>> getSize(@PathVariable Long idProductDetail, @PathVariable Long idColor) {
        List<Size> sizes = iSizeRepo.findAllSize(idProductDetail, idColor);
        if (sizes.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT); // 204 No Content if no details found
        }
        return new ResponseEntity<>(sizes, HttpStatus.OK); // 200 OK with the list
    }


    @GetMapping("/{id}")
    public ResponseEntity<List<ProductDetail>> findByIdProduct(@PathVariable Long id) {
        List<ProductDetail> productDetails = iProductDetailRepo.findAllByProductId(id);
        if (productDetails.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT); // 204 No Content if no details found
        }
        return new ResponseEntity<>(productDetails, HttpStatus.OK); // 200 OK with the list
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<ProductDetail> findById(@PathVariable Long id) {
        Optional<ProductDetail> productDetailOptional = iProductDetailRepo.findById(id);
        return productDetailOptional.map(productDetail -> new ResponseEntity<>(productDetail, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    @PostMapping
    public ResponseEntity<ProductDetail> createProductDetail(@RequestBody ProductDetail productDetail) {
        try {
            ProductDetail savedProductDetail = iProductDetailRepo.save(productDetail);
            Product product = productRepository.findById(productDetail.getProduct().getId()).get();
            product.setQuantity(product.getQuantity() + savedProductDetail.getQuantity());
            productRepository.save(product);
            return new ResponseEntity<>(savedProductDetail, HttpStatus.CREATED); // 201 Created
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR); // 500 Internal Server Error
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<ProductDetail> updateProductDetail(@PathVariable Long id, @RequestBody ProductDetail productDetail) {
        Optional<ProductDetail> productDetailOptional = iProductDetailRepo.findById(id);
        if (!productDetailOptional.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND); // 404 Not Found
        }
        try {
            Product product = productRepository.findById(productDetail.getProduct().getId()).get();
            product.setQuantity(product.getQuantity() - productDetailOptional.get().getQuantity());

            productDetail.setId(id); // Important: Set the ID of the updated object
            ProductDetail updatedProductDetail = iProductDetailRepo.save(productDetail);
            product.setQuantity(product.getQuantity() + updatedProductDetail.getQuantity());
            productRepository.save(product);
            return new ResponseEntity<>(updatedProductDetail, HttpStatus.OK); // 200 OK
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); // 500 Internal Server Error
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<HttpStatus> deleteProductDetail(@PathVariable Long id) {
        try {
            Optional<ProductDetail> productDetailOptional = iProductDetailRepo.findById(id);
            iProductDetailRepo.deleteById(id);
            Product product = productRepository.findById(productDetailOptional.get().getProduct().getId()).get();
            product.setQuantity(product.getQuantity() - productDetailOptional.get().getQuantity());
            productRepository.save(product);

            return new ResponseEntity<>(HttpStatus.NO_CONTENT); // 204 No Content (successful deletion)
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); // 500 Internal Server Error
        }
    }
}