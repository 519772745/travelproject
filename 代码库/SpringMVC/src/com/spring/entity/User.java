package com.spring.entity;



import org.springframework.stereotype.Component;


public class User {
	
	private String password;
	private String name;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	}


