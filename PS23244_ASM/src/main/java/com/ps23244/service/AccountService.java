package com.ps23244.service;

import java.util.List;

import com.ps23244.entity.Account;

public interface AccountService {
	public List<Account> findAll();

	public Account findById(String username);

	public Account create(Account product);

	public Account update(Account product);

	public void delete(String id);
}
