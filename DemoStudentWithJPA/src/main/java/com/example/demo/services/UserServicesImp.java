//package com.example.demo.services;
//
//import java.util.List;
//import java.util.Optional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.example.demo.dao.UserRepo;
//import com.example.demo.model.User;
//
//
//@Service
//public class UserServicesImp implements UserIServices
//{
//
//	@Autowired
//	UserRepo urep;
//	
//	@Override
//	public Optional<User> findUser(Integer user_id) {
//		// TODO Auto-generated method stub
//		Optional<User> u = urep.findById(user_id);
//		return u;
//	}
//
//	@Override
//	public Optional<User> findUserByName(String user_name) {
//		// TODO Auto-generated method stub
//		Optional<User> c=urep.findByuser_name(user_name);
//		return c;
//	}
//
//}
