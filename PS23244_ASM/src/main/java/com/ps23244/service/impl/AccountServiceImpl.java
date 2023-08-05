package com.ps23244.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps23244.dao.AccountDAO;
import com.ps23244.entity.Account;
import com.ps23244.service.AccountService;


@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountDAO dao;
	@Override
	public List<Account> findAll() {
		return dao.findAll();
	}

	@Override
	public Account findById(String username) {
		return dao.findById(username).get();
	}

	@Override
	public Account create(Account account) {
		return dao.save(account);
	}

	@Override
	public Account update(Account account) {
		return dao.save(account);
	}

	@Override
	public void delete(String id) {
		dao.deleteById(id);
	}
}
