package com.example.tmdt.controller;

import com.example.tmdt.dto.BrandDTO;
import com.example.tmdt.model.fkProduct.Brand;
import com.example.tmdt.repository.BrandRepository;
import com.example.tmdt.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("api/brands")
public class BrandController {
    @Autowired
    private IBrandService brandService;

    @Autowired
    BrandRepository brandRepository;
    @GetMapping
    ResponseEntity<Iterable<BrandDTO>> findAll() {
        return new ResponseEntity<>(brandService.findAll(), HttpStatus.OK);
    }
    @GetMapping("/{id}")
    ResponseEntity<BrandDTO> findOne(@PathVariable Long id) {
        BrandDTO brandDTO = brandService.findOne(id);
        return new ResponseEntity<>(brandDTO,HttpStatus.OK);
    }
    @PostMapping
    ResponseEntity<?> save(@RequestBody BrandDTO brandDTO) {
        brandService.save(brandDTO);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
//    @PostMapping
//    public ResponseEntity<Brand> createBrand(@RequestBody Brand brand) {
//        Brand newBrand = brandRepository.save(brand);
//        return new ResponseEntity<>(newBrand, HttpStatus.CREATED);
//    }

    @PutMapping("/{id}")
    public ResponseEntity<Brand> updateBrand(@PathVariable Long id, @RequestBody Brand brand) {
        brand.setId(id);
        Brand updatedBrand = brandRepository.save(brand);
        return new ResponseEntity<>(updatedBrand, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteBrand(@PathVariable Long id) {
        brandRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
