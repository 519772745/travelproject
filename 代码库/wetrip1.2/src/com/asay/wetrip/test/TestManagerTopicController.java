package com.asay.wetrip.test;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.Manager;
import com.asay.wetrip.entity.Topic;
import com.asay.wetrip.entity.TravelNote;

@Controller
@Transactional
public class TestManagerTopicController {
	@Resource
	private SessionFactory sessionFactory;
	@RequestMapping("/mt")
	public String hello( HttpSession httpsession) {
	
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Manager");
		
		 Manager m =new  Manager();
		Topic topic=new Topic();
		m=( Manager)q.list().get(0);
		
		topic.setDescription("这是一个描述");
		topic.setManager(m);
		
		this.sessionFactory.getCurrentSession().save(topic);
		
		return "testRegist";
	}
}
