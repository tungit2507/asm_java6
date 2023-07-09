package com.ps23244.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
@Data
@Entity
@Table(name = "accounts")
public class Account implements Serializable{
	
	@Id
	@NotBlank(message="Vui lòng nhập tài khoản !")
	String username;
	@NotBlank(message="Vui lòng nhập mật khẩu !")
	String password;
	@NotBlank(message="Vui lòng nhập họ tên !")
	String fullname;
	@NotBlank(message="Vui lòng nhập địa chỉ email !")
	@Email(message="Vui lòng nhập đúng định dạng email !")
	String email;
	@NotNull(message="Vui lòng chọn ảnh")
	String photo;
	
	@Column(nullable = false, columnDefinition = "bit default 0")
	boolean activated;
	
	boolean admin;
	@OneToMany(mappedBy = "account")
	List<Order> orders;
}
