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
import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;

/**
 * 
 * @ClassName:  CollectDaoImpl   
 * @Description:收藏功能
 * @author:倪泽苒
 * @date:   2018年12月5日 上午8:59:11
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
	return (TravelNote)q.list().get(0);
}
	/**
	 * 
	 * <b>isCollect</b>   
	 * <p>查询游记是否已被收藏
	 * <p>若用户未登录，返回false；若用户已收藏，则返回true；未收藏返回false
	 * @param travelNote 游记
	 * @param userDetail 用户信息   
	 * @return Boolean 用户是否已经收藏   
	 */
	public Boolean isCollect(TravelNote travelNote,UserDetail userDetail ) {
		if(userDetail==null) {
			return false;
		}
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CollectTravel where travelNote=:travelNote and userDetail = :userDetail");
		q.setParameter("travelNote", travelNote);
		q.setParameter("userDetail", userDetail);
		if(q.uniqueResult()!=null) {
			return true;
		}
		else {
			return false;
		}
//这个是已经废弃的写法
//		for(CollectTravel ct:tn.getCollectTravels()) {
//			if(ct.getUserDetail().getEmail().equals(email)) {
//				if("收藏".equals(ct.getStatus())) {
//				return true;
//				}
//			}
//		}
//		return false;
	}
//添加收藏项
	public void addCollectNote(UserDetail userDetail,TravelNote travelNote) {
		Session session=this.sessionFactory.getCurrentSession();
		CollectTravel collectTravel=new CollectTravel();
		collectTravel.setCollectTime(new Timestamp(System.currentTimeMillis()));
		collectTravel.setStatus("收藏");
		collectTravel.setTravelNote(travelNote);
		collectTravel.setUserDetail(userDetail);

		
		session.save(collectTravel);
	}

	//删除收藏
	public void removeCollectNote(UserDetail userDetail,TravelNote travelNote) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("delete from CollectTravel where userDetail = :userDetail and travelNote = :travelNote");
		q.setParameter("userDetail", userDetail);
		q.setParameter("travelNote", travelNote);
		q.executeUpdate();
	}
	
}

