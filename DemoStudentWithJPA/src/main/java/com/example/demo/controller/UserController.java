package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CommentRepo;
import com.example.demo.dao.PostRepo;
import com.example.demo.dao.UserRepo;

import com.example.demo.exception.NotFoundByUser;
import com.example.demo.model.Comment;
import com.example.demo.model.Post;
import com.example.demo.model.User;

import javassist.NotFoundException;

@Controller
public class UserController 
{
	
	
	public String userx_name;
	public int userx_id;
	@Autowired
	PostController post_controller ;//= new PostController();
//	@Autowired
//	CommentController comment_controller ;
	
	@Autowired
	PostRepo postr;
	@Autowired
	CommentRepo commentr2;
	
	@Autowired
	UserRepo r;

	
	
	@RequestMapping("index")
	public String index()
	{
		return "index";
	}
	@RequestMapping("index2")
	public String dashboard()
	{
		return "dashboard2";
	}

	
	
	
	@RequestMapping("home")
	public String home()
	{
		return "home";
	}

	@RequestMapping("createpost")
	public ModelAndView createpost()
	//	public ModelAndView post()
	{
		//UserController loginfo =new UserController();
		Optional<User>o=r.findByUser_name(userx_name);
		User s=o.get();
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",s);
		mv.setViewName("createpost"); 
		return mv;
	}
	
	@RequestMapping("createcomment/{post_id}")
	public ModelAndView addComment(@PathVariable Integer post_id) throws NotFoundException
	{
		Optional<User>user_details=r.findByUser_name(userx_name);
	
		User user_details1 =user_details.get();
		ModelAndView mv=new ModelAndView();
		mv.addObject("user",user_details1);
		
		Optional<Post>post_details=postr.findById(post_id);
		Post post_details1 =post_details.get();
		mv.addObject("post",post_details1);
		
		List<Comment>comment_bypost = commentr2.findByPost_Id(post_id);
		//mv=comment_controller.getCommentDeSorted();
		mv.addObject("commentList",comment_bypost);
		mv.setViewName("createcomment"); 
		return mv;
	}
	
	
	@RequestMapping("signup")
	public String addUser(User s)
	{
		//r.save(s);
		return "index";
	}

//	@RequestMapping("find")
//	public ModelAndView singleUser(@RequestParam int user_id)
//	{
//		ModelAndView mv=new ModelAndView("usershow");
//
//		Optional<User>o=r.findById(user_id);
//		User s=o.get();
//		int p = s.getUser_pass();
//		mv.addObject("s",p);
//		return mv;
//	}

	@RequestMapping("login")
	public ModelAndView loginUser(@RequestParam String user_name,@RequestParam String user_pass)
	{
//		if (user_name.equals(null))
//		{
//			throw new NotFoundByUser("User Not Found");	
//		}
		ModelAndView mv=new ModelAndView();
		
		Optional<User>user_details=r.findByUser_name(user_name);
		
//		if (user_details.equals(null))
		if (user_details==null)
		{
			throw new NotFoundByUser("User Not Found");
		}
		
		User user_details_object=user_details.get();
		
		
		int dbid = user_details_object.getUser_id();
		int dbpass = user_details_object.getUser_pass();
		int hashValueUser = user_pass.hashCode();  
		if (dbpass==hashValueUser)
		{
			userx_id = dbid;
			userx_name = user_name;
			mv=post_controller.postdesorted();
			
			mv.addObject("user",user_details_object);
			mv.setViewName("dashboard"); 
			

		}
		else
		{
			mv.setViewName("redirect:/index"); 
		}
		return mv;

	}


	@RequestMapping("usershow")
	public ModelAndView showStudent(User s)
	{
		ModelAndView mv=new ModelAndView("usershow");
		mv.addObject("s",s);
		return mv;
	}







	//	@Autowired
	//	PostRepo postr;
	//	
	//	@RequestMapping("postadd")
	//	public String addPost(Post p)
	//	{
	//		postr.save(p);
	//		return "home";
	//	}



	/*@RequestMapping("/deletestudent")
	public String deleteStudent(@RequestParam int sid)
	{
		r.deleteById(sid);
		return "deletestudent";
	}



	@RequestMapping("/selectallstudent")
	public ModelAndView allStudent()
	{
		ModelAndView mv=new ModelAndView("selectallStudent.jsp");	
		Iterable<Student>l=r.findAll();
		mv.addObject(l);
		return mv;
	}
	 */
}
