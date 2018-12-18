package com.asay.wetrip.report.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.report.dao.ReportDaoImpl;

@Service
@Transactional
public class ReportServiceImpl {
@Resource
private  ReportDaoImpl reportDaoImpl;

public void addReport(int travelid) {
	this.reportDaoImpl.addReport(travelid, 1);	
}
	

}
