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
import com.asay.wetrip.entity.Manager;
import com.asay.wetrip.entity.Topic;
import com.asay.wetrip.entity.TravelNote;

@Controller
@Transactional
public class TestTravelCollectController {
	@Resource
	private SessionFactory sessionFactory;
	@RequestMapping("/ct")
	public String hello( HttpSession httpsession) {
	
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from TravelNote");
		
		TravelNote t =new  TravelNote();
		CollectTravel ct=new CollectTravel();
		
		t=(TravelNote)q.list().get(0);
		
		ct.setStatus("收藏");
		ct.setTravelNote(t);
		
		this.sessionFactory.getCurrentSession().save(ct);
		
		return "testRegist";
	}
}
