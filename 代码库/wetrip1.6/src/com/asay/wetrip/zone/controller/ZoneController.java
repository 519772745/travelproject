package com.asay.wetrip.zone.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asay.wetrip.entity.CollectTravel;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.zone.service.ZoneServiceImpl;

@Controller
@Transactional
public class ZoneController {
	@Resource	
	private ZoneServiceImpl zonerServiceImpl;
	@RequestMapping("/zone")
	public String index(HttpServletRequest request) {
		int zonePageNum=Integer.parseInt(request.getParameter("zonePageNum") );
		String username= request.getParameter("username");
		int collectpageNum=Integer.parseInt(request.getParameter("collectPageNum"));
		
		String currentDate=request.getParameter("currentDate");
		String loginUsername="我是测试2";
		System.out.println(currentDate);
		System.out.println(username);

		int collectCount=(zonerServiceImpl.countCollectTravel(username))/6;
		
		List<CollectTravel> collectList=zonerServiceImpl.findCollectTravel(collectpageNum, 6, username);
		List<TravelNote> zoneTravelList=zonerServiceImpl.findTravelByUsername(zonePageNum, 3, username,loginUsername);
		List<String> dateList=zonerServiceImpl.findTravelTime(username);
				
		
//		collectList.get(0).getTravelNote().getTitle();
		request.getServletContext().setAttribute("zoneTravelList",  zoneTravelList);
		request.getServletContext().setAttribute("zonePageNum", zonePageNum);
		request.getServletContext().setAttribute("ud", zoneTravelList.get(0).getUserDetail());
		request.getServletContext().setAttribute("count",(zonerServiceImpl.countTravelByUsername(username,loginUsername))/3  );
		request.getServletContext().setAttribute("collectPageNum",collectpageNum);
		request.getServletContext().setAttribute("collectList",collectList);
		request.getServletContext().setAttribute("dateList",dateList);
		request.getServletContext().setAttribute("collectCount",collectCount);
		request.getServletContext().setAttribute("loginUsername",loginUsername);
		request.getServletContext().setAttribute("currentDate",currentDate);
		
		return "zone";
	}
}
