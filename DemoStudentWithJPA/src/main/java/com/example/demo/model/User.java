package com.example.demo.model;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

//import lombok.*;
//@Getter
//@Setter
@Entity
//@Table(name="User_Info")
@Table(name="User_Info", uniqueConstraints=@UniqueConstraint(columnNames = "user_name"))

public class User 
{ 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_id")
	private int user_id;
	private String user_name;
	private int user_pass;

	@OneToMany(mappedBy="user",cascade=CascadeType.ALL)
	private Set<Post> user_post = new HashSet<>();

	@OneToMany(mappedBy="user",cascade=CascadeType.ALL)
	private Set<Comment> user_comment = new HashSet<>();
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) 
	{
		int hashValue = user_pass.hashCode();  
		this.user_pass = hashValue;
	}

	public Set<Post> getUser_post() {
		return user_post;
	}

	public void setUser_post(Set<Post> user_post) {
		this.user_post = user_post;
	}

//	@Override
//	public String toString() {
//		return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_pass=" + user_pass + ", user_post="
//				+ user_post + "]";
//	}







}
