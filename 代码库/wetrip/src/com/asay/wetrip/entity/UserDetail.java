package com.asay.wetrip.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="wt_user_detail")
public class UserDetail {	
	private String username;	
	private String province;
	private String city;
	private String sex;
	@Column(name="user_description")
	private String description;
	private String userhead;
	@Column(name="collect_id")
	private int collectId;
	private Users user;
	private Set<TravelNote> travelNotes=new HashSet<TravelNote>(0);
	private Set<CollectTravel> collectNotes=new HashSet<CollectTravel>(0);
	private Set<Orders> orders=new HashSet<Orders>(0);
	private Manager manager;
	@Id
	@GeneratedValue(generator="assigned")
	@GenericGenerator(name="assigned",strategy="assigned")
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUserhead() {
		return userhead;
	}
	public void setUserhead(String userhead) {
		this.userhead = userhead;
	}
	public int getCollectId() {
		return collectId;
	}
	public void setCollectId(int collectId) {
		this.collectId = collectId;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn(name="email")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@OneToMany(mappedBy="userDetail",targetEntity=TravelNote.class)
	public Set<TravelNote> getTravelNotes() {
		return travelNotes;
	}
	public void setTravelNotes(Set<TravelNote> travelNotes) {
		this.travelNotes = travelNotes;
	}
	@ManyToMany
	@JoinTable(name="wt_collect_travel",joinColumns=@JoinColumn(name="email"),inverseJoinColumns=@JoinColumn(name="travel_id"))
	public Set<CollectTravel> getCollectNotes() {
		return collectNotes;
	}
	public void setCollectNotes(Set<CollectTravel> collectnotes) {
		this.collectNotes = collectnotes;
	}
	@OneToMany(mappedBy="userDetail",targetEntity=UserDetail.class)
	public Set<Orders> getOrders() {
		return orders;
	}
	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
	@OneToOne(mappedBy="userDetail")	
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	
	
	
}
