package com.asay.wetrip.entity;

import org.springframework.stereotype.Component;

@Component
public class CartEntry {
	private long quantity; // 总数量
	private Product product;

	public long getQuantity() {
		return quantity;
	}

	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
