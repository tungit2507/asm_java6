package com.ps23244.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps23244.dao.OrderDAO;
import com.ps23244.entity.Order;
import com.ps23244.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDAO dao;
	@Override
	public List<Order> findAll() {
		return dao.findAll();
	}

	@Override
	public List<Order> findID(Long id) {
		return dao.findID(id);
	}

	@Override
	public List<Order> reportDate(Date firstdate, Date lastdate) {
		return dao.findOrderByDate(firstdate, lastdate);
	}

}
