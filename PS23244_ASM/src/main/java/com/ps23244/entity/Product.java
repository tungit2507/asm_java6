package com.ps23244.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.ToString;

@Data
@Entity
@Table(name = "products")

public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;

	@NotBlank(message = "Vui lòng nhập tên sản phẩm")
	String name;
	@NotNull(message = "Vui lòng chọn ảnh")
	String image;
	@NotNull(message = "Vui lòng nhập giá")
	Integer price;
	@NotBlank(message = "Vui lòng nhập giá giảm")
	String sale;
	@NotNull(message = "Vui lòng chọn ngày")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(name = "createdate")
	Date createDate = new Date();

	@NotNull(message = "Vui lòng chọn trạng thái")
	Boolean available;

	@ToString.Exclude
	@ManyToOne
	@JoinColumn(name = "categoryid")
	Category category;

	@JsonIgnore
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;

}
