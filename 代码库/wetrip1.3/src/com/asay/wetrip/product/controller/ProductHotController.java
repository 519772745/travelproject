package com.asay.wetrip.product.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asay.wetrip.entity.Page;
import com.asay.wetrip.entity.Product;
import com.asay.wetrip.product.service.ProductServiceImpl;

@Controller
public class ProductHotController {

	@Resource
	private ProductServiceImpl productServiceImpl;
	@RequestMapping("/producthot")
	public String producthot(HttpServletRequest request,@RequestParam(value="pageNum",required=false) String pageNum) {
		int pageType=1;
		request.setAttribute("pagetype", pageType);
//		System.out.println("4");
		List<Product> list2 = this.productServiceImpl.list2();
		request.getServletContext().setAttribute("product", list2);
//		System.out.println(list2);
		// 1获取页码
		int num = 0;
		if (pageNum == null || pageNum.equals("")) {

			num = 1;
		} else {
			num = Integer.parseInt(pageNum);
		}
		// 2根据页码查询相关数据
//		System.out.println("5");
		int count2 = this.productServiceImpl.findCountByPage();
		List<Product> list4 = this.productServiceImpl.list2(num, 6);
		Page<Product> p = new Page<Product>(num,3);
		p.setList(list4);
		p.setTotalCount(count2);
		request.getServletContext().setAttribute("page", p);
//		System.out.println("6");
//		System.out.println(p);
		return "product";
	}
}
