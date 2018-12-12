package com.asay.wetrip.dailytopic.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import com.asay.wetrip.entity.Tags;
import com.asay.wetrip.index.service.HeaderServiceImpl;
import com.asay.wetrip.topic.service.TopicServiceImpl;
/**
 * 
 * @ClassName:  DailytopicDaoImpl   
 * @Description:今日话题页的controller层
 * @author: 倪泽苒
 * @date:   2018年12月12日 上午8:41:32
 */
@Controller	
public class DailytopicControllerImpl {
@Resource
	private HeaderServiceImpl headerServiceImpl;
@Resource
	private TopicServiceImpl topicServiceImpl;
public String dailyTopic(HttpServletRequest request) {
//导航栏	
	List<Tags> list=this.headerServiceImpl.list();
	request.getServletContext().setAttribute("tags", list);		
//参与话题的游记展示，每页15个	
	
//往期话题的题目展示	
	return "dailytopic";	
	
}

}
