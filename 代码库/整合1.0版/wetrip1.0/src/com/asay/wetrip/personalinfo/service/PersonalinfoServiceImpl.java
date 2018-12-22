package com.asay.wetrip.personalinfo.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;
import com.asay.wetrip.personalinfo.dao.PersonalinfoDaoImpl;
import com.asay.wetrip.user.dao.UserDaoImpl;

/**
 * 
 * @ClassName:  PersonalinfoServiceImpl   
 * @Description:个人信息修改之后，验证身份，更改数据库  
 * @author: 王慧
 * @date:   2018年12月7日 下午12:12:47
 */
@Service
public class PersonalinfoServiceImpl {
	@Resource
	private PersonalinfoDaoImpl personalinfoDaoImpl;
	@Resource
	private UserDaoImpl userDaoImpl;
	/**
	 * 
	 * @Title: updateUser   
	 * @Description: 根据用户重新设置的信息，判断用户修改了哪些？把修改个人的信息存入数据库
	 * @param: @param users
	 * @param: @param userDetail
	 * @param: @return      
	 * @return: Users      
	 * @throws
	 */
	public UserDetail updateUserDetail(Users users,UserDetail userDetails) {	
		//邮箱为主键，用户应该不可以修改邮箱
		users.setUserDetail(userDetails);
		//根据用户的邮箱查询现在数据库里面用户的信息
		String email=users.getEmail();
		Users user =this.userDaoImpl.findByEmail(email);//数据库中的原有信息
		UserDetail userDetail=user.getUserDetail();
		if(userDetail.getUsername().equals(userDetails.getUsername())==false||userDetail.getSex().equals(userDetails.getSex())==false||
				userDetail.getProvince().equals(userDetails.getProvince())==false||userDetail.getCity().equals(userDetails.getCity())==false||
				userDetail.getDescription().equals(userDetails.getDescription())==false) {	
			
		int num=this.personalinfoDaoImpl.updateUserDetail(userDetails);
		System.out.println(num);
		}
		userDetail=this.userDaoImpl.findByEmail(email).getUserDetail();
		return userDetail;
	}
	/**
	 * 
	 * @Title: updateUser   
	 * @Description: 用户密码修改的判断，更改数据库 
	 * @param: @param users
	 * @param: @param request
	 * @param: @return      
	 * @return: Users      
	 * @throws
	 */
	public Users updateUser(Users users,HttpServletRequest request) {
		//用户输入的初始密码
		String password=users.getPassword();
		//用session获取当前用户的email
		String email=(String) request.getSession().getAttribute("userEmail");		
		users.setEmail(email);
		//数据库中的密码
		String passwordDB=this.userDaoImpl.findByEmail(email).getPassword();
		//输入的密码
		String password1=request.getParameter("password1");
		String password2=request.getParameter("password2");
		if(password.equals(passwordDB)) {
			if(password1.equals(password2)) {
				password=password1;
				users.setPassword(password1);
				int num=this.personalinfoDaoImpl.updateUserPwd(users);
				System.out.println(num);
			}
				
		}		
		return users;
	}
	
}
