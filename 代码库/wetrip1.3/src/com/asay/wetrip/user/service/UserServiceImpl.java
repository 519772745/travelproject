package com.asay.wetrip.user.service;

import java.util.List;

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
	 * @Description: 根据得到的用户列表，判断是否存在该用户
	 * @param: @param email
	 * @param: @return      
	 * @return: boolean      
	 * @throws
	 */
	public boolean getUser(Users users) {
		String email=users.getEmail();
		if(email!=null) {
		List<Users> userList=this.userDaoImpl.findByEmail(email);		
			if(null ==userList || userList.size() ==0 )	{				
				return false;
			}else{			
				return true;
			}
		}else {
			return false;
		}
	}
	public boolean verfiyPwd(Users users) {
		//用户输入的密码
		String password2=users.getPassword();
		//数据库中的密码
		String email=users.getEmail();
		String password1=this.userDaoImpl.findByEmail(email).get(0).getPassword();
		boolean pwdVerfiy=password1.equals(password2);
		return pwdVerfiy;
	}
	public boolean verfiyCode(HttpServletRequest request) {
		//图片中的key
		String key = (String) request.getSession().getAttribute("CODE");
		//用户输入的code
		String code=(String) request.getParameter("codekey").toLowerCase();
		boolean codeVerfiy=false;
		if(code!=null){
			codeVerfiy=key.equals(code);						 		 			
		}
		return codeVerfiy;
		}
	public boolean insertUser(Users users,HttpServletRequest request) {
		String email=users.getEmail();		
		//用户输入的第一个密码
		String password1=request.getParameter("password1");
		//用户输入的第二个密码
		String password2=request.getParameter("password2");
		if(email!=null&&password1!=null&&password2!=null) {			
				users.setPassword(password1);
			this.userDaoImpl.insertUser(users);
		}		
		return true;
	}
					
}