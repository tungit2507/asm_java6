package com.ps23244.service;

import java.util.List;

import com.ps23244.entity.Authority;

public interface AuthorityService {
	public List<Authority> findAll() ;

	public Authority create(Authority auth) ;

	public void delete(Integer id) ;

	public List<Authority> findAuthoritiesOfAdministrators() ;
}
