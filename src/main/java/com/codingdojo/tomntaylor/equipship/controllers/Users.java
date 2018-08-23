package com.codingdojo.tomntaylor.equipship.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.tomntaylor.equipship.models.User;
import com.codingdojo.tomntaylor.equipship.services.UserService;
import com.codingdojo.tomntaylor.equipship.validators.UserValidator;



@Controller
public class Users {
	private final UserService userService;
	
	private final UserValidator userValidator;
	
	public Users(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
	
	@RequestMapping("/loginreg")
	public String loginregForm(@ModelAttribute("user") User user) {
		return "loginreg.jsp";
	}
	
	@PostMapping("/registration")
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			return "loginreg.jsp";
		}
		user.setUser_level(1);
		User u = userService.registerUser(user);
		session.setAttribute("userId", u.getId());
		session.setAttribute("userLv", u.getUser_level());
		session.setAttribute("firstName", u.getFirstName());
		return "redirect:/";
	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,RedirectAttributes redirectAttribute, Model model, HttpSession session) {
		boolean isAuthenticated = userService.authenticateUser(email, password);
		if(isAuthenticated) {
			User u = userService.findByEmail(email);
			session.setAttribute("userId", u.getId());
			session.setAttribute("userLv", u.getUser_level());
			session.setAttribute("firstName", u.getFirstName());
			return "redirect:/";
		} else {
			redirectAttribute.addFlashAttribute("error", "Invalid Credential");
			return "redirect:/loginreg";
		}
	}
	
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/loginreg";
	}
}

