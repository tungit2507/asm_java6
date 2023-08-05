package com.ps23244.controller.admin;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ps23244.dao.OrderDAO;
import com.ps23244.entity.Order;
import com.ps23244.service.OrderService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {
	@Autowired
	OrderService orderService;

	@GetMapping
	public List<Order> getAll() {
		return orderService.findAll();
	}

//	public List<Order> Order = new ArrayList<Order>();
//
//	@Autowired
//	OrderDAO dao;
//
//	@RequestMapping("/list")
//	public String index(Model model, @RequestParam("p") Optional<Integer> p,
//
//			@RequestParam("field") Optional<String> field, @RequestParam("sort") Optional<String> sort) {
//		Sort.Direction direction = Sort.Direction.DESC;
//
//		Order item = new Order();
//		model.addAttribute("item", item);
//
//		Sort.Order order = new Sort.Order(direction, field.orElse("createDate"));
//		Sort pageSort = Sort.by(order);
//
//		model.addAttribute("field", field.orElse("price").toUpperCase());
//
//		// Lấy danh sách sản phẩm đã được sắp xếp List<Order> sortedItems =
//		dao.findAll(pageSort);
//		model.addAttribute("items", sortedItems);
//
//		// Phân trang Pageable pageable = PageRequest.of(p.orElse(0), 5, pageSort);
//		Page<Order> page = dao.findAll(pageable);
//		model.addAttribute("page", page);
//		return "admin/orderlist";
//	}
//
//	@RequestMapping("/controller")
//	public String control(Model model) {
//		Order item = new Order();
//		model.addAttribute("item", item);
//		return "admin/ordercontroller";
//	}
//
//	@RequestMapping("/confirm/{id}")
//	public String confirmOrder(@PathVariable("id") long id) {
//		Optional<Order> optionalOrder = dao.findById(id);
//		if (optionalOrder.isPresent()) {
//			Order order = optionalOrder.get();
//			order.setConfirmation(true);
//			dao.save(order);
//		}
//
//		return "redirect:/order/list";
//	}
//
//	@RequestMapping("/delete/{id}")
//	public String deleteOrder(@PathVariable("id") long id) {
//		dao.deleteById(id);
//		return "redirect:/order/list";
//	}

}
