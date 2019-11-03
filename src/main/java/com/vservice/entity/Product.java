package com.vservice.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;

@Entity
@Table(name="products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private Double price;

    @Column(name = "code")
    private int code;

    @JsonFormat(pattern = "yyyy-MM-dd")
    @Column(name = "available_Date")
    @NotNull
    private Date availableDate;

    @JsonFormat(pattern = "yyyy-MM-dd")
    @Column(name="expiration_Date")
    private Date expirationDate;

    @JsonProperty("isAvailable")
    @Column(name = "is_Available")
    private boolean isAvailable;


    public Product() {
    }

    public Product(String name, Double price, int code, @NotNull Date availableDate, Date expirationDate, boolean isAvailable) {
        this.name = name;
        this.price = price;
        this.code = code;
        this.availableDate = availableDate;
        this.expirationDate = expirationDate;
        this.isAvailable = isAvailable;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Date getAvailableDate() {
        return availableDate;
    }

    public void setAvailableDate(Date availableDate) {
        this.availableDate = availableDate;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public void setAvailable(boolean isAvailable) {
        this.isAvailable = isAvailable;
    }
}