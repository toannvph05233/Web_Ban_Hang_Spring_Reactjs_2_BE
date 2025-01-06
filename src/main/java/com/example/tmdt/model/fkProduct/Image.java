package com.example.tmdt.model.fkProduct;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
@Data

@Entity
@Table(name = "Image")
@EqualsAndHashCode(callSuper = false)
public class Image {
    @Column(name = "id", nullable = false)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    @Column(columnDefinition = "nvarchar(255)")
    private String name;
}

