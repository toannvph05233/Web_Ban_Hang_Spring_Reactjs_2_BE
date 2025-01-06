package com.example.tmdt.repository;
import com.example.tmdt.dto.ProductDTO;
import com.example.tmdt.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findAllByAccount_Id(Long id);
    @Query(value = "select * from product where product.shop_id = ? and product.quantity>0",nativeQuery = true)
    List<Product> findAllByShop_Id (Long id);
    @Query(value = "SELECT * FROM product  " +
            "WHERE product.status IS NULL and product.quantity>0",nativeQuery = true)
    List<Product> findAllStatus();
    @Query(value = "SELECT * FROM product  " +
            "WHERE product.status IS NULL and product.quantity>0 and product.name like concat('%',:name,'%')",nativeQuery = true)
    List<Product> findAllByNameContainingAndStatusIsNull (@Param("name") String name);
    @Query(value = "select top 5 * from product where product.shop_id = ? and product.status is null and product.quantity>0 order by product.count desc", nativeQuery = true)
    List<Product> findByCount(Long id);
    @Query(value = "select * from product where product.category_id = ? and product.quantity>0",nativeQuery = true)
    List<Product> findByCategory(Long id);

}
