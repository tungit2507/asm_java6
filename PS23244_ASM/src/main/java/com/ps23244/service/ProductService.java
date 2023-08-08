package com.ps23244.service;

import java.util.List;

import com.ps23244.entity.Category;
import com.ps23244.entity.Product;
import com.ps23244.entity.ReportCategory;

public interface ProductService {
	public List<Product> findAll();

	public Product findById(Integer id);
	
	public List<Product> findByCategoryId(String cid) ;

	public Product create(Product product);

	public Product update(Product product);

	public void delete(Integer id);
	
	public List<ReportCategory> reportCategory();
}
