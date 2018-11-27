package com.asay.wetrip.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="wt_manager")
public class Manager {
	@Column(name="manager_id")
	private int id;
	
	@Column(name="m_identity")
	private int identity;
	@Column(name="m_privilege")
	private int privilege;
	//管理员表和用户详情表 一对一
	private UserDetail userDetail;
	//管理员表和话题表 一对多
	private Set<Topic> topics=new HashSet<Topic>(0);
	//管理员表和身份表  一对多
	private Set<Identity> identities=new HashSet<Identity>(0);
	//管理员表和权利表 一对多
	private Set<Privilege> privileges=new HashSet<Privilege>(0);
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getIdentity() {
		return identity;
	}
	public void setIdentity(int identity) {
		this.identity = identity;
	}
	public int getPrivilege() {
		return privilege;
	}
	public void setPrivilege(int privilege) {
		this.privilege = privilege;
	}
	@OneToOne
	@JoinColumn(name="email")
	public UserDetail getUserDetail() {
		return userDetail;
	}
	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}
	@OneToMany(mappedBy="manager",targetEntity=Topic.class)
	public Set<Topic> getTopics() {
		return topics;
	}
	public void setTopics(Set<Topic> topics) {
		this.topics = topics;
	}
	@OneToMany(mappedBy="manager",targetEntity=Identity.class)
	public Set<Identity> getIdentities() {
		return identities;
	}
	public void setIdentities(Set<Identity> identities) {
		this.identities = identities;
	}
	@OneToMany(mappedBy="manager",targetEntity=Identity.class)
	public Set<Privilege> getPrivileges() {
		return privileges;
	}
	public void setPrivileges(Set<Privilege> privileges) {
		this.privileges = privileges;
	}
	
}
