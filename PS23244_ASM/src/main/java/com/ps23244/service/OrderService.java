package com.ps23244.service;

import java.util.Date;
import java.util.List;

import com.ps23244.entity.Account;
import com.ps23244.entity.Order;

public interface OrderService {
	public List<Order> findAll();
	public List<Order> findID(Long id);
	public List<Order> reportDate(Date firstdate, Date lastdate);
}
