package com.ps23244.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps23244.dao.ProductDAO;
import com.ps23244.entity.Product;
import com.ps23244.entity.ReportCategory;
import com.ps23244.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO dao;

	@Override
	public List<Product> findAll() {
		return dao.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return dao.findById(id).get();
	}

	@Override
	public List<Product> findByCategoryId(String cid) {
		return dao.findByCategoryHome(cid);
	}

	@Override
	public Product create(Product product) {
		return dao.save(product);
	}

	@Override
	public Product update(Product product) {
		return dao.save(product);
	}

	@Override
	public void delete(Integer id) {
		dao.deleteById(id);

	}

	@Override
	public List<ReportCategory> reportCategory() {
		return dao.getReportCategory();
	}

}
