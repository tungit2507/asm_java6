package com.ps23244.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;
@Data
@Entity
@Table(name = "orderdetails")
public class OrderDetail implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	Double price;
	Integer quantity;
	
	@ToString.Exclude
	@ManyToOne @JoinColumn(name = "productid")
	Product product;
	
	@ToString.Exclude
	@ManyToOne @JoinColumn(name = "orderid")
	Order order;
}
