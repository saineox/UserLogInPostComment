package com.example.demo.model;
import java.sql.Date;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.Setter;


//@Getter
//@Setter
@Entity
@Table(name="post2")
//@Table(name="User_Info", uniqueConstraints=@UniqueConstraint(columnNames = "user_name"))

public class Post 
{ 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="post_id")
	private int post_id;
	
	@ManyToOne
	@JoinColumn(name="user_id", insertable = false, updatable = false)
	private User user;	
	@Column(name="user_id")
	private Integer user_id;
	
	private String post_title;
	private String post_info;
	
	@OneToMany(mappedBy="post",cascade=CascadeType.ALL)
	private Set<Comment> user_comment = new HashSet<>();
	
	private boolean post_status;
	@CreationTimestamp
	 @Column(name="post_time") 
    private LocalDateTime createDateTime; // insert date
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_info() {
		return post_info;
	}
	public void setPost_info(String post_info) {
		this.post_info = post_info;
	}
	public Set<Comment> getUser_comment() {
		return user_comment;
	}
	public void setUser_comment(Set<Comment> user_comment) {
		this.user_comment = user_comment;
	}
	public boolean isPost_status() {
		return post_status;
	}
	public void setPost_status(boolean post_status) {
		this.post_status = post_status;
	}
	public LocalDateTime getCreateDateTime() {
		return createDateTime;
	}
	public void setCreateDateTime(LocalDateTime createDateTime) {
		this.createDateTime = createDateTime;
	}
   
  //  private Date post_time;
    
//    @Temporal(TemporalType.TIME) // insert time
//    @Temporal(TemporalType.TIMESTAMP)

	
	
	
	
	
	
}
