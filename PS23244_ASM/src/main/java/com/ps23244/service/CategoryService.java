package com.ps23244.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ps23244.dao.CategoryDAO;
import com.ps23244.entity.Account;
import com.ps23244.entity.Category;



public interface CategoryService {
	public List<Category> findAll();

	public Category findById(String id);
	
	public Category save(Category category);
	
	public Category create(Category category);

	public Category update(Category category);

	public void delete(String id);
	
}
