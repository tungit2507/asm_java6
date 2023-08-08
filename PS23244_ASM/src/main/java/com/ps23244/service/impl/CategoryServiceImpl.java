package com.ps23244.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps23244.dao.AccountDAO;
import com.ps23244.dao.CategoryDAO;
import com.ps23244.entity.Account;
import com.ps23244.entity.Category;
import com.ps23244.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	CategoryDAO dao;

	@Override
	public List<Category> findAll() {
		return dao.findAll();
	}

	@Override
	public Category findById(String id) {
		return dao.findById(id).get();
	}

	@Override
	public Category create(Category category) {
		return dao.save(category);
	}

	@Override
	public Category update(Category category) {
		return dao.save(category);
	}

	@Override
	public void delete(String id) {
		dao.deleteById(id);
	}

	@Override
	public Category save(Category category) {
		return dao.save(category);
	}


}
