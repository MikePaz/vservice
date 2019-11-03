package com.vservice.controller;

import com.vservice.entity.Product;
import com.vservice.service.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(value = "/api")
public class ProductController {

    @Autowired
    ProductServiceImpl productService;

    @PostMapping(value = "/product")
    public Product insertProduct(@Valid @RequestBody Product product){
        return productService.save(product);
    }

    @GetMapping(value = "product/{code}")
    public Product findProductByCode(@PathVariable("code") Integer code){
        return productService.findByCode(code);
    }

    @GetMapping(value = "product/findByName/{name}")
    public List<Product> findProductByName(@PathVariable("name") String name){
        return productService.findByName(name);
    }

    @GetMapping(value = "/product/priceAsc")
    public List<Product> getProductsByPriceAsc(){
        return productService.findAllByOrderByPriceAsc();
    }

    @GetMapping(value = "/product/priceDesc")
    public List<Product> getProductsByPriceDesc(){
        return productService.findAllByOrderByPriceDesc();
    }

    @PutMapping(value = "/product/deactivate/{code}")
    public void deactivateProduct(@PathVariable("code") int code){
        productService.deactivate(code);
    }
}