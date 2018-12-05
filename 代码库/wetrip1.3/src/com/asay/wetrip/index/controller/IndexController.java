package com.asay.wetrip.index.controller;


import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.Imgs;
import com.asay.wetrip.entity.TagTravelNote;
import com.asay.wetrip.entity.Tags;
import com.asay.wetrip.entity.Topic;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.index.service.HeaderServiceImpl;
import com.asay.wetrip.index.service.IndexServicelmpl;
import com.asay.wetrip.report.service.ReportServiceImpl;
import com.asay.wetrip.topic.service.TopicServiceImpl;
/**
 * 
 * @ClassName:  IndexController   
 * @Description:TODO(这里用一句话描述这个类的作用)   
 * @author: Administrator
 * @date:   2018年12月3日 上午10:42:25
 */
@Controller	
public class IndexController {
@Resource
private IndexServicelmpl indexServicelmpl;
@Resource
private HeaderServiceImpl headerServiceImpl;
@Resource
private TopicServiceImpl topicServiceImpl;
@Resource
private ReportServiceImpl reportServiceImpl;
@RequestMapping("/indexs")
public String index(HttpServletRequest request) {
	int pageNumshort=Integer.parseInt(request.getParameter("pageNumshort") );
	int	num=Integer.parseInt(request.getParameter("TopicpageNum"));
	String city="邯郸";
	int topicId=1;
//导航栏
	List<Tags> list=this.headerServiceImpl.list();
	request.getServletContext().setAttribute("tags", list);	
//今日话题
	List<TravelNote> travelList=topicServiceImpl.findTravelByTopic(num, 1, topicId);
	Set<Imgs> topicImg=travelList.get(0).getImgs();
	request.getServletContext().setAttribute("travelList", travelList);
	request.getServletContext().setAttribute("TopicpageNum", num);
	request.getServletContext().setAttribute("ud",travelList.get(0).getTopic().getManager().getUserDetail());
	request.getServletContext().setAttribute("count", topicServiceImpl.countTravel(topicId) );
	request.getServletContext().setAttribute("topicImg", topicImg);
//说说查询	
	List<TravelNote> shortList = this.indexServicelmpl.findShort(city, pageNumshort);
	Set<Imgs> shortImg=shortList.get(0).getImgs();
	request.getServletContext().setAttribute("shortList",shortList);
	request.getServletContext().setAttribute("pageNumshort", pageNumshort);
	request.getServletContext().setAttribute("shortTag",this.indexServicelmpl.findTags(shortList.get(0)));	
	request.getServletContext().setAttribute("shortImg",shortImg);
//热门文章前六查询
	List<TravelNote> longList=this.indexServicelmpl.findLong(city);
	request.getServletContext().setAttribute("longList",longList);
	request.getServletContext().setAttribute("longTag",this.indexServicelmpl.findLongTags(longList));
	request.getServletContext().setAttribute("longImg",this.indexServicelmpl.findLongImgs(longList));
	return "index";
}

@RequestMapping("/reportindex")
public String reportIndex(HttpServletRequest request) {
	this.reportServiceImpl.addReport(Integer.parseInt(request.getParameter("travelid")));
	return "redirect:/indexs?pageNumshort="+request.getParameter("pageNumshort")+"&TopicpageNum="+request.getParameter("TopicpageNum") ;
}
@RequestMapping("/collectindex")
public String collectindex(HttpServletRequest request) {	
	return "redirect:/indexs?pageNumshort="+request.getParameter("pageNumshort")+"&TopicpageNum="+request.getParameter("TopicpageNum");
}

}
