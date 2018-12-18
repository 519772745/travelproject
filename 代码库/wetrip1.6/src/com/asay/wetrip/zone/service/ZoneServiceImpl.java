package com.asay.wetrip.zone.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.CollectTravel;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.zone.dao.ZoneDaoImpl;

@Service
@Transactional(readOnly=true)
public class ZoneServiceImpl {
	@Resource
	private ZoneDaoImpl zoneDaoImpl;
	public List<TravelNote> findTravelByUsername(int pageNum, int pageSize,String username,String loginUsername,String date){
		List<TravelNote>  list= new ArrayList<TravelNote>();
		if(username.equals(loginUsername)) {
			list=this.zoneDaoImpl.findTravelByLoginUsername(pageNum, pageSize, loginUsername,date);
		}
		else {
			list= this.zoneDaoImpl.findTravelByUsername(pageNum, pageSize, username,date);
		}
		return list;
	}
	
	public int countTravelByUsername(String username,String loginUsername){
		int count=0;
		if(username.equals(loginUsername)) {
			count=this.zoneDaoImpl.countTravelByloginUsername(loginUsername);
		}
		else {
			count=this.zoneDaoImpl.countTravelByUsername(username);
		}
		return count;
	}
	
	public List<CollectTravel> findCollectTravel(int pageNum, int pageSize,String username){
		return this.zoneDaoImpl.findCollectTravel(pageNum, pageSize, username);
	}
	
	public int countCollectTravel(String username){
		return this.zoneDaoImpl.countCollectTravel(username);
	}
	public List<String> findTravelTime(String username){
		return this.zoneDaoImpl.findTravelTime(username); 
	}
	
	
}
