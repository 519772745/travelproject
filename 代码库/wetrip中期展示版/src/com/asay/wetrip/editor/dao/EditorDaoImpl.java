package com.asay.wetrip.editor.dao;

import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.asay.wetrip.entity.Imgs;
import com.asay.wetrip.entity.Tags;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.util.ConfigConsts;
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
		session.delete(travelNote);
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
			session.save(img);
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
		session.save(travelNote);
	}
	/**
	 * 
	 * @Title: tagTraversing   
	 * @Description: TODO 根据特定的tag遍历tag表查询标签
	 * @param: @param tagName 获得的单个标签
	 * @param: @return      
	 * @return: boolean      
	 * @throws
	 */
	public boolean tagTraversing(String tagName) {
		Session session =sessionFactory.getCurrentSession();
		String hql="select count(*) from Tags t where t.tagName =:tagName";
		Query q=session.createQuery(hql);
		q.setParameter("tagName", tagName);
		Long count = (Long)q.uniqueResult();
		System.out.println("dao层的判断count值："+count);
		if(count==1) {
			return true;
		}else {
			return false;
		}
		
	}
	/**
	 * 
	 * @Title: updatetagCount   
	 * @Description: TODO tag表中存在该标签获得tag_count使其加一
	 * @param: @param tag tag对象    
	 * @return: void      
	 * @throws
	 */
	public void updateTagCount(Tags tag) {
		Session session =sessionFactory.getCurrentSession();
		String hql="from Tags t where t.tagName =:tagName";
		Query q=session.createQuery(hql);
		q.setParameter("tagName", tag.getTagName());
		Tags oldtag= (Tags) q.uniqueResult();		
		System.out.println("获得的旧数===="+oldtag.getTagCount());
		tag.setTagCount(oldtag.getTagCount()+1);
		System.out.println("获得的新的值："+tag.getTagCount());
		String hql1="update Tags t set t.tagCount=:tagCount where t.tagName =:tagName";
		Query queryupdate=session.createQuery(hql1);
		queryupdate.setParameter("tagName", tag.getTagName());
		queryupdate.setParameter("tagCount", tag.getTagCount());
		session.clear();
	}
	/**
	 * 
	 * @Title: saveTag   
	 * @Description: TODO tag表中不存在该标签 插入它
	 * @param: @param tag  tag对象    
	 * @return: void      
	 * @throws
	 */
	public void saveTag(Tags tag) {
		Session session =sessionFactory.getCurrentSession();
		session.save(tag);
	}
	
}
