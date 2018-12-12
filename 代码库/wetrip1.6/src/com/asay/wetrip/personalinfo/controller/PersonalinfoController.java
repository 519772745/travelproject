package com.asay.wetrip.personalinfo.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	public String toPersoninfo() {
		//根据session获取得到用户的详细信息，jsp页面展示即可
		return "personalinfo";
	}
	/**
	 * 
	 * @Title: personinfo   
	 * @Description: 用户登录之后对自己的个人详细信息的设置之后，提交到这里进行处理，并修改数据库信息
	 * @param: @param httpSession
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping(value="/personalDetail",method=RequestMethod.POST)
	public String personDetail(Users users,UserDetail userDetails,HttpSession httpSession,HttpServletRequest request) {
		//邮箱为主键，应该不能修改
		//更新之后的该用户的详细信息
		UserDetail userDetail=this.pesonalinfoServiceImpl.updateUserDetail(users, userDetails);	
		System.out.println(userDetail.getUserhead());
		httpSession.setAttribute("userDetail", userDetail);		
		return "personalinfo";
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
	@RequestMapping(value="/personalPwd",method=RequestMethod.POST)	
	public String password(Users users,HttpSession httpSession,HttpServletRequest request) {
		//密码修改时提交的信息
		System.out.println(users.getPassword());
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		System.out.println(password1);
		System.out.println(password2);
		this.pesonalinfoServiceImpl.updateUser(users, request);		
		return "redirect:personalinfo";
	}
	/**
	 * 
	 * @Title: userhead   
	 * @Description: 头像修改的信息提交到这个方法进行处理  
	 * @param: @param file
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping(value="/personalImg",method=RequestMethod.POST)
	public String userhead(@RequestParam(value="upfile") MultipartFile file,HttpServletRequest request) {
		String path=request.getServletContext().getRealPath("/");
		try {
			FileCopyUtils.copy(file.getBytes(), 
					new File(path+"/upload",file.getOriginalFilename()));
		} catch (IOException e) {
			e.printStackTrace();
		}			
		return "personalinfo";
	}
}
