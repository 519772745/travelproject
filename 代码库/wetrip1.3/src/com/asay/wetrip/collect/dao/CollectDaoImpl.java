package com.asay.wetrip.collect.dao;


import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.CollectTravel;
import com.asay.wetrip.entity.TravelNote;

/**
 * 
 * @ClassName:  CollectDaoImpl   
 * @Description:收藏功能
 * @author:倪泽苒
 * @date:   2018年12月5日 上午8:59:11
 */
@Repository
@Transactional
public class CollectDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
//用户是否收藏了某张游记
	public Boolean isCollect(String email,TravelNote tn ) {
		Session session=this.sessionFactory.getCurrentSession();
		//Query q=session.createQuery("from TravelNote tn where tn.id=:id").setParameter("id", travelid);
		for(CollectTravel ct:tn.getCollectTravels()) {
			if(ct.getUserDetail().getEmail().equals(email)) {
				if(ct.getStatus()=="收藏")
				return true;
				else {
				return false;
				}
			}
		}
		return false;
	
	}
}

