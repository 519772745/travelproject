package com.asay.wetrip.test;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;

@Controller
@Transactional
@RequestMapping("/user")
public class TestUserController {
	@Resource
	private SessionFactory sessionFactory;
	
	@RequestMapping(value="/regist", method=RequestMethod.GET)
	public String regist(Users users, HttpSession session) {
		
		UserDetail userdetail=new UserDetail();
		users.setEmail("email");
		users.setPassword("password");
		users.setStatus("正常");
		userdetail.setUser(users);
		users.setUserDetail(userdetail);
		session.setAttribute("users", users);
		this.sessionFactory.getCurrentSession().save(users);
		
		
		return "testRegist";
	}
	
}
