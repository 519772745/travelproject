package com.asay.wetrip.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.asay.wetrip.entity.Users;
import com.asay.wetrip.user.service.UserServiceImpl;

@Controller
@Transactional
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserServiceImpl userServiceImpl;
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Users users, HttpSession session) {
		users.getEmail();
		return "index";
	}
	
	
}
