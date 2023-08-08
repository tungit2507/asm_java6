package com.ps23244.service;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;
import com.ps23244.entity.Account;
import com.ps23244.entity.Order;

public interface OrderService {
	public List<Order> findAll();

	public Order findID(Long id);

	public List<Order> reportDate(Date firstdate, Date lastdate);

	public Order Update(Order order);

	public Order Create(Order order);

	public Order Delete(Order order);

	public Order Confirm(Order order);

	public Order createData(JsonNode orderData);

	public List<Order> findByUsername(String username);
}
