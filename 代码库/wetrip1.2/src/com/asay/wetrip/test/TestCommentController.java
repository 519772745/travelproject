package com.asay.wetrip.test;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.Comment;


@Controller
@Transactional
public class TestCommentController {
	@Resource
	private SessionFactory sessionFactory;
	@RequestMapping("/comment")
	public String hello( HttpSession httpsession) {

		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Comment");
		
		Comment comment=new Comment();
	    comment=(Comment) q.list().get(0);
	    Comment comment2=new Comment();
	    comment2.setCommentContent("评论a！！！");
	    comment2.setParentComment(comment);
		this.sessionFactory.getCurrentSession().save(comment2);
		
		
		return "testRegist";
	}
}
