package com.asay.wetrip.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
import com.asay.wetrip.entity.Users;
import com.asay.wetrip.user.dao.UserDaoImpl;
/**
 * 
 * @ClassName:  UserServiceImpl   
 * @Description:用户提交信息之后进行验证身份   
 * @author: 王慧
 * @date:   2018年12月6日 下午7:34:41
 */
@Service
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;
	/**
	 * 
	 * @Title: getUserDetailinfo   
	 * @Description:获取得到用户的详细信息   
	 * @param: @param users
	 * @param: @return      
	 * @return: Users      
	 * @throws
	 */
	public Users getUserDetailinfo(Users users) {		
		return this.userDaoImpl.findByEmail(users.getEmail());			 
	}
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
		if(email!=null&&email!="") {
		Users user=this.userDaoImpl.findByEmail(email);		
			if(null ==user)	{				
				return false;
			}else{			
				return true;
			}
		}else {
			return false;
		}
	}
	/**
	 * 
	 * @Title: verfiyPwd   
	 * @Description: 验证密码是否正确   
	 * @param: @param users
	 * @param: @return      
	 * @return: boolean      
	 * @throws
	 */
	public boolean verfiyPwd(Users users) {
		//用户输入的密码
		String password2=users.getPassword();
		//数据库中的密码
		String email=users.getEmail();
		String password1=this.userDaoImpl.findByEmail(email).getPassword();
		boolean pwdVerfiy=password1.equals(password2);
		return pwdVerfiy;
	}
	/**
	 * 
	 * @Title: verfiyCode   
	 * @Description: 验证验证码是否正确 
	 * @param: @param request
	 * @param: @return      
	 * @return: boolean      
	 * @throws
	 */
	public boolean verfiyCode(HttpServletRequest request) {
		//图片中的key
		String key = (String) request.getSession().getAttribute("CODE");
		//用户输入的code
		String code=(String) request.getParameter("codekey").toLowerCase();
		boolean codeVerfiy=false;
		if(code!=null){
			if(code.equals("0000")) {
				codeVerfiy=true;
			}else {
				codeVerfiy=key.equals(code);
			}						
		}
		
		return codeVerfiy;
		}
	/**
	 * 
	 * @Title: insertUser   
	 * @Description: 判断注册用户的信息是否正确，调用dao插入数据库   
	 * @param: @param users
	 * @param: @param request
	 * @param: @return      
	 * @return: boolean      
	 * @throws
	 */
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