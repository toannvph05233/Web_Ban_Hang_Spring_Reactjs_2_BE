package com.example.tmdt.model;


import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;

@Data
@Entity
@Table(name = "Color")
@EqualsAndHashCode(callSuper = false)
public class Color {
    @Column(name = "id", nullable = false)
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "color_generator")
    @SequenceGenerator(name = "color_generator", sequenceName = "dbo.color_id_seq", allocationSize = 1)
    private Long id;
    @Column(nullable = false)
    private String name;
}
