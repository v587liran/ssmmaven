package com.codet.user.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codet.user.pojo.Custom;
import com.codet.user.pojo.User;
import com.codet.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("login")
	public String login(User user,HttpSession session,Model model) throws Exception{
		
		boolean flag=false;
		
		flag=userService.login(user);
		
		if(flag){
			
			session.setAttribute("user", user);
			
			return "page/user/user_main";
			
		} 
		return "admin_login.jsp";
		
	}
	
	@RequestMapping("customList")
	public String customList(Model model) throws Exception{
		
		List<Custom> customList=userService.selectCustomAll();
		
		model.addAttribute("customList", customList);
		
		return "page/user/custom_list";
	}
	
	@RequestMapping("forward")
	public String forward(Model model) throws Exception{
		
		model.addAttribute("message","跳转成功");
		model.addAttribute("url", "/page/user/index.jsp");
		return "forward";
	}
}
