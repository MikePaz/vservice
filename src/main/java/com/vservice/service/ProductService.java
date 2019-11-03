package com.vservice.service;

import com.vservice.entity.Product;

import java.util.List;

public interface ProductService {

    List<Product> findByName(String name);
    Product findByCode(int code);
    void deactivate(int code);
    List <Product> findAllByOrderByPriceDesc();
    List <Product> findAllByOrderByPriceAsc();
}