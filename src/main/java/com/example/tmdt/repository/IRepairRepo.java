package com.example.tmdt.repository;

import com.example.tmdt.model.Repair;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IRepairRepo extends JpaRepository<Repair, Long> {
}
