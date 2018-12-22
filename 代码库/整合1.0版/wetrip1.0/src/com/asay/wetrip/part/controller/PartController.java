package com.asay.wetrip.part.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.Tags;
import com.asay.wetrip.entity.TravelNote;
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
//设置flag标志，凭借flag的值判断应进入哪个controller
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
//分区页游记展示区域的页码
		String travelpageNum=request.getParameter("travelpageNum");

		int num=0;
		if(travelpageNum==null ||travelpageNum.equals("")){
			
			num=1;
		}else{
			num=Integer.parseInt(travelpageNum);
		}
		
//分区页的分类标签名
		String tagName=request.getParameter("tagName");
//获取分类标签下的子标签名
		String childTagName=request.getParameter("childTagName");
		System.out.println(childTagName);
		if(childTagName==null ||childTagName.equals("")){
			childTagName=tagName;
		}
//分区页热门标签展示区域的"换一批"
		String tagPage= request.getParameter("tagPageNum");
		int tagPageNum=0;
		if(tagPage==null ||tagPage.equals("")){
			
			tagPageNum=1;
		}else{
			tagPageNum=Integer.parseInt(tagPage);
		}
		
//获取分区页需要展示的游记列表
		List<TravelNote> travelList=partServiceImpl.listTravelByTagSortByTime(num, 6, childTagName);
//获取热门标签部分该分类标签下的标签列表
		List<Tags> tagList=partServiceImpl.findTags(num, 10, tagName);
//热门标签总页数
		int tagCount=partServiceImpl.countTags(tagName);
		if( tagCount%10==0) {
			 tagCount= tagCount/10;
		}
		else {
			 tagCount= tagCount/10+1;
		}		
		if(travelList.isEmpty()){
			request.getServletContext().setAttribute("travelList", travelList);
			request.getServletContext().setAttribute("travelpageNum", num);
			request.getServletContext().setAttribute("tagCount", tagCount );
			request.getServletContext().setAttribute("tagName",tagName );
			request.getServletContext().setAttribute("childTagName",childTagName );
			request.getServletContext().setAttribute("tagList",tagList );
			request.getServletContext().setAttribute("tagPageNum",tagPageNum );
			request.getServletContext().setAttribute("flag",flag );
			return "part";
		}
		else {
			//游记列表的总页数
		int count = partServiceImpl.countTravelByTag(childTagName);
		if(count%6==0) {
			count=count/6;
		}
		else {
			count=count/6+1;
		}

		request.getServletContext().setAttribute("travelList", travelList);
		request.getServletContext().setAttribute("travelpageNum", num);
		request.getServletContext().setAttribute("count", count );
		request.getServletContext().setAttribute("tagCount", tagCount );
		request.getServletContext().setAttribute("tagName",tagName );
		request.getServletContext().setAttribute("childTagName",childTagName );
		request.getServletContext().setAttribute("tagList",tagList );
		request.getServletContext().setAttribute("tagPageNum",tagPageNum );
		request.getServletContext().setAttribute("flag",flag );
		
		return "part";
		}
		
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
		
//获取分类标签下的子标签名
		String childTagName=request.getParameter("childTagName");
		if(childTagName==null ||childTagName.equals("")){
			childTagName=tagName;
		}
//分区页热门标签展示区域的"换一批"
		String tagPage= request.getParameter("tagPageNum");
			int tagPageNum=0;
			if(tagPage==null ||tagPage.equals("")){
					tagPageNum=1;
			}else{
				tagPageNum=Integer.parseInt(tagPage);
			}
		List<TravelNote> travelList=partServiceImpl.listTravelByTagSortByPraise(num, 6, childTagName);
		List<Tags> tagList=partServiceImpl.findTags(num, 10, tagName);
		int tagCount=partServiceImpl.countTags(tagName);
		if( tagCount%10==0) {
			 tagCount= tagCount/10;
		}
		else {
			 tagCount= tagCount/10+1;
		}
		if(travelList.isEmpty()){
			request.getServletContext().setAttribute("travelList", travelList);
			request.getServletContext().setAttribute("travelpageNum", num);
			request.getServletContext().setAttribute("tagCount", tagCount );
			request.getServletContext().setAttribute("tagName",tagName );
			request.getServletContext().setAttribute("childTagName",childTagName );
			request.getServletContext().setAttribute("tagList",tagList );
			request.getServletContext().setAttribute("tagPageNum",tagPageNum );
			request.getServletContext().setAttribute("flag",flag );
			return "part";
		}
		
		else {
			
			
			int count = partServiceImpl.countTravelByTag(childTagName);
			if(count%6==0) {
				count=count/6;
			}
			else {
				count=count/6+1;
			}

			request.getServletContext().setAttribute("travelList", travelList);
			request.getServletContext().setAttribute("travelpageNum", num);
			request.getServletContext().setAttribute("count", count );
			request.getServletContext().setAttribute("tagCount", tagCount );
			request.getServletContext().setAttribute("tagName",tagName );
			request.getServletContext().setAttribute("childTagName",childTagName );
			request.getServletContext().setAttribute("tagList",tagList );
			request.getServletContext().setAttribute("tagPageNum",tagPageNum );
			request.getServletContext().setAttribute("flag",flag );
			
		return "part";
		}
		
	}
}
