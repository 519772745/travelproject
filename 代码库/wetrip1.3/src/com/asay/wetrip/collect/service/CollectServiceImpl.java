package com.asay.wetrip.collect.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.collect.dao.CollectDaoImpl;
import com.asay.wetrip.entity.TravelNote;
/**
 * 
 * @ClassName:  CollectServiceImpl   
 * @Description:0表示显示收藏，1表示页面显示已收藏 
 * @author: Administrator
 * @date:   2018年12月5日 上午10:20:30
 */
@Service
@Transactional
public class CollectServiceImpl {
@Resource
private CollectDaoImpl collectDaoImpl;
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
	}
	return travelMap;
	
}


}
