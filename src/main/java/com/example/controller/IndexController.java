package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class IndexController 
{
	
	@RequestMapping("/")
	public String view()
	{
		return "index";
	}
	@RequestMapping("/register")
	public String view1()
	{
		return "register";
	}
}
