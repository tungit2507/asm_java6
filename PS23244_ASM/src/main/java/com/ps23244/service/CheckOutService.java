package com.ps23244.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps23244.dao.OrderDAO;
import com.ps23244.dao.OrderDetailDAO;
import com.ps23244.entity.Account;
import com.ps23244.entity.CartItem;
import com.ps23244.entity.Order;
import com.ps23244.entity.Product;
import com.ps23244.entity.OrderDetail;


@Service
public class CheckOutService {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	public Order order (Account user,String sdt, String address ) {
		Order order = new Order();
		order.setAccount(user);
		order.setSdt(sdt);	
		order.setAddress(address);
		orderDAO.save(order);
		for(CartItem item:shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			
			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
