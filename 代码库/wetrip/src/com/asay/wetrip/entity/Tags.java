package com.asay.wetrip.entity;

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
@Table(name="wt_tag")
public class Tags {
	@Column(name="tag_id")
	private int id;
	private String tagName;
	
	@Column(name="tag_count")
	private int tagCount;
	
	private Set<Tags> childTags=new HashSet<Tags>(0);	
	
	private Tags parentTag;
	private Set<TravelNote> travelNotes=new HashSet<TravelNote>(0);	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	
	public int getTagCount() {
		return tagCount;
	}
	public void setTagCount(int tagCount) {
		this.tagCount = tagCount;
	}
	@OneToMany(mappedBy="parentTag",targetEntity=Tags.class)
	public Set<Tags> getChildTags() {
		return childTags;
	}
	public void setChildTags(Set<Tags> childTags) {
		this.childTags = childTags;
	}
	@ManyToOne
	@JoinColumn(name="parent_id")
	public Tags getParentTag() {
		return parentTag;
	}
	public void setParentTag(Tags parentTag) {
		this.parentTag = parentTag;
	}
	@ManyToOne	
	public Set<TravelNote> getTravelNotes() {
		return travelNotes;
	}
	public void setTravelNotes(Set<TravelNote> travelNotes) {
		this.travelNotes = travelNotes;
	}
	
}
