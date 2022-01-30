package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//import lombok.*;
//@Getter
//@Setter
@Entity
@Table(name="Comment_Info")
public class Comment 
{ 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="comment_id")
	private int comment_id;
		
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;	
	
	@JoinColumn(name="post_id")
	@ManyToOne
	private Post post;
	
	private String user_comm;
	
	private boolean comment_status;

	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public String getUser_comm() {
		return user_comm;
	}

	public void setUser_comm(String user_comm) {
		this.user_comm = user_comm;
	}

	public boolean isComment_status() {
		return comment_status;
	}

	public void setComment_status(boolean comment_status) {
		this.comment_status = comment_status;
	}

	@Override
	public String toString() {
		return "Comment [comment_id=" + comment_id + ", user=" + user + ", post=" + post + ", user_comm=" + user_comm
				+ ", comment_status=" + comment_status + "]";
	}
	
	
	
	
	
}
