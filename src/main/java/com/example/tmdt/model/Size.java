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
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "size_generator")
    @SequenceGenerator(name = "size_generator", sequenceName = "dbo.size_id_seq", allocationSize = 1)
    private Long id;
    @Column(nullable = false)
    private String name;
}
