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
@Table(name="wt_comment")
public class Comment {
	
	private int id;
	private String email;
	
	private Timestamp commentTime;
	
	private String commentContent;	
	//���۱���μǱ� ���һ
	private TravelNote travelNote;
	//�����ۺ������� һ�Զ�
	private Set<Comment> childComments=new HashSet<Comment>(0);	
	//�����ۺ͸����� ���һ
	private Comment parentComment;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="comment_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="comment_time")
	public Timestamp getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Timestamp commentTime) {
		this.commentTime = commentTime;
	}
	
	@Column(name="comment_content")
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}	
	@ManyToOne
	@JoinColumn(name="travel_id")
	public TravelNote getTravelNote() {
		return travelNote;
	}
	public void setTravelNote(TravelNote travelNote) {
		this.travelNote = travelNote;
	}
	@OneToMany(mappedBy="parentComment",targetEntity=Comment.class)
	public Set<Comment> getChildComments() {
		return childComments;
	}
	public void setChildComments(Set<Comment> childComments) {
		this.childComments = childComments;
	}
	@ManyToOne
	@JoinColumn(name="cparent_id")
	public Comment getParentComment() {
		return parentComment;
	}
	public void setParentComment(Comment parentComment) {
		this.parentComment = parentComment;
	}
	
}
