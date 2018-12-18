package com.asay.wetrip.dailytopic.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
/**
 * 
 * @Title: dailyTopic   
 * @Description: 传入pageNum，进行今日话题页的跳转 
 * @param: @param request
 * @param: @return      
 * @return: String      
 * @throws
 */
@RequestMapping("/dailytopic")
public String dailyTopic(HttpServletRequest request) {	
	int topicId=Integer.parseInt(request.getParameter("topicId") );
	int pageNum=Integer.parseInt(request.getParameter("pageNum") );//当前页码
//导航栏	
	List<Tags> list=this.headerServiceImpl.list();
	request.getServletContext().setAttribute("tags", list);	
//今日话题的内容
	request.getServletContext().setAttribute("topic",this.topicServiceImpl.findTopicById(topicId));
//参与话题的游记展示，每页15个,
	request.getServletContext().setAttribute("travelList",this.topicServiceImpl.findTravelByTopic(pageNum, 15, topicId));
//今日话题页总页数
	int pageCount=this.topicServiceImpl.countTravel(topicId)/15+1;
	request.getServletContext().setAttribute("pageCount",5);
	request.getServletContext().setAttribute("pageNum",pageNum);
//往期话题的题目展示	
	request.getServletContext().setAttribute("topicList",this.topicServiceImpl.findTopicWeeks(topicId));
	return "dailytopic";	
	
}

}
