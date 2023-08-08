package com.ps23244.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;


import lombok.Data;

@Data
@Entity
@Table(name = "categories")
public class Category implements Serializable{
	@Id
	@NotBlank(message="Vui lòng nhập mã loại !")
	String id;
	@NotBlank(message="Vui lòng nhập tên loại !")
	String name;
	@JsonIgnore
	@OneToMany(mappedBy = "category")
	List<Product> products;
	
	
}
