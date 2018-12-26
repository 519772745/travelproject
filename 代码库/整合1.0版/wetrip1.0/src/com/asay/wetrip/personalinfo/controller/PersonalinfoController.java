package com.asay.wetrip.personalinfo.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value="/personalinfo",method=RequestMethod.GET)
	public String toPersoninfo(HttpServletRequest request,HttpSession httpSession) {
		//根据session获取得到用户的详细信息，jsp页面展示即可	
		UserDetail userDetail=(UserDetail) httpSession.getAttribute("userDetail");				
		request.setAttribute("userDetail", userDetail);
		return "personalinfo";
	}
	/**
	 * 
	 * @Title: personDetail   
	 * @Description: 用户登录之后对自己的个人详细信息的设置之后，提交到这里进行处理，并修改数据库信息
	 * @param: @param httpSession
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping(value="/personalDetail",method=RequestMethod.POST)
	public String personDetail(Users users,HttpSession httpSession,HttpServletRequest request) {
		//邮箱为主键，应该不能修改
		//更新之后的该用户的详细信息
		UserDetail userDetail=(UserDetail) httpSession.getAttribute("userDetail");		
		userDetail.setUsername(request.getParameter("username"));
		userDetail.setSex(request.getParameter("sex"));;
		userDetail.setProvince(request.getParameter("province"));
		userDetail.setCity(request.getParameter("city"));
		userDetail.setDescription(request.getParameter("description"));		
		this.pesonalinfoServiceImpl.updateUserDetail(userDetail);	
//		System.out.println(userDetail.getUserhead());
//		httpSession.removeAttribute("userDetail");		
//		httpSession.setAttribute("userDetail", userDetail);			
		return "redirect:/personalinfo";
	}
	/**
	 * 
	 * @Title: password   
	 * @Description: 密码修改时提交的信息提交到这个方法进行处理   
	 * @param: @param users
	 * @param: @param httpSession
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@ResponseBody
	@RequestMapping(value="/personalPwd",method=RequestMethod.POST)	
	public String password(HttpSession httpSession,HttpServletRequest request,@RequestParam("password") String password,@RequestParam("password1") String password1,@RequestParam("password2") String password2) {
		//密码修改时提交的信息
		Users users=(Users) httpSession.getAttribute("user");
		System.out.println(password);
		System.out.println(password1);
		System.out.println(password2);
		users=this.pesonalinfoServiceImpl.updateUser(users,password,password1,password2);	
		if(users!=null) {
		httpSession.setAttribute("user", users);
		return "修改成功了";
		}else {
			return "修改失败了";
		}
	}


}
