package com.ps23244.controller.admin;

import java.util.*;

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

import javax.annotation.PostConstruct;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/orders")
public class OrderRestController {
	@Autowired
	OrderService orderService;









	Map<String, Boolean> softMap =  new HashMap<>();

	List<Order> listOrder = new ArrayList<>();
	@PostConstruct
	public void init(){
		softMap.put("id",true);
		softMap.put("custormerName",true);
		softMap.put("createDate",true);
		softMap.put("phoneNumber",true);
		softMap.put("address",true);
		softMap.put("confirmation",true);
	}


	@GetMapping("/getAll")
	public List<Order> getAll() {
		this.listOrder = orderService.findAll();
		return this.listOrder;
	}

	@GetMapping("/confirm")
	public List<Order> confirm(Long id){
		Order order = orderService.findID(id);
		orderService.Confirm(order);
		return this.getAll();
	}

	@GetMapping("findByDate")
	public List<Order> findByDate(Date beginDate, Date finishDate){
		return orderService.reportDate(beginDate,finishDate);
	}

	@GetMapping("delete")
	public List<Order> Delete(Long id){
		Order order = orderService.findID(id);
		orderService.Delete(order);
		return this.getAll();
	}



	@GetMapping("sortOrders")
	public List<Order> sortOrders(String sortBy) {
		softMap.put(sortBy,!softMap.get(sortBy));
		Collections.sort(this.listOrder, new Comparator<Order>() {
			@Override
			public int compare(Order o1, Order o2) {
				int result;
				switch (sortBy) {
					case "id":
						result = o1.getId().compareTo(o2.getId());
						break;
					case "custormerName":
						result = o1.getAccount().getFullname().compareTo(o2.getAccount().getFullname());
						break;
					case "createDate":
						result = o1.getCreateDate().compareTo(o2.getCreateDate());
						break;
					case "phoneNumber":
						result = o1.getSdt().compareTo(o2.getSdt());
						break;
					case "address":
						result = o1.getAddress().compareTo(o2.getAddress());
						break;
					case "confirmation":
						result = Boolean.compare(o1.isConfirmation(), o2.isConfirmation());
						break;
					default:
						throw new IllegalArgumentException("Invalid sortBy option: " + sortBy);
				}

				if (softMap.get(sortBy)) {
					return result;
				} else {
					return -result;
				}
			}
		});

		return this.listOrder;
	}


}
