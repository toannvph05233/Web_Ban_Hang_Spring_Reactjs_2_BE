package com.example.tmdt.model;
import com.example.tmdt.model.Product;
import com.example.tmdt.security.model.Account;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "Comment")
@EqualsAndHashCode(callSuper = false)
public class Comment {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "nvarchar(255)")
    private String content;
    @Column(columnDefinition = "nvarchar(255)")
    private String status;
    private LocalDateTime createAt;
    @Column(columnDefinition = "nvarchar(255)")
    private String reply;
    @ManyToOne
    private Product product;
    @ManyToOne
    private Account account ;
    @ManyToOne
    private User user;

}
