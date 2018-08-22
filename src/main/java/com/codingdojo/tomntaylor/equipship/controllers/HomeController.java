package com.codingdojo.tomntaylor.equipship.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.tomntaylor.equipship.services.UserService;



@Controller
public class HomeController {
	private final UserService userService;
	
	public HomeController(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/showcategory")
	public String showCategory() {
		return "showcategory.jsp";
	}
	
	@RequestMapping("/myprofile")
	public String myProfile() {
		return "myprofile.jsp";
	}
	
	@RequestMapping("/mymentors")
	public String myMentorys() {
		return "mymentors.jsp";
	}
	
	@RequestMapping("/mymentees")
	public String myMentees() {
		return "mymentees.jsp";
	}
	
	@RequestMapping("/admin")
	public String showAdminPortal() {
		return "adminportal.jsp";
	}
}
