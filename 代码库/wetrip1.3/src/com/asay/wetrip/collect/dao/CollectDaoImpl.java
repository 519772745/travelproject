package com.asay.wetrip.collect.dao;


import java.sql.Timestamp;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.CollectTravel;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.Users;

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
//根据id查游记
public TravelNote findTravelById(int id) {
	Session session=this.sessionFactory.getCurrentSession();
	Query q=session.createQuery("from TravelNote tn where tn.id=:id").setParameter("id", id);
	return  (TravelNote)q.list().get(0);
}
//用户是否收藏了某张游记，true表示有，false没有
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
//添加收藏项
	public void addCollectNote(Users user,int travelid) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from TravelNote tn where tn.id=:id").setParameter("id", travelid);
		CollectTravel ct=new CollectTravel();
		ct.setCollectTime(new Timestamp(System.currentTimeMillis()));
		ct.setStatus("收藏");
		ct.setUserDetail(user.getUserDetail());
		TravelNote tn= (TravelNote)q.list().get(0);
		ct.setTravelNote(tn);
		tn.getCollectTravels().add(ct);
		user.getUserDetail().getCollectTravels().add(ct);
		session.save(ct);
		session.save(tn);
		session.save(user);
	}
//改变收藏状态
	public void updateCollectNote(Users user,int travelid) {
		Session session=this.sessionFactory.getCurrentSession();
//todo		user.getUserDetail().getCollectTravels()
	}
	
}

