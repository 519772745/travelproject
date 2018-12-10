package com.asay.wetrip.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "wt_cart")
public class CartEntry {
	private String email;
	private int quantity; // 总数量
	private int product_id;

	// 购物车表和用户表一对一
	private Users user;
	// 购物车表和产品表一对多
	private Set<Product> products = new HashSet<Product>(0);
	
	
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
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters= {
			@Parameter(name="property",value="products")
	})
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	
	@OneToOne(mappedBy="CartEntry")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@OneToMany(mappedBy="CartEntry",targetEntity=Product.class)
	public Set<Product> getProduct() {
		return products;
	}
	public void setProduct(Set<Product> products) {
		this.products = products;
	}

}
