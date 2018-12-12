package com.asay.wetrip.zone.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.asay.wetrip.entity.CollectTravel;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;

/**
 * 
 * @ClassName:  ZoneDaoImpl   
 * @Description:TODO(实现个人空间页的相关查询功能的dao层)   
 * @author: 户子超
 * @date:   2018年12月10日 下午2:23:48
 */
@Repository
public class ZoneDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 
	 * @Title: findTravelByUsername   
	 * @Description: TODO(根据用户昵称分页查询该用户写的所有正常状态的游记并按时间排序)   
	 * @param: @param pageNum  个人空间页页码
	 * @param: @param pageSize 个人空间页每页显示的游记个数
	 * @param: @param username 用户昵称
	 * @param: @return   返回得到的游记列表   
	 * @return: List<TravelNote>      
	 * @throws
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<TravelNote> findTravelByUsername(int pageNum, int pageSize,String username){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from TravelNote t where t.userDetail=:userDetail and status='公开' order by t.publishtime desc");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",username);
		
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		
		q.setParameter("userDetail",userDetail);					
		q.setFirstResult(pageSize*(pageNum-1));
		q.setMaxResults(pageSize);
		
		System.out.println(q.list());
		return q.list();			
		
	}
	
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<TravelNote> findTravelByLoginUsername(int pageNum, int pageSize,String loginUsername){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from TravelNote t where t.userDetail=:userDetail and status='公开'or status='仅自己可见' order by t.publishtime desc");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",loginUsername);
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		q.setParameter("userDetail",userDetail);					
		q.setFirstResult(pageSize*(pageNum-1));
		q.setMaxResults(pageSize);
		return q.list();			
		
	}
	
	/**
	 * 
	 * @Title: countTravelByUsername  
	 * @Description: TODO(查询该用户写的所有公开游记总数)   
	 * @param: @param username
	 * @param: @return      
	 * @return: int      
	 * @throws
	 */
	@SuppressWarnings("rawtypes")
	public int countTravelByUsername(String username){
		long count=0;
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select count(id) from TravelNote t where t.userDetail=:userDetail and status='公开' ");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",username);
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		q.setParameter("userDetail",userDetail);					
		count=(long)q.list().get(0);
		return (int)count;
		
	}
	
	
	@SuppressWarnings("rawtypes")
	public int countTravelByloginUsername(String loginUsername){
		long count=0;
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select count(id) from TravelNote t where t.userDetail=:userDetail and status='公开' ");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",loginUsername);
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		q.setParameter("userDetail",userDetail);					
		count=(long)q.list().get(0);
		return (int)count;
		
	}
	
	/**
	 * 
	 * @Title: findCollectTravel   
	 * @Description: TODO(查询该用户收藏的文章集合，并分页显示)   
	 * @param: @param pageNum   收藏文章页码
	 * @param: @param pageSize  收藏部分每页显示的标题数
	 * @param: @param username  用户昵称
	 * @param: @return  返回得到的收藏列表     
	 * @return: List<CollectTravel>      
	 * @throws
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<CollectTravel> findCollectTravel(int pageNum, int pageSize,String username){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CollectTravel c where c.userDetail=:userDetail and status='收藏' order by c.collectTime desc");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",username);
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		q.setParameter("userDetail",userDetail);	
		q.setFirstResult(pageSize*(pageNum-1));
		q.setMaxResults(pageSize);
		
		return q.list();
	}
	
	/**
	 * 
	 * @Title: countCollectTravel   
	 * @Description: TODO(查询用户收藏的游记的总数)   
	 * @param: @param username
	 * @param: @return      
	 * @return: int      
	 * @throws
	 */
	@SuppressWarnings("rawtypes")
	public int countCollectTravel(String username){
		long collectCount=0;
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select count(id) from CollectTravel c where c.userDetail=:userDetail and status='收藏'");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",username);
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		q.setParameter("userDetail",userDetail);					
		collectCount=(long)q.list().get(0);
		return (int)collectCount;
		
	}
	
	
	/**
	 * 
	 * @Title: findTravelTime   
	 * @Description: TODO(实现zone页的时间归档功能，查询游记的发布时间，并按照年和月分类)   
	 * @param: @param username
	 * @param: @return      
	 * @return: List      
	 * @throws
	 */
	@SuppressWarnings("rawtypes")
	public List<String> findTravelTime(String username) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select publishtime from TravelNote t where t.userDetail=:userDetail order by publishtime");
		Query q2=session.createQuery("from UserDetail  where username=:username").setParameter("username",username);
		UserDetail userDetail = (UserDetail) q2.uniqueResult();
		q.setParameter("userDetail",userDetail);
		List<?> list=q.list();
		List<String> dateList= new ArrayList<String>();
		
		for(int i=0;i<list.size();i++) {
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
			String s=sdf.format(list.get(i));
			dateList.add(s);
		}
		
		HashSet<String> h = new HashSet<String>(dateList);   
		dateList.clear();   
		dateList.addAll(h);  
		return dateList;
		
	}
	
	
}
