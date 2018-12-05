package com.asay.wetrip.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asay.wetrip.entity.Product;
import com.asay.wetrip.product.dao.ProductDaoImpl;


@Service
@Transactional(readOnly=true)
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDaoImpl;
	
	public List<Product> list(){
		return this.productDaoImpl.findAll();
	}
	public List<Product> list(int pageNum, int pageSize){
		return this.productDaoImpl.findByPage(pageNum,pageSize);
	}
	public int findCountByPage(){
		return this.productDaoImpl.findCountByPage();
	}
}
