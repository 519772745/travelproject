package com.asay.wetrip.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	/**
	 * 
	 * @Title: toLogin   
	 * @Description: 点击小人get方式的超链接进入login.jsp页面  
	 * @param: @param model
	 * @param: @return      
	 * @return: 返回到login.jsp页面      
	 * @throws
	 */
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String toLogin(Model model){	
		
		return "login";
	}
	/**
	 * 
	 * @Title: login   
	 * @Description: 用户提交信息post的方式传入，判断用户是否登录成功 
	 * @param: @param users
	 * @param: @param session
	 * @param: @param request
	 * @param: @return      
	 * @return: 登录成功跳转首页，不成功跳转登录页     
	 * @throws
	 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Users users, HttpSession session,HttpServletRequest request) {										
		boolean flag =this.userServiceImpl.getUser(users,request);		
		if(flag) {
		return "index";
		}
		else {
			return "redirect:login";
		}		
	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String toRegister(Model model){		
		return "register";
	}
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@Valid Users users, HttpSession session,HttpServletRequest request,Model model,BindingResult bindingResult) {		
		if(bindingResult.hasErrors()){
			model.addAttribute("users", users);
			return "login";
		}
		else {
			return "login";
		}
		
		
	}
	
}
