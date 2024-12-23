package com.example.tmdt.model;

import com.example.tmdt.model.fkProduct.Brand;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import javax.validation.constraints.Min;

@Data
@Entity
@Table(name = "product_detail")
@EqualsAndHashCode(callSuper = false)
public class ProductDetail {
    @Column(name = "id", nullable = false)
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "product_detail_generator")
    @SequenceGenerator(name = "product_detail_generator", sequenceName = "dbo.product_detail_id_seq", allocationSize = 1)
    private Long id;
    @Column(nullable = false)
    @Min(value = 0)
    private Integer quantity;
    @ManyToOne
    private Color color;
    @ManyToOne
    private Product product;
    @ManyToOne
    private Size size;
    @Column(nullable = false)
    private String image;
}
