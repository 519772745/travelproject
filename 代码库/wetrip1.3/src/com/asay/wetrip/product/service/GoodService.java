package com.asay.wetrip.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.Product;
import com.asay.wetrip.product.dao.GoodDao;

@Service
@Transactional(readOnly=true)
public class GoodService {

	@Resource
	private GoodDao goodDao;
	
	
	
	public List<Product> list(String id){
		return this.goodDao.findById2(id);
	}
}
