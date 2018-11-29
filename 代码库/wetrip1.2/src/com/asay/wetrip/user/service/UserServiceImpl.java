package com.asay.wetrip.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asay.wetrip.entity.Users;
import com.asay.wetrip.user.dao.UserDaoImpl;

@Service
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	//根据用户的Email查询单个用户
	public Users getUser(String email) {		
		return this.userDaoImpl.findByEmail(email);
	}
}
