package com.example.tmdt.controller;

import com.example.tmdt.model.Repair;
import com.example.tmdt.repository.IRepairRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/repairs")
@CrossOrigin("*")
public class RepairController {

    @Autowired
    private IRepairRepo repairRepo;

    // Get all Repairs
    @GetMapping
    public List<Repair> getAllRepairs() {
        return repairRepo.findAll();
    }

    // Get a Repair by ID
    @GetMapping("/{id}")
    public ResponseEntity<Repair> getRepairById(@PathVariable Long id) {
        return repairRepo.findById(id)
                .map(repair -> ResponseEntity.ok().body(repair))
                .orElse(ResponseEntity.notFound().build());
    }

    // Create a new Repair
    @PostMapping
    public ResponseEntity<?> createRepair(@RequestBody Repair repair) {
        // Kiểm tra nếu có Repair nào với billDetailId tương ứng và trạng thái chưa phải là "đã xong"
        if (repair.getBillDetail() != null) {
            Long billDetailId = repair.getBillDetail().getId();
            List<Repair> existingRepairs = repairRepo.findAll().stream()
                    .filter(r -> r.getBillDetail() != null && billDetailId.equals(r.getBillDetail().getId()))
                    .collect(Collectors.toList());

            for (Repair existingRepair : existingRepairs) {
                if (!"đã xong".equalsIgnoreCase(existingRepair.getStatus())) {
                    return ResponseEntity.badRequest().body("Dịch vụ cũ chưa xong, không thể tạo mới.");
                }
            }
        }

        Repair savedRepair = repairRepo.save(repair);
        return ResponseEntity.ok(savedRepair);
    }

    // Update a Repair
    @PutMapping("/{id}")
    public ResponseEntity<Repair> updateRepair(@PathVariable Long id, @RequestBody Repair repairDetails) {
        return repairRepo.findById(id)
                .map(repair -> {
                    repair.setContent(repairDetails.getContent());
                    repair.setStatus(repairDetails.getStatus());
                    repair.setStart(repairDetails.getStart());
                    repair.setEnd(repairDetails.getEnd());
                    repair.setPrice(repairDetails.getPrice());
                    repair.setBillDetail(repairDetails.getBillDetail());
                    return ResponseEntity.ok().body(repairRepo.save(repair));
                }).orElse(ResponseEntity.notFound().build());
    }

    // Delete a Repair
    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteRepair(@PathVariable Long id) {
        return repairRepo.findById(id)
                .map(repair -> {
                    repairRepo.delete(repair);
                    return ResponseEntity.ok().build();
                }).orElse(ResponseEntity.notFound().build());
    }
}

