package com.asay.wetrip.cart.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.asay.wetrip.entity.Product;

@Repository
public class CartDao {
	@Resource
	private SessionFactory sessionFactory;
	public List<Product> findById2(String id){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Product where id='"+id+"'");
//		q.setParameter(0,"id");
		return q.list();	
		
	}
}
