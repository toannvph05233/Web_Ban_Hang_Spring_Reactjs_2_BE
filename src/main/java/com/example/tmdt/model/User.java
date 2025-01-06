package com.example.tmdt.model;

import javax.persistence.*;

import com.example.tmdt.model.address.Wards;
import com.example.tmdt.security.model.Account;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDate;

@Data
@Entity
@Table(name = "[User]")
@EqualsAndHashCode(callSuper = false)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id ;
    @Column(columnDefinition = "nvarchar(255)")
    private String name ;
    @Column(columnDefinition = "nvarchar(255)")
    private String avatar ;
    @Column(columnDefinition = "nvarchar(255)")
    private String gender ;
    private LocalDate age ;
    @Column(columnDefinition = "nvarchar(255)")
    private String phone ;
    @Column(columnDefinition = "nvarchar(255)")
    private String email ;
    @Column(columnDefinition = "nvarchar(255)")
    private String address;
    @ManyToOne
    private Wards wards;
    @ManyToOne
    private Discount discount ;
    @OneToOne
    private Account account ;
    @Column(columnDefinition = "integer default 0")
    private Integer changeRole ;

}
