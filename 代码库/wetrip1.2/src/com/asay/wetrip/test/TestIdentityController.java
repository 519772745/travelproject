//package com.asay.wetrip.test;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpSession;
//import javax.transaction.Transactional;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.query.Query;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.asay.wetrip.entity.CollectTravel;
//import com.asay.wetrip.entity.Identity;
//import com.asay.wetrip.entity.Manager;
//import com.asay.wetrip.entity.UserDetail;
//
//@Controller
//@Transactional
//public class TestIdentityController {
//	@Resource
//	private SessionFactory sessionFactory;
//	@RequestMapping("/identity")
//	public String hello( HttpSession httpsession) {
//	
//		
//		Session session=this.sessionFactory.getCurrentSession();
//		Query q=session.createQuery("from Identity");
//		
//		Identity identity=new Identity();
//		identity=(Identity)q.list().get(0);
//		
//		Manager manager = new Manager();
//		manager.setIdentities(identity);
//		
//		
//		this.sessionFactory.getCurrentSession().save(manager);
//		
//		return "testRegist";
//	}
//}
