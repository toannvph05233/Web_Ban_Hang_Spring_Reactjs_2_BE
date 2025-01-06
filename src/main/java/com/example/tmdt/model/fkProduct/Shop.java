package com.example.tmdt.model.fkProduct;
import com.example.tmdt.model.address.Wards;
import com.example.tmdt.security.model.Account;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.persistence.*;
@Data
@Entity
@Table(name = "Shop")
@EqualsAndHashCode(callSuper = false)
public class Shop  {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "nvarchar(255)")
    private String name;
    @Column(columnDefinition = "nvarchar(255)")
    private String avatar;
    @Column(columnDefinition = "nvarchar(255)")
    private String phone;
    @ManyToOne
    private Account account ;
    @Column(columnDefinition = "nvarchar(255)")
    private String address ;
    @ManyToOne
    private Wards wards;
}
