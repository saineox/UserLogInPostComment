package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.User;


//CurdRepository---PagingAndSorting-----JpaRepository
public interface UserRepo extends JpaRepository<User, Integer>
{

	
	@Query("from User where user_name = ?1")
	Optional<User> findByUser_name(String user_name);
//	@Query("from User where user_name = ?1")
//	List<User> findByUser_name1(String user_name);

}
