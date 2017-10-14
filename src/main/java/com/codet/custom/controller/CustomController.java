package com.codet.custom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codet.custom.pojo.Custom;
import com.codet.custom.service.CustomService;
import com.codet.user.service.UserService;

@Controller
@RequestMapping("/custom")
public class CustomController {

	
	@Autowired
	private CustomService customService;
	
	
	@RequestMapping("customInsert")
	public String customInsert(Custom custom ) throws Exception{

		custom.setCustomid("0225");
	
		customService.customInsert(custom);
		
		
		return "page/user/custom_list";
	}
	
}
