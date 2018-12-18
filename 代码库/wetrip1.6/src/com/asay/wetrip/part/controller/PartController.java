package com.asay.wetrip.part.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.Imgs;
import com.asay.wetrip.entity.Tags;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.index.service.IndexServicelmpl;
import com.asay.wetrip.part.service.PartServiceImpl;

/**
 * 
 * @ClassName:  PartController   
 * @Description:TODO(实现分区页相关查询功能的controller层)   
 * @author: 户子超
 * @date:   2018年12月10日 下午2:14:08
 */
@Controller
public class PartController {
	@Resource
	private PartServiceImpl partServiceImpl;
	@Resource
	private IndexServicelmpl indexServicelmpl;
	
	int flag=0;

	/**
	 * 
	 * @Title: index   
	 * @Description: TODO(从其他也跳转到part也的默认页面)   
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping("/part")
	public String index(HttpServletRequest request) {
		
		flag=0;
		String travelpageNum=request.getParameter("travelpageNum");
		String tagName=request.getParameter("tagName");
		String tagPage= request.getParameter("tagPageNum");
		int tagPageNum=0;
		if(tagPage==null ||tagPage.equals("")){
			
			tagPageNum=1;
		}else{
			tagPageNum=Integer.parseInt(tagPage);
		}
		
		int num=0;
		if(travelpageNum==null ||travelpageNum.equals("")){
			
			num=1;
		}else{
			num=Integer.parseInt(travelpageNum);
		}
		
		
		
		List<TravelNote> travelList=partServiceImpl.listTravelByTagSortByTime(num, 6, tagName);
		List<Tags> tagList=partServiceImpl.findTags(tagPageNum, 10, tagName);
		List<Imgs> partImg=indexServicelmpl.findLongImgs(travelList);
		int count = (partServiceImpl.countTravelByTag(tagName))/6;
	
		
		travelList.get(0).getUserDetail().getEmail();
		
		request.getServletContext().setAttribute("travelList", travelList);
		request.getServletContext().setAttribute("travelpageNum", num);
		request.getServletContext().setAttribute("count", count );
		request.getServletContext().setAttribute("tagName",tagName );
		request.getServletContext().setAttribute("partImg",partImg );
		request.getServletContext().setAttribute("tagList",tagList );
		request.getServletContext().setAttribute("tagPageNum",tagPageNum );
		request.getServletContext().setAttribute("flag",flag );
		
		return "part";
		
	}
	
	/**
	 * 
	 * @Title: hello   
	 * @Description: TODO(点击父标签下查到的标签后跳转到的分区页)   
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping("/part2")
	public String hello(HttpServletRequest request) {
		
		flag=1;
		String travelpageNum=request.getParameter("travelpageNum");
		String tagName=request.getParameter("tagName");
		String 	parentTagName=request.getParameter("parentTagName");
	
		String tagPage= request.getParameter("tagPageNum");
		int tagPageNum=0;
		if(tagPage==null ||tagPage.equals("")){
			
			tagPageNum=1;
		}else{
			tagPageNum=Integer.parseInt(tagPage);
		}
		
		int num=0;
		if(travelpageNum==null ||travelpageNum.equals("")){
			
			num=1;
		}else{
			num=Integer.parseInt(travelpageNum);
		}
		
		
		
		List<TravelNote> travelList=partServiceImpl.listTravelByTagSortByTime(num, 6, tagName);
		List<Tags> tagList=partServiceImpl.findTags(num, 10, parentTagName);
		List<Imgs> partImg=indexServicelmpl.findLongImgs(travelList);
		int count = (partServiceImpl.countTravelByTag(tagName))/6;
	
		
		travelList.get(0).getUserDetail().getEmail();
		
		request.getServletContext().setAttribute("travelList", travelList);
		request.getServletContext().setAttribute("travelpageNum", num);
		request.getServletContext().setAttribute("count", count );
		request.getServletContext().setAttribute("tagName",tagName );
		request.getServletContext().setAttribute("partImg",partImg );
		request.getServletContext().setAttribute("tagList",tagList );
		request.getServletContext().setAttribute("tagPageNum",tagPageNum );
		request.getServletContext().setAttribute("flag",flag );
		return "part";
		
	}
	
	/**
	 * 
	 * @Title: index2   
	 * @Description: TODO(展示将游记列表按热度排序的页面)   
	 * @param: @param request
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping("/partByPraise")
	public String index2(HttpServletRequest request) {
		
		flag=2;
		String travelpageNum=request.getParameter("travelpageNum");
		String tagName=request.getParameter("tagName");
		int num=0;
		if(travelpageNum==null ||travelpageNum.equals("")){
			
			num=1;
		}else{
			num=Integer.parseInt(travelpageNum);
		}
		
		
		
		List<TravelNote> travelList=partServiceImpl.listTravelByTagSortByPraise(num, 6, tagName);
		List<Tags> tagList=partServiceImpl.findTags(num, 10, tagName);
		List<Imgs> partImg=indexServicelmpl.findLongImgs(travelList);
		int count = (partServiceImpl.countTravelByTag(tagName))/6;
	
		
		travelList.get(0).getUserDetail().getEmail();
		
		request.getServletContext().setAttribute("travelList", travelList);
		request.getServletContext().setAttribute("travelpageNum", num);
		request.getServletContext().setAttribute("count", count );
		request.getServletContext().setAttribute("tagName",tagName );
		request.getServletContext().setAttribute("partImg",partImg );
		request.getServletContext().setAttribute("tagList",tagList );
		request.getServletContext().setAttribute("flag",flag );
		
		return "part";
		
	}
}
