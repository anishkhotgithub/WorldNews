package com.example.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.Repository.UserRepository;
import com.example.model.User;

@Controller
@RequestMapping("/user")
public class UserController 
{
	@Autowired
	private UserRepository userRepo;
	
	@GetMapping("/register")
	public String view1(ModelMap map)
	{
		map.addAttribute("user",new User());
		return "register";
	}
	
	@PostMapping(value="/inserted")
	public String views2(@Valid @ModelAttribute("user") User user,BindingResult br)
	{
		if(!br.hasErrors())
		{
			user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
			userRepo.save(user);
			return "redirect:/user/login";
		}
		return "register";
	}
	@GetMapping("/login")
	public String view3()
	{
		return "login";
	}
	@GetMapping("/login-error")
	@ResponseBody
	public String view4()
	{
		return "<script>"
				+ "alert('Username or password is incorrect');"
				+ "window.location='/user/login';"
				+ "</script>";
	}
	@RequestMapping(value = "recordPage" ,method = RequestMethod.GET)
	public String view5(Model m)
	{
		List list=userRepo.findAll();
		if(!list.isEmpty())
		{
			m.addAttribute("data", list);
		}
		else
		{
			m.addAttribute("msg", "Sorry record not found!");
		}
		return "recordPage";
	}
	@RequestMapping(value = "recordUpdate",method=RequestMethod.POST)
	public String view6(Model m,User u)
	{
		u.setUserid(u.getUserid());
		userRepo.save(u);
		m.addAttribute("data", userRepo.findAll());
		return "redirect:recordPage";
	}
	@RequestMapping(value = "recordDelete",method=RequestMethod.POST)
	public String view7(Model m,User u)
	{
		userRepo.deleteById(u.getUserid());
		m.addAttribute("data", userRepo.findAll());
		m.addAttribute("msgss", "Delete successfully...");
		return "redirect:recordPage";
	}
}