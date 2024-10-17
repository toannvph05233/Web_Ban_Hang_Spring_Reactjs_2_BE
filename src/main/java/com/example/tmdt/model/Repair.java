package com.example.tmdt.model;

import com.example.tmdt.model.buyPrd.BillDetail;
import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

@Data
@Entity
public class Repair {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String content;
    private String status;
    private Date start;
    private Date end;
    private Double price;
    @ManyToOne
    private BillDetail billDetail;
    @ManyToOne
    private User user;
}
