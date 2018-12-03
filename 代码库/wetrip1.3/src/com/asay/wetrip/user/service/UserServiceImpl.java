package com.asay.wetrip.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
import com.asay.wetrip.entity.Users;
import com.asay.wetrip.user.dao.UserDaoImpl;

@Service
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;	
	/**
	 * 
	 * @Title: getUser   
	 * @Description: 判断用户邮箱格式是否正确，密码是否正确，验证码是否正确
	 * @param: @param email
	 * @param: @return      
	 * @return: boolean      
	 * @throws
	 */
	public boolean getUser(Users users,HttpServletRequest request) {
		String email=users.getEmail();
		Users user=this.userDaoImpl.findByEmail(email);
		String password2=users.getPassword();		
		String password1=user.getPassword();
		
		if(password1.equals(password2)) {
			return true;
		}
		else {
		return false;
		}
	}
					
}