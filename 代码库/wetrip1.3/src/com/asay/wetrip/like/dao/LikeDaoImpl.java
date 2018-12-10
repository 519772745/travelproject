package com.asay.wetrip.like.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
/**
 * 
 * @ClassName:  LikeDaoImpl   
 * @Description:点赞功能dao层
 * @author: 倪泽苒
 * @date:   2018年12月6日 上午10:15:38
 */

@Repository
@Transactional
public class LikeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;


}
