package com.asay.wetrip.entity;

import java.util.HashSet;
import java.util.Set;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
@Entity
@Table(name="wt_user")
public class Users {
	
	private String email;
	@Column(name="user_password")
	private String password;
	@Column(name="user_status")
	private String status;
	private UserDetail userDetail;
	private Set<LoginHistory> loginHistory=new HashSet<LoginHistory>(0);
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters= {
			@Parameter(name="property",value="userDetail")
	})
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@OneToOne(mappedBy="user")
	public UserDetail getUserDetail() {
		return userDetail;
	}
	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}
	@OneToMany(mappedBy="user",targetEntity=LoginHistory.class)
	public Set<LoginHistory> getLoginHistory() {
		return loginHistory;
	}
	public void setLoginHistory(Set<LoginHistory> loginHistory) {
		this.loginHistory = loginHistory;
	}
	
}
