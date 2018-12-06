package com.asay.wetrip.user.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.asay.wetrip.entity.Users;
import com.asay.wetrip.user.service.UserServiceImpl;


@Controller
@Transactional

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
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public String toLogin( HttpSession httpSession){
		httpSession.removeAttribute("userError");
		httpSession.removeAttribute("pwdError");
		httpSession.removeAttribute("codeError");
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
	@RequestMapping(value="/user/login",method=RequestMethod.POST)
	public String login(Users users, HttpSession httpSession,HttpServletRequest request) {
		boolean userVerfiy =this.userServiceImpl.getUser(users);											
		if (userVerfiy) { // 若用户存在	
			boolean codeVerfiy =this.userServiceImpl.verfiyCode(request);
			if (codeVerfiy) {//验证码正确
				request.getSession().removeAttribute("CODE");
				boolean pwdVerfiy =this.userServiceImpl.verfiyPwd(users);
				if (!pwdVerfiy) {//密码不正确
					httpSession.removeAttribute("userError");
					httpSession.removeAttribute("codeError");
					httpSession.setAttribute("pwdError",true);// 密码错误
					return "login";
				} else {
					// 通过
					httpSession.setAttribute("userEmail", users.getEmail()); // 保存用户账号信息
					
					return "main";
				}
			} else {//验证码不正确
				httpSession.removeAttribute("userError");
				httpSession.setAttribute("codeError",true); // 验证码错误
				return "login";
			}
		} else {
			httpSession.setAttribute("userError",true); // 用户名不存在
			return "login";
		}
}
		//跳转到注册界面
		@RequestMapping(value="/register",method=RequestMethod.GET)
		public String toRegist(HttpSession httpSession) {
			httpSession.removeAttribute("emailError");
			httpSession.removeAttribute("userError");
			httpSession.removeAttribute("pwdError");
			httpSession.removeAttribute("codeError");
			return "register";
		}
		//注册插入数据库用户信息
		@RequestMapping(value="/register" ,method=RequestMethod.POST)
		public String regist(Users users,HttpServletRequest request,HttpSession httpSession) {	
			//根据用户输入邮箱判断是否存在该用户
			boolean userVerfiy =this.userServiceImpl.getUser(users);											
			if (!userVerfiy) { // 若用户不存在
				String email=users.getEmail();
				boolean flag = false;
				String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		        Pattern regex = Pattern.compile(check);
		        Matcher matcher = regex.matcher(email);
		        flag = matcher.matches();				
				if(flag) {//邮箱格式
					boolean codeVerfiy =this.userServiceImpl.verfiyCode(request);
					if (codeVerfiy) {//验证码正确
						request.getSession().removeAttribute("CODE");
						boolean pwdVerfiy =request.getParameter("password1").equals(request.getParameter("password2"));
						if (!pwdVerfiy) {
							httpSession.removeAttribute("userError");
							httpSession.removeAttribute("codeError");
							httpSession.setAttribute("pwdError",true);// 密码不一致
							return "register";
						} else {
							this.userServiceImpl.insertUser(users, request);
							//密码一致，插入数据						
							return "redirect:login";
						}
					} else {
						httpSession.removeAttribute("userError");
						httpSession.removeAttribute("emailError");
						httpSession.setAttribute("codeError",true); // 验证码错误
						return "register";
					}
				}else {
					httpSession.removeAttribute("userError");
					httpSession.setAttribute("emailError",true); // 邮箱格式不正确
					return "register";
				}
				
			} else {
				
				httpSession.setAttribute("userError",true); // 用户存在
				return "register";
			}
		}
		//注销用户
		@RequestMapping("/user/cancel")
		public String cancel(HttpServletRequest request) {
			//根据session里面存取的用户的email判断，把该用户的session失效即可注销登录
			HttpSession session=request.getSession();
			if(session.getAttribute("userEmail")!=null) {
				session.invalidate();
			}
			//注销之后跳转到首页
			return "main";
		}
		@RequestMapping("cancel")
		public String cancel2(HttpServletRequest request) {
			//根据session里面存取的用户的email判断，把该用户的session失效即可注销登录
			HttpSession session=request.getSession();
			if(session.getAttribute("userEmail")!=null) {
				session.invalidate();
			}
			//注销之后跳转到首页
			return "main";
		}
}
