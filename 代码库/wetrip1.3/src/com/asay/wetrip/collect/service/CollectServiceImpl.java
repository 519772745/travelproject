package com.asay.wetrip.collect.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.collect.dao.CollectDaoImpl;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.Users;
/**
 * 
 * @ClassName:  CollectServiceImpl   
 * @Description:map,0表示显示收藏，1表示页面显示已收藏 
 * @author: 倪泽苒
 * @date:   2018年12月5日 上午10:20:30
 */
@Service
@Transactional
public class CollectServiceImpl {
@Resource
private CollectDaoImpl collectDaoImpl;
//查询用户与游记list是否已具有收藏关系,返回一个map用于首页展示
public Map isCollect(List<TravelNote> tnlist,String email) {
	Map travelMap=new HashMap();
	if (email != null) {
		for(TravelNote  tn:tnlist) {
			if(this.collectDaoImpl.isCollect(email, tn)) {
			travelMap.put(tn, 1);
			}
			else {
			travelMap.put(tn, 0);
			}
		}
	}
	else {
		for(TravelNote  tn:tnlist) {
			travelMap.put(tn, 0);
		}
	System.out.println("没有email");	
	}
	return travelMap;
	
}
//若收藏表中没有，则添加收藏，有则改变收藏状态
public void addCollect(Users user ,int travelid) {
	if(this.collectDaoImpl.isCollect(user.getEmail(), this.collectDaoImpl.findTravelById(travelid))==false ) {
		this.collectDaoImpl.addCollectNote(user, travelid);
	}
	else {
		System.out.println("已收藏");
		
	}
	
}


}
