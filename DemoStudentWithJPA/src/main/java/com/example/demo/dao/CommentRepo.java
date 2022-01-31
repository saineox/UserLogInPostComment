package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Comment;
import com.example.demo.model.Post;


//CurdRepository---PagingAndSorting-----JpaRepository
public interface CommentRepo extends JpaRepository<Comment, Integer>
{
	@Query("from Comment order by comment_id desc")
	List<Comment> getCommentDeSorted();
	
	//@Query("from Comment order by comment_id desc")
	@Query("from Comment where post_id = ?1")
	List<Comment> findByPost_Id(Integer post_id);
}
