package com.asay.wetrip.test;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.CollectTravel;
import com.asay.wetrip.entity.Topic;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;

@Controller
@Transactional
public class TestTopicTravel {
	@Resource
	private SessionFactory sessionFactory;
	@RequestMapping("/topic")
	public String hello( HttpSession httpsession) {
	
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Topic");
		
		Topic topic=new Topic();
		topic=(Topic)q.list().get(0);
		
		TravelNote travelNote  = new TravelNote ();
		
		travelNote.setCity("厦门");
		travelNote.setStatus("公开");
		
		travelNote.setTopic(topic);
		
		this.sessionFactory.getCurrentSession().save(travelNote);
		
		return "testRegist";
	}
}
