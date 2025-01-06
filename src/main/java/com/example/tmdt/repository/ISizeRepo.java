package com.example.tmdt.repository;

import com.example.tmdt.model.Size;
import com.example.tmdt.model.fkProduct.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ISizeRepo extends JpaRepository<Size, Long> {
    @Query(nativeQuery = true, value = "select *\n" +
            "from banhang.dbo.size\n" +
            "where id not in (SELECT s.id FROM banhang.dbo.size s LEFT JOIN banhang.dbo.product_detail pd ON s.id = pd.size_id WHERE pd.product_id = :idP AND pd.color_id = :color_id)")
    List<Size> findAllSize(@Param("idP") Long idP, @Param("color_id") Long color_id);
}
