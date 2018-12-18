package com.asay.wetrip.personalinfo.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;

/**
 * 
 * @ClassName:  PersonalinfoDaoImpl   
 * @Description:实现个人信息的修改   
 * @author: 王慧
 * @date:   2018年12月7日 下午12:16:17
 */
@Repository
@Transactional(readOnly=false)
public class PersonalinfoDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 
	 * @Title: updateUserDetail   
	 * @Description: 资料更改的个人详细数据在数据库中的修改  
	 * @param: @param userDetail
	 * @param: @return      
	 * @return: int      
	 * @throws
	 */
	public int updateUserDetail(UserDetail userDetail) {		
		Session session=this.sessionFactory.getCurrentSession();
		//判断是否修改，如果修改了就把 数据修改了，如果没有修改还是原来的值，然后把这个对象的所有信息展示在页面上
		Query query=session.createQuery("update UserDetail set username=:username,sex=:sex,province=:province,city=:city,description=:description where email='"+userDetail.getEmail()+"'");
		query.setParameter("username", userDetail.getUsername());	
		query.setParameter("sex", userDetail.getSex());
		query.setParameter("province", userDetail.getProvince());
		query.setParameter("city", userDetail.getCity());
		query.setParameter("description", userDetail.getDescription());
		int num=query.executeUpdate();
		return num;		
	}
	/**
	 * 
	 * @Title: updateUserPwd   
	 * @Description:用户密码修改时，数据库中密码修改 
	 * @param: @param users
	 * @param: @return      
	 * @return: int      
	 * @throws
	 */
	public int updateUserPwd(Users users) {
		Session session=this.sessionFactory.getCurrentSession();
		Query query=session.createQuery("update Users set password=:password where email=:email");
		query.setParameter("password", users.getPassword());
		query.setParameter("email", users.getEmail());
		int num=query.executeUpdate();
		return num;	
	}
}
