package com.asay.wetrip.topic.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.topic.dao.TopicDaoImpl;


@Service
@Transactional(readOnly=true)
public class TopicServiceImpl {
	@Resource
	private TopicDaoImpl topicDaoImpl;
//根据话题找参与今日话题的游记	
	public List<TravelNote> findTravelByTopic(int pageNum, int pageSize,int topicId){
		return this.topicDaoImpl.findTravelByTopic(pageNum, pageSize, topicId);		
	}
	
	public int countTravel(int topicId) {
		return topicDaoImpl.countTravelByTopic(topicId);
	}
}
