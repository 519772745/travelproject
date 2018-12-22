package com.asay.wetrip.editor.dao;

import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.Imgs;
import com.asay.wetrip.entity.TagTravelNote;
import com.asay.wetrip.entity.Tags;
import com.asay.wetrip.entity.TravelNote;
/**
 * 
 * <b>EditorDaoImpl</b>
 *
 * <p>负责将editor页面插入数据库的dao层
 *
 * @author 孙亦璇 and 赵旭
 * @date 2018年12月6日上午10:24:47
 * @Version 0.0.1
 */

@Repository
@Transactional
public class EditorDaoImpl {
	@Resource
	private SessionFactory sessionFactory;	
	/**
	 * <b>delAllPhotos</b>   
	 * <p>根据传来的游记，删除其所有配图的dao
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
	 * 
	 * @Title: saveTravelNotes   
	 * @Description: TODO 存游记到数据库
	 * @param: @param travelNote      
	 * @return: void      
	 * @throws
	 */
	public void saveTravelNotes(TravelNote travelNote) {
		Session session =sessionFactory.getCurrentSession();
		session.saveOrUpdate(travelNote);
	}
	/**
	 * 
	 * @Title: tagTraversing   
	 * @Description: TODO 根据特定的tag遍历tag表查询标签 存在与否
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
		System.out.println(tagName+"dao层的判断count值："+count);
		if(count==1) {
			return true;
		}else {
			return false;
		}
		
	}
	/**
	 * 
	 * @Title: updatetagCount   
	 * @Description: TODO 通过传过来的tag,使该标签tag_count使其加一
	 * @param: @param tag tag对象    
	 * @return: void      
	 * @throws
	 */
	public void updateCount(Tags tag) {
		Session session =sessionFactory.getCurrentSession();
		Query q=session.createQuery("update Tags set tagCount=:count where id=:id");
		q.setParameter("id",tag.getId());
		q.setParameter("count",tag.getTagCount()+1);
		q.executeUpdate();

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
//		System.out.println(tag.getTagName()+"======自定义的");
		session.save(tag);
	}
/**
 * 	
 * @Title: findMorenTag   
 * @Description: 查找正要发表的游记选择的分区标签实体
 * @param: @param morentag
 * @param: @return      
 * @return: Tags      
 * @throws
 */
	public Tags findMorenTag(String morentag) {
		Session session =sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Tags tn where tn.tagName=:morentag").setParameter("morentag",morentag);	
		return (Tags)q.uniqueResult();
	}
/**	
 * 
 * @Title: findFreeTag   
 * @Description: 查找指定分区标签下的某个子标签实体 
 * @param: @param tagName
 * @param: @param morentag
 * @param: @return      
 * @return: Tags      
 * @throws
 */
	public Tags findFreeTag(String tagName,Tags morentag) {
		Session session =sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Tags tn where tn.tagName=:tagname and tn.parentTag=:moren").setParameter("tagname",tagName).setParameter("moren",morentag);	
		return (Tags)q.uniqueResult();
	}
	//ttn连接项的插入库操作
	public void saveTagTravelNote(TagTravelNote ttn) {
		Session session =sessionFactory.getCurrentSession();
		session.save(ttn);
	} 
	
	
}
