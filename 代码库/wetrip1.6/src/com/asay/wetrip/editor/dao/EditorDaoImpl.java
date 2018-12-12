package com.asay.wetrip.editor.dao;

import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.asay.wetrip.entity.Imgs;
import com.asay.wetrip.entity.TravelNote;
/**
 * 
 * <b>EditorDaoImpl</b>
 *
 * <p>负责将editor页面插入数据库的dao层
 *
 * @author 孙亦璇
 * @date 2018年12月6日上午10:24:47
 * @Version 0.0.1
 */

@Repository
public class EditorDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	/**
	 * <b>delAllPhotos</b>   
	 * <p>根据传来的游记，删除其所有配图的dao
	 *
	 * @param travelNote 游记   
	 * @return: void      
	 */
	public void delAllPhotos(TravelNote travelNote) {
		Session session =sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		Query query=session.createQuery("delete Imgs where travelNote=:theTravelNote");
		query.setParameter("theTravelNote", travelNote);
		query.executeUpdate();
		transaction.commit();
	}
	
	/**
	 * <b>savePhotos</b>   
	 * <p>根据传来的img的set，将set存入图片表的dao'
	 *
	 * @param imgs  图片的set集合
	 * @return: void      
	 */
	public void savePhotos(Set<Imgs> imgs) {
		Session session =sessionFactory.getCurrentSession();
		for (Imgs img : imgs) {
			Transaction transaction=session.beginTransaction();
			session.save(img);
			transaction.commit();
		}
	}
	
	/**
	 * <b>saveTravelNotes</b>   
	 * <p>将传过来的游记存入游记表的dao
	 *
	 * @param travelNote 游记     
	 * @return: void      
	 */
	public void saveTravelNotes(TravelNote travelNote) {
		Session session =sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.save(travelNote);
		transaction.commit();
	}
}
