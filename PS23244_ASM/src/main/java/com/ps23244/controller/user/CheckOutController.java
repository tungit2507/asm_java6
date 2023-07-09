package com.ps23244.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps23244.dao.OrderDetailDAO;
import com.ps23244.entity.Order;
import com.ps23244.entity.OrderDetail;
import com.ps23244.entity.Account;
import com.ps23244.service.CheckOutService;
import com.ps23244.service.ShoppingCartService;
import com.ps23244.untils.ParamService;
import com.ps23244.untils.SessionService;



@Controller
@RequestMapping("home")
public class CheckOutController {
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CheckOutService checkOutService;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	@RequestMapping("checkout")
	public String checkout(Model model) {
		model.addAttribute("cart", shoppingCartService);
		return "user/checkout";
	}
	
	@RequestMapping("order-detail")
	public String orderdetail(Model model) {
		String sdt = paramService.getString("sdt", "");
		String address = paramService.getString("address", "");
		if(!shoppingCartService.getItems().isEmpty()) {
			if( sdt.equals("") &&  address.equals("")) {
				return "redirect:/home/checkout";
			}
			Account user = sessionService.get("user");
			Order order = checkOutService.order(user, sdt,  address);
			List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
			model.addAttribute("order", order);
			model.addAttribute("items",items);
			return "user/orderdetail";
		}
		return "redirect:/home/index";
	}
}
