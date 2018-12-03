package com.asay.wetrip.user.dao;

import java.sql.Timestamp;
import javax.annotation.Resource;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;

@Repository
@Transactional
public class UserDaoImpl {
	@Resource	
	private SessionFactory sessionFactory;						
		/**
		 * 
		 * @Title: findByEmail   
		 * @Description: 根据邮箱地址查找该用户  
		 * @param: @param email
		 * @param: @return      
		 * @return: Users      
		 * @throws
		 */
		public  Users findByEmail(String email) {
			Session session=this.sessionFactory.getCurrentSession();			
			Query<Users> q=session.createQuery(" from Users u where u.email=:email ").setParameter("email", email);
			return (Users) q.uniqueResult();			
			}

	//注册时的邮箱与密码的存入，同时用户详情表插入默认值
		public void insertUser(Users users){
			Session session=this.sessionFactory.getCurrentSession();
			UserDetail ud=users.getUserDetail();
			ud.setUsername(users.getEmail());
			//默认头像
			ud.setUserhead("image/avatar/avatar4.png");
			ud.setSex("秘密");
			ud.setDescription("这个人很懒，什么都没有留下");
			//注册时间
			ud.setRegistTime(new Timestamp(System.currentTimeMillis()));
		}

}
