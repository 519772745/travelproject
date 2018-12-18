package com.asay.wetrip.collect.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asay.wetrip.collect.service.CollectServiceImpl;
import com.asay.wetrip.detail.service.DetailServiceImpl;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.entity.Users;

@Controller
public class CollectController {
	@Resource
	private CollectServiceImpl collectServiceImpl;
	@Resource
	private DetailServiceImpl detailServiceImpl;

	/**
	 *  <b> changeCollectStatus </b>
	 *  <p> 点击收藏按钮后，响应用户操作的controller
	 *   若未登录状态点击，则不进行操作<br>
	 *   若收藏状态时点击，则取消收藏<br>
	 *   若未收藏时候点击，则进行收藏<br>
	 *  
	 * @param travelNoteId  文章的ID
	 * @return String 
	 */
	@ResponseBody
	@RequestMapping("/changeCollectStatus")
	public Map<String,Object> changeCollectStatus(int travelNoteId, HttpServletRequest request) {
		Map <String,Object> map=new HashMap<>();
		if (request.getSession().getAttribute("user") != null) {
			Users user = (Users) request.getSession().getAttribute("user");
			UserDetail userDetail=user.getUserDetail();
			TravelNote travelNote = detailServiceImpl.findTravelById(travelNoteId);

			/* 判断该游记是否已经被收藏 */
			Boolean collected = collectServiceImpl.isCollect(travelNote, userDetail);
			if (collected) {
				collectServiceImpl.removeCollect(userDetail, travelNote);
				map.put("status","uncollected");
				map.put("collectNum", travelNote.getCollectTravels().size());
				map.put("travelNoteId",travelNoteId);
				return map;
			} else {
				collectServiceImpl.addCollect(userDetail, travelNote);
				map.put("status","collected");
				map.put("collectNum", travelNote.getCollectTravels().size());
				map.put("travelNoteId",travelNoteId);
				return map;
			}
		}
		return null;
	}
}
