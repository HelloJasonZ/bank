package com.vivebest.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vivebest.erp.entity.Authority;
import com.vivebest.erp.mapper.AuthorityMapper;
import com.vivebest.erp.service.AuthorityService;

@Service
 public  class AuthorityServiceImpl implements AuthorityService{

	@Autowired
	private AuthorityMapper authorityMapper;

	@Override
	/**
	 * 增加柜员权限
	 */
	public boolean insertToAuthority(Authority authority) {
		// TODO Auto-generated method stub
		return authorityMapper.insertToAuthority(authority);
	}

	@Override
	/**
	 * 更改柜员权限
	 */
	public boolean updateAuthority(Authority authority) {
		// TODO Auto-generated method stub
		return authorityMapper.updateAuthority(authority);
	}

	@Override
	/**
	 * 删除柜员权限
	 */
	public boolean deleteAuthority(Authority authority) {
		// TODO Auto-generated method stub
		return authorityMapper.deleteAuthority(authority);
	}

	public List<Authority> getAllAu(Authority authority) {
		
		return authorityMapper.getAllAu(authority);
	}
	
	
}
