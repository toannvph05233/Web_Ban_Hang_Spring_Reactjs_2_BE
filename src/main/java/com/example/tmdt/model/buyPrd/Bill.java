package com.example.tmdt.model.buyPrd;
import com.example.tmdt.model.address.Wards;
import com.example.tmdt.model.fkProduct.Shop;
import com.example.tmdt.security.model.Account;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.persistence.*;
import java.time.LocalDate;
@Data
@Entity
@Table(name = "Bill")
@EqualsAndHashCode(callSuper = false)
public class Bill {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "nvarchar(255)")
    private String name;
    @ManyToOne
    private Account account ;
    @Column(columnDefinition = "nvarchar(255)")
    private String address;
    @ManyToOne
    private Wards wards;
    @Column(columnDefinition = "nvarchar(255)")
    private String phone;
    @Column(columnDefinition = "nvarchar(255)")
    private String total;
    private LocalDate date ;
    @Column(columnDefinition = "nvarchar(255)")
    private String reason;
    @ManyToOne
    private Shop shop;
    @Column(columnDefinition = "nvarchar(255) default '0'")
    private String status;
    @Column(columnDefinition = "nvarchar(255) default 'chưa thanh toán'")
    private String payment;
}
