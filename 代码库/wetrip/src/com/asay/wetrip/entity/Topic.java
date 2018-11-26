package com.asay.wetrip.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="wt_topic")
public class Topic {
	@Column(name="topic_id")
	private int id;
	@Column(name="topic_name")
	private String name;
	@Column(name="topic_description")
	private String description;
	private Timestamp topictime;

	@Column(name="user_ip")
	private String ip;
	//话题表和游记表 一对多
	private Set<TravelNote> travelNotes=new HashSet<TravelNote>(0);
	//话题表和管理员表 多对一
	private Manager manager;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Timestamp getTopictime() {
		return topictime;
	}
	public void setTopictime(Timestamp topictime) {
		this.topictime = topictime;
	}	
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	@OneToMany(mappedBy="topic",targetEntity=TravelNote.class)
	public Set<TravelNote> getTravelNotes() {
		return travelNotes;
	}
	public void setTravelNotes(Set<TravelNote> travelNotes) {
		this.travelNotes = travelNotes;
	}
	@ManyToOne
	@JoinColumn(name="email")
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	
}
