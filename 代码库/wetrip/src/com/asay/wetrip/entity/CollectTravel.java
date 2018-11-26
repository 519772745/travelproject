package com.asay.wetrip.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="wt_collect_travel")
public class CollectTravel {
	@Column(name="collect_id")
	private int id;	
	@Column(name="collect_status")
	private String status;
	@Column(name="collect_time")
	private Timestamp collectTime;
	//收藏表和游记表 多对一
	private TravelNote travelNote;
	//收藏表和用户详情表 多对一
	private UserDetail userDetail;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getCollectTime() {
		return collectTime;
	}
	public void setCollectTime(Timestamp collectTime) {
		this.collectTime = collectTime;
	}
		
	@ManyToOne
	@JoinColumn(name="travel_id")
	public TravelNote getTravelNote() {
		return travelNote;
	}
	public void setTravelNote(TravelNote travelNote) {
		this.travelNote = travelNote;
	}
	@ManyToOne
	@JoinColumn(name="email")
	public UserDetail getUserDetail() {
		return userDetail;
	}
	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}
	
}
