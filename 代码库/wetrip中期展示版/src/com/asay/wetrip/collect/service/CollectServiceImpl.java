package com.asay.wetrip.collect.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.collect.dao.CollectDaoImpl;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;

/**
 * 
 * @ClassName: CollectServiceImpl
 * @author: 倪泽苒
 * @date: 2018年12月5日 上午10:20:30
 */
@Service
@Transactional
public class CollectServiceImpl {
	@Resource
	private CollectDaoImpl collectDaoImpl;

	public boolean isCollect(TravelNote tn, UserDetail userDetail) {
		return this.collectDaoImpl.isCollect(tn,userDetail);
	}

	// 查询用户与游记list是否已具有收藏关系,返回一个map用于首页展示
	public Map isCollect(List<TravelNote> tnlist, UserDetail userDetail) {
		Map travelMap = new HashMap();
		if (userDetail != null) {
			for (TravelNote tn : tnlist) {
				if (this.collectDaoImpl.isCollect(tn, userDetail)) {
					travelMap.put(tn, 1);
				} else {
					travelMap.put(tn, 0);
				}
			}
		} else {
			for (TravelNote tn : tnlist) {
				travelMap.put(tn, 0);
			}
		}
		return travelMap;

	}

	//添加收藏的方法
	public void addCollect(UserDetail userDetail, TravelNote travelNote) {
			this.collectDaoImpl.addCollectNote(userDetail, travelNote);
	}
	//删除收藏的方法
	public void removeCollect(UserDetail userDetail, TravelNote travelNote) {
		this.collectDaoImpl.removeCollectNote(userDetail, travelNote);
}
}

