package com.ps23244.controller.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.ps23244.entity.Category;
import com.ps23244.entity.Product;
import com.ps23244.dao.CategoryDAO;
import com.ps23244.dao.ProductDAO;

@Controller
@RequestMapping("product")
public class ProductList {
	@Autowired
	ProductDAO dao;
	@Autowired
	CategoryDAO categoryDAO;

	//--------------------------------------------------y
	@RequestMapping("/list")
	public String sortAndPaginate(Model model,
	                              @RequestParam("p") Optional<Integer> p,
	                              @RequestParam("field") Optional<String> field,
	                              @RequestParam("sort") Optional<String> sort) {

	    Sort.Direction direction = Sort.Direction.DESC;
		
	    Product item = new Product();
	    model.addAttribute("item", item);
	 

	    Sort.Order order = new Sort.Order(direction, field.orElse("price"));
	    Sort pageSort = Sort.by(order);

	    model.addAttribute("field", field.orElse("price").toUpperCase());

	    // Lấy danh sách sản phẩm đã được sắp xếp
	    List<Product> sortedItems = dao.findAll(pageSort);
	    model.addAttribute("items", sortedItems);
	    
	    
	    // Phân trang
	    Pageable pageable = PageRequest.of(p.orElse(0), 5, pageSort);
	    Page<Product> page = dao.findAll(pageable);
	    model.addAttribute("page", page);

	    return "admin/productlist";
	}
	
	@RequestMapping("/controller")
	public String control(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		return "admin/productcontroller";
	}
	
	@RequestMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
	    Product item = dao.findById(id).get();
	    model.addAttribute("item", item);
	    List<Product> items = dao.findAll();
	    model.addAttribute("items", items);
	    return "admin/productcontroller";
	}



	@RequestMapping("/create")
	public String create(@Valid @ModelAttribute("item") Product item, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			List<Product> items = dao.findAll();
			model.addAttribute("items", items);
			return "admin/productcontroller";
		}
		dao.save(item);
		return "redirect:/product/list";
	}

	@RequestMapping("/update")
	public String update(@Valid @ModelAttribute("item") Product item, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			List<Product> items = dao.findAll();
			model.addAttribute("items", items);
			return "admin/productcontroller";
		}
		dao.save(item);
		return "redirect:/product/edit2/" + item.getId();
	}

	@RequestMapping("/delete/{id}")
	public String create(@PathVariable("id") Integer id) {
	    dao.deleteById(id);
	    return "redirect:/product/list";
	}
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		List<Category> categories = categoryDAO.findAll();
		return categories;
	}
	
	@ModelAttribute("availables")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Stocking");
		map.put(false, "Out of Stock");
		return map;
	}


}
