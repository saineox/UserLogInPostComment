package com.example.demo.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Post;
import com.example.demo.model.User;


//CurdRepository---PagingAndSorting-----JpaRepository
public interface PostRepo extends JpaRepository<Post, Integer>
{
	//@Query("from Post order by post_id")
	@Query("from Post order by post_id desc")
	List<Post> getPostDeSorted();
	//List<Post> PostSorted(Integer post_id);
	
	
	
}
