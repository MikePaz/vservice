package com.vservice.repository;

import com.vservice.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByName(String name);

    Product findByCode(int code);


    List <Product> findAllByOrderByPriceAsc();


    List <Product> findAllByOrderByPriceDesc();


}