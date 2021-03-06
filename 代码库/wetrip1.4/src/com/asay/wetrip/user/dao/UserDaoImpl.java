package com.asay.wetrip.user.dao;

import java.sql.Timestamp;
import java.util.List;

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
 * @ClassName:  UserDaoImpl   
 * @Description:用户的增加、查询   
 * @author: 王慧
 * @date:   2018年12月4日 下午5:13:30
 */
@Repository
@Transactional(readOnly=false)
public class UserDaoImpl {
	@Resource	
	private SessionFactory sessionFactory;		
		/**
		 * 
		 * @Title: findByEmail   
		 * @Description: 根据邮箱地址查找得到一个用户列表  
		 * @param: @param email
		 * @param: @return      
		 * @return: Users      
		 * @throws
		 */
		public  List<Users> findByEmail(String email) {
			Session session=this.sessionFactory.getCurrentSession();			
			Query<Users> q=session.createQuery(" from Users u where u.email=:email ").setParameter("email", email);
			return q.list();			
			}

	
		/**
		 * 
		 * @Title: insertUser   
		 * @Description: 注册时的邮箱与密码的存入，同时用户详情表插入默认值   
		 * @param: @param users      
		 * @return: void      
		 * @throws
		 */
		public void insertUser(Users users){
			Session session=this.sessionFactory.getCurrentSession();			
			UserDetail userDetail=new UserDetail();									
			//用户名
			userDetail.setUsername(users.getEmail());
			//默认头像
			userDetail.setUserhead("image/avatar/avatar4.png");
			//性别
			userDetail.setSex("秘密");
			//个人说明
			userDetail.setDescription("这个人很懒，什么都没有留下");
			//注册时间
			userDetail.setRegistTime(new Timestamp(System.currentTimeMillis()));			
			users.setUserDetail(userDetail);
			userDetail.setUser(users);
			session.save(users);			
		}

}
