package com.asay.wetrip.product.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asay.wetrip.entity.Product;
import com.asay.wetrip.product.service.GoodService;

@Controller
public class GoodController {

	@Resource
	private GoodService goodService;
	@RequestMapping("/good")
	/**
	 * 
	 * @Title: good   
	 * @Description: 根据id查询商品列表并展示到good.jsp
	 * @param: @param request
	 * @param: @param id
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	public String good(HttpServletRequest request, @RequestParam String id) {
		List<Product> list=this.goodService.list(id);
		request.getServletContext().setAttribute("good", list);
		return "good" ;
	}
}
