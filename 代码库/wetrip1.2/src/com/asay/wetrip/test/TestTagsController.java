package com.asay.wetrip.test;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.Tags;

@Controller
@Transactional
public class TestTagsController {

	@Resource
	private SessionFactory sessionFactory;
	@RequestMapping("/tags")
	public String hello( HttpSession httpsession) {

		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Tags");
		
		Tags tag=new Tags();
	    tag=(Tags) q.list().get(0);
	    Tags tag2=new Tags();
	    tag2.setTagName("天空之镜");
	    tag2.setParentTag(tag);
		this.sessionFactory.getCurrentSession().save(tag2);
		
		
		return "testRegist";
	}

}
