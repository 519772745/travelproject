package com.asay.wetrip.topic.dao;
	import java.util.List;

	import javax.annotation.Resource;

	import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.hibernate.query.Query;
	import org.springframework.stereotype.Repository;

	import com.asay.wetrip.entity.Topic;
	import com.asay.wetrip.entity.TravelNote;

	/**
	 * 
	 * @ClassName:  TopicDaoImpl   
	 * @Description:TODO(分页查询参加今日话题的游记，一页显示一个，并按时间排序)   
	 * @author: samsung1
	 * @date:   2018年12月3日 上午10:46:35
	 */
	@Repository
	public class TopicDaoImpl {
		@Resource
		private SessionFactory sessionFactory;
//查询参与了今日话题的游记，时间排序,传入当前页码和页容量				
		public List<TravelNote> findTravelByTopic(int pageNum, int pageSize,int topicId){
			Session session=this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("from TravelNote t where t.topic=:topic order by t.publishtime desc");
			Query q2=session.createQuery("from Topic  where id=:topicId").setParameter("topicId",topicId);
			Topic topic=(Topic) q2.list().get(0);
			q.setParameter("topic", topic);					
			q.setFirstResult(pageSize*(pageNum-1));
			q.setMaxResults(pageSize);
			return q.list();				
	}
//查询参与了今日话题的游记的个数		
		public int countTravelByTopic(int topicId){
			long count=0;
			Session session=this.sessionFactory.getCurrentSession();
			Query q=session.createQuery("select count(id) from TravelNote t where t.topic=:topic");			
			Query q2=session.createQuery("from Topic where id=:topicId").setParameter("topicId",topicId);
			Topic topic=(Topic) q2.list().get(0);
			q.setParameter("topic", topic);			
			count=(long)q.list().get(0);
			return (int)count;
		}
	}

