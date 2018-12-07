package com.asay.wetrip.personalinfo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;
import com.asay.wetrip.personalinfo.service.PersonalinfoServiceImpl;
/**
 * 
 * @ClassName:  PersonalinfoController   
 * @Description:个人信息的查看和设置   
 * @author: 王慧
 * @date:   2018年12月7日 上午11:02:12
 */
@Controller
public class PersonalinfoController {
	@Resource
	private PersonalinfoServiceImpl pesonalinfoServiceImpl;
	/**
	 * 
	 * @Title: toPersoninfo   
	 * @Description: 用户登录之后可以进行个人信息的设置，进入个人信息页  
	 * @param: @param httpSession
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping(value="personalinfo",method=RequestMethod.GET)
	public String toPersoninfo(HttpSession httpSession,HttpServletRequest request) {
		Users user=(Users) httpSession.getAttribute("user");
		if(user!=null) {
		request.setAttribute("email", user.getEmail());
		request.setAttribute("password", user.getPassword());
		request.setAttribute("userhead", user.getUserDetail().getUserhead());
		request.setAttribute("username", user.getUserDetail().getUsername());
		request.setAttribute("sex", user.getUserDetail().getSex());
		request.setAttribute("province", user.getUserDetail().getProvince());
		request.setAttribute("city", user.getUserDetail().getCity());
		request.setAttribute("description", user.getUserDetail().getDescription());		
		}
		return "personalinfo";
	}
	/**
	 * 
	 * @Title: personinfo   
	 * @Description: 用户登录之后对自己的个人信息的设置之后，提交到这里进行处理，并修改数据库信息
	 * @param: @param httpSession
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping(value="personalinfo",method=RequestMethod.POST)
	public String personDetail(Users users,UserDetail userDetails,HttpSession httpSession,HttpServletRequest request) {
		//邮箱为主键，应该不能修改
//				System.out.println(users.getEmail());
//				System.out.println(userDetails.getUsername());
//				System.out.println(userDetails.getSex());
//				System.out.println(userDetails.getProvince());
//				System.out.println(userDetails.getCity());
//				System.out.println(userDetails.getDescription());
		//更新之后的该用户的详细信息
		UserDetail userDetail=this.pesonalinfoServiceImpl.updateUserDetail(users, userDetails);
		Users user=userDetail.getUser();
		httpSession.setAttribute("user", user);
		request.setAttribute("email", users.getEmail());
		request.setAttribute("password", users.getPassword());
		request.setAttribute("userhead", userDetail.getUserhead());
		request.setAttribute("username", userDetail.getUsername());
		request.setAttribute("sex", userDetail.getSex());
		request.setAttribute("province", userDetail.getProvince());
		request.setAttribute("city", userDetail.getCity());
		request.setAttribute("description", userDetail.getDescription());
		return "personalinfo";
	}
	public String password(Users users,HttpSession httpSession,HttpServletRequest request) {
		//密码修改时提交的信息
		System.out.println(users.getPassword());
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		System.out.println(password1);
		System.out.println(password2);
		this.pesonalinfoServiceImpl.updateUser(users, request);
		return "personalinfo";
	}
}
