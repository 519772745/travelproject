package com.asay.wetrip.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.asay.wetrip.entity.Users;

@Repository
public class UserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;	
	public Users findByEmail(String email){		
		Session session=this.sessionFactory.getCurrentSession();
		Query<Users> query=session.createQuery("from Users  where email="+email);
		return (Users) query.uniqueResult();		
	}
}
