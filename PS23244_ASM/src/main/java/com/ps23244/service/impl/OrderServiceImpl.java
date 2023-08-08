package com.ps23244.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ps23244.dao.OrderDAO;
import com.ps23244.entity.Order;
import com.ps23244.service.OrderService;

import com.ps23244.dao.OrderDetailDAO;

import com.ps23244.entity.OrderDetail;

@Service
public class OrderServiceImpl implements OrderService{

    @Autowired
    OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
    @Override
    public List<Order> findAll() {
        return orderDAO.findAll();
    }

    @Override
    public Order findID(Long id) {
        return orderDAO.findById(id).orElse(new Order());
    }

    @Override
    public List<Order> reportDate(Date firstdate, Date lastdate) {
       return orderDAO.findOrderByDate(firstdate,lastdate);
    }

    @Override
    public Order Update(Order order) {
        orderDAO.save(order);
        return order;
    }

    @Override
    public Order Create(Order order) {
        orderDAO.save(order);
        return order;
    }

    @Override
    public Order Delete(Order order) {
        orderDAO.delete(order);
        return order;
    }

    @Override
    public Order Confirm(Order order) {
        order.setConfirmation(true);
        this.Update(order);
        return order;
    }
    @Override
    public Order createData(JsonNode orderData) {
		ObjectMapper mapper = new ObjectMapper();
		
		Order order = mapper.convertValue(orderData, Order.class);
		orderDAO.save(order);
		
		TypeReference<List<OrderDetail>> type = new TypeReference<List<OrderDetail>>() {};
		List<OrderDetail> details = mapper.convertValue(orderData.get("orderDetails"), type)
				.stream().peek(d -> d.setOrder(order)).collect(Collectors.toList());
		orderDetailDAO.saveAll(details);
		
		return order;
	}

	@Override
	public List<Order> findByUsername(String username) {
		return orderDAO.findOrderByAccount(username);
	}
}
