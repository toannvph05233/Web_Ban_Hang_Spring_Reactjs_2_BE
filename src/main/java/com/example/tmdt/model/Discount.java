package com.example.tmdt.model;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@Table(name = "Discount")
@EqualsAndHashCode(callSuper = false)
public class Discount  {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Double code;
    @Column(columnDefinition = "nvarchar(255)")
    private String content;
    private LocalDate date;
    private int count;
}

