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
    OrderDAO orderDAO;

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
}
