package com.asay.wetrip.report.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.TravelNote;
/**
 * 
 * @ClassName:  ReportDaoImpl   
 * @Description:举报功能的数据库update  
 * @author: 倪泽苒
 * @date:   2018年12月4日 下午9:51:50
 */
@Repository
@Transactional
public class ReportDaoImpl {
@Resource
private SessionFactory sessionFactory;
//举报一次，插入操作
public void addReport(int travelid,int add) {
	Session session=this.sessionFactory.getCurrentSession();
	Query q=session.createQuery("from TravelNote tn where tn.id=:id").setParameter("id", travelid);
	TravelNote tn=(TravelNote)q.list().get(0);
	int count=tn.getReportcount()+add;
	tn.setReportcount(count);
	session.save(tn);
}

}
