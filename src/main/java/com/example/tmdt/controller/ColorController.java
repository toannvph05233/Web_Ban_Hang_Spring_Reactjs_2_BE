package com.example.tmdt.controller;

import com.example.tmdt.model.Color;
import com.example.tmdt.repository.ColorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/colors") // Đường dẫn API chung
public class ColorController {

    @Autowired
    private ColorRepository colorRepository;

    @GetMapping
    public ResponseEntity<List<Color>> getAllColors() {
        List<Color> colors = colorRepository.findAll();
        return new ResponseEntity<>(colors, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Color> getColorById(@PathVariable Long id) {
        try {
            Color color = colorRepository.findById(id).get();
            return new ResponseEntity<>(color, HttpStatus.OK);
        } catch (NoSuchElementException ex) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Không tìm thấy màu với ID: " + id);
        }
    }

    @PostMapping
    public ResponseEntity<Color> createColor(@RequestBody Color color) {
        Color createdColor = colorRepository.save(color);
        return new ResponseEntity<>(createdColor, HttpStatus.CREATED); // Trả về 201 Created
    }

    @PutMapping("/{id}")
    public ResponseEntity<Color> updateColor(@PathVariable Long id, @RequestBody Color color) {
        try {
            color.setId(id);
            colorRepository.save(color);
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (NoSuchElementException ex) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Không tìm thấy màu với ID: " + id);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<HttpStatus> deleteColor(@PathVariable Long id) {
        try {
            colorRepository.deleteById(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT); // Trả về 204 No Content
        } catch (NoSuchElementException ex) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Không tìm thấy màu với ID: " + id);
        }
    }
}
