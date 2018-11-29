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
import com.asay.wetrip.entity.UserDetail;

@Controller
@Transactional
public class TestCollectController {
	@Resource
	private SessionFactory sessionFactory;
	@RequestMapping("/collect")
	public String hello( HttpSession httpsession) {
	
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from UserDetail");
		
		UserDetail ud=new UserDetail();
		ud=(UserDetail)q.list().get(1);
		CollectTravel collecttravel = new CollectTravel();
		
		collecttravel.setStatus("收藏");
		collecttravel.setUserDetail(ud);
		
		this.sessionFactory.getCurrentSession().save(collecttravel);
		
		return "testRegist";
	}
	

}
