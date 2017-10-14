package com.codet.testuser.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.codet.testuser.pojo.TestUser;
import com.codet.testuser.service.ITestUserService;

@Controller
@RequestMapping("/testuser")
public class TestUserController {

	@Autowired
	private ITestUserService iTestUserService;

	@RequestMapping("/login")
	public String login(HttpSession session,ModelAndView modelAndView,TestUser testUser) throws Exception {

		boolean flag=false;
		flag=iTestUserService.login(testUser);
		
		if(flag){
			modelAndView.addObject("testUser", testUser);
			return "success";
		}
		
		return "fail";
	}
}
