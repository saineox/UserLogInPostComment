package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CommentRepo;
import com.example.demo.dao.PostRepo;
import com.example.demo.model.Comment;
import com.example.demo.model.Post;


@Controller
public class CommentController 
{
	@Autowired
	CommentRepo commentr;
	
//	@RequestMapping("createcomment")
//	public String addComment()
//	{
//		//commentr.save(p);
//		return "createcomment";
//	}
	
	@RequestMapping("commentadd")
	public String addComment(Comment p)
	{
		commentr.save(p);
		return "dashboard";
	}
	
	
	@RequestMapping("commentdesorted")
	//@ResponseBody
	public ModelAndView getCommentSorted()
	{
		List<Comment>s=commentr.getCommentDeSorted(); //query From Repo by user
		ModelAndView mv=new ModelAndView();
		mv.addObject("c",s);
	//	mv.setViewName("usershow"); 
		mv.setViewName("dashboard"); 
		return mv;
	}
	
	
	@RequestMapping("commentsorted")
	public ModelAndView postsorted()
		{
		List<Comment>s=commentr.findAll(); //query From Repo by user
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("s",s);
		mv.setViewName("usershow"); 

		return mv;
		//return l;
	}
//	return "dashboard2";
	
	

}
