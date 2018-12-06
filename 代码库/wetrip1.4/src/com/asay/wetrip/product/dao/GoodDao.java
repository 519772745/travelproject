package com.asay.wetrip.product.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.asay.wetrip.entity.Product;


@Repository
public class GoodDao {

	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * 
	 * @Title: getCakeInformation   
	 * @Description:  *(公有)getCakeInformation方法：给出蛋糕的id，查询出cake的相关信息
	 * @param: @param cakesID
	 * @param: @return      
	 * @return: Product      
	 * @throws
	 */
	public Product getCakeInformation(int cakesID) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Cakes where id = :cakesID");
		query.setParameter("cakesID", cakesID);
		return (Product) query.uniqueResult();
	}
	/**
	 * 
	 * @Title: findById   
	 * @Description: 按照id查找的商品的列表
	 * @param: @param id
	 * @param: @return      
	 * @return: Product      
	 * @throws
	 */
	public List<Product> findById2(String id){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Product where id='"+id+"'");
//		q.setParameter(0,"id");
		return q.list();	
		
	}
}
