package com.asay.wetrip.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "wt_cart")
public class CartEntry {
	private String email;
	private int quantity; // 总数量

	// 购物车表和用户表一对一
	private Users user;
	// 购物车表和产品表多对一
	private Users product;
	
	
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters= {
			@Parameter(name="property",value="user")
	})
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@OneToOne(mappedBy="cartEntry")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@ManyToOne
	@JoinColumn(name="product_id")
	public Users getProduct() {
		return product;
	}
	public void setProduct(Users product) {
		this.product = product;
	}


}
