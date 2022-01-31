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


	@RequestMapping("commentadd")
	public String addComment(Comment p)
	{
		//System.out.println(p.getPost_id());
		commentr.save(p);
		return "dashboard";
	}


	@RequestMapping("commentdesorted")
	//@ResponseBody
	public ModelAndView getCommentDeSorted()
	{
		List<Comment>commentdesort=commentr.getCommentDeSorted(); //query From Repo by user
		ModelAndView mv=new ModelAndView();
		mv.addObject("commentList",commentdesort);
		//mv.setViewName("usershow"); 
			mv.setViewName("createcomment"); 
		return mv;
	}


	@RequestMapping("commentsorted")
	public ModelAndView postsorted()
	{
		List<Comment>comments=commentr.findAll(); //query From Repo by user

		ModelAndView mv=new ModelAndView();
		mv.addObject("commentList",comments);
		mv.setViewName("usershow"); 

		return mv;

	}




}
