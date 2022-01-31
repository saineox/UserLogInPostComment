package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.PostRepo;

import com.example.demo.model.Post;
import com.example.demo.model.User;



@Controller
public class PostController 
{
	@Autowired
	PostRepo postr;
	


	@RequestMapping("postadd")
	public String addPost(Post p)
	{
		System.out.println(p.getUser_id());
		//		Post p =o.get();
	
		postr.save(p);
		return "dashboard";
	}


	@RequestMapping("postdesorted")
	public ModelAndView postdesorted()
	{
		List<Post>postList=postr.getPostDeSorted(); //query From Repo by user

		ModelAndView mv=new ModelAndView();
		mv.addObject("postList",postList);
		//mv.setViewName("usershow"); 
		mv.setViewName("dashboard"); 
		return mv;

	}

	@RequestMapping("postsorted")
	public ModelAndView postsorted()
	{
//		int user_userx_id=usercontroller.userx_id;
//		String user_userx_name=usercontroller.userx_name;
//		User user_details1 =user_details.get();
		
		List<Post>postList=postr.findAll(); //query From Repo by user
		ModelAndView mv=new ModelAndView();
		mv.addObject("postList",postList);
		mv.setViewName("dashboard"); 
		return mv;

	}







	//	//@PostMapping(value="/{x}/add",produces="application/json")
	//	@PostMapping(value="/admin/add",produces="application/json")
	//	//public List<AAperson> addAdmin(@RequestBody object a) throws Exception
	//	public List<Ids> addAdmin(@RequestBody Admin a) throws Exception
	//	{
	//		List<Ids>l=aser.addAdmin(a);
	//		if(l.size()<=0)
	//		{
	//			throw new Exception("Resource not Inaserted");
	//		}
	//		return l;
	//	}




	//	return "dashboard2";


	//	@RequestMapping("/{user}/{post}/add")
	//	public String addPost(Post s)
	//	{
	//		postr.save(s);
	//		return "home";
	//	}

	//	@RequestMapping("/user/find")
	//	public ModelAndView singleStudent(@RequestParam int uid)
	//	{
	//		ModelAndView mv=new ModelAndView("usershow");
	//		
	//		Optional<User>o=postr.findById(uid);
	//		User s=o.get();
	//		mv.addObject("s",s);
	//		return mv;
	//	}

	//	
	//	
	//	@RequestMapping("/{user}/{post}/showall")
	//	public ModelAndView showStudent(User s)
	//	{
	//		ModelAndView mv=new ModelAndView("usershow");
	//		mv.addObject("s",s);
	//		return mv;
	//	}
	//	
	//	
	//	



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
