package com.example.tmdt.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import javax.validation.constraints.Min;

@Data
@Entity
@Table(name = "Size")
@EqualsAndHashCode(callSuper = false)
public class Size {
    @Column(name = "id", nullable = false)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false,columnDefinition = "nvarchar(255)")
    private String name;
}
