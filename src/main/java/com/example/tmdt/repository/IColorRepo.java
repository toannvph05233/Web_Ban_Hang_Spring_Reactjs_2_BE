package com.example.tmdt.repository;

import com.example.tmdt.model.Color;
import com.example.tmdt.model.fkProduct.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IColorRepo extends JpaRepository<Color, Long> {
}
