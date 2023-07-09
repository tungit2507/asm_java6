package com.ps23244.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps23244.dao.OrderDAO;
import com.ps23244.dao.OrderDetailDAO;
import com.ps23244.entity.Account;
import com.ps23244.entity.Order;
import com.ps23244.entity.OrderDetail;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;



@RequestMapping("/home")
@Controller
public class MyOrderController {

	@Autowired
	OrderDAO orderDAO; 
	
	@Autowired
	OrderDetailDAO 	orderDetailDAO;
	
	@Autowired	
	SessionService sessionService;
	@Autowired
	ParamService paramService;
	
	@RequestMapping("/myorder")
	public String myorder(Model model) {
		Account acc = sessionService.get("user"); 
		String username = acc.getUsername();
		List<Order> items = orderDAO.findOrderByAccount(username);
		model.addAttribute("items", items);
		System.out.println(username);
		return "user/myorder";
	}
	
	
	
	 @RequestMapping("/delete/{id}")
	    public String deleteOrder(@PathVariable("id") long id) {
	        Optional<Order> optionalOrder = orderDAO.findById(id);
	        if (optionalOrder.isPresent()) {
	            Order item = optionalOrder.get();
	            if (!item.isConfirmation	()) {
	            	orderDAO.deleteById(id);
	            }
	        }

	        return "redirect:/home/myorder";
	    }

	
	@RequestMapping("/myOrderDetail")
	public String locBrand(Model model, @RequestParam("id") long id, @RequestParam("p") Optional<Integer> p) {
		Order order = new Order();
		List<Order> orders = orderDAO.findAll();
		for (Order ord : orders) {
			if (ord.getId() == id) {
				order = ord;
				break;
			}
		}	
		model.addAttribute("ord", order);
		Pageable pageable = PageRequest.of(p.orElse(0), 1000);
		Page<OrderDetail> page = orderDetailDAO.findByOrder(id, pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "user/myorderdetail";
	}
	
	
}
