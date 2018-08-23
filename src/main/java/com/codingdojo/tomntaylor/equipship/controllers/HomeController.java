package com.codingdojo.tomntaylor.equipship.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.tomntaylor.equipship.models.Category;
import com.codingdojo.tomntaylor.equipship.models.User;
import com.codingdojo.tomntaylor.equipship.services.CategoryService;
import com.codingdojo.tomntaylor.equipship.services.UserService;



@Controller
public class HomeController {
	private final UserService userService;
	private final CategoryService categoryService;
	
	public HomeController(UserService userService, CategoryService categoryService) {
		this.userService = userService;
		this.categoryService = categoryService;
	}
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Category> categories = categoryService.allCategories();
		model.addAttribute("categories", categories);
		return "home.jsp";
	}
	
	@RequestMapping("/showcategory/{id}")
	public String showCategory(Model model, @PathVariable("id") Long id) {
		Category thiscategory = categoryService.findById(id);
		model.addAttribute("thiscategory", thiscategory);
		return "showcategory.jsp";
	}
	
	@RequestMapping("/myprofile")
	public String myProfile(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		model.addAttribute("user", user);
		List<Category> categories = categoryService.allCategories();
		model.addAttribute("categories", categories);
		return "myprofile.jsp";
	}
	
	@PostMapping("/myprofile/edittagline")
	public String updateTagline(@RequestParam("tagline") String tagline, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		user.setTagline(tagline);
		userService.updateUser(user);
		return "redirect:/myprofile";
	}
	
	@PostMapping("/myprofile/editdescription")
	public String updateDescription(@RequestParam("description") String description, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		user.setDescription(description);
		userService.updateUser(user);
		return "redirect:/myprofile";
	}
	
	@PostMapping("/myprofile/editbillingrate")
	public String updateBillingRate(@RequestParam("billingrate") float billingrate, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		user.setBillingRate(billingrate);
		userService.updateUser(user);
		return "redirect:/myprofile";
	}
	
	@PostMapping("/myprofile/addcategory")
	public String addCategory(@RequestParam("category") String id, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		List<Category> userCategories = user.getUserCategories();
		Long categoryId = Long.parseLong(id);
		Category newCategory = categoryService.findById(categoryId);
		userCategories.add(newCategory);
		user.setUserCategories(userCategories);
		userService.updateUser(user);
		return "redirect:/myprofile";
	}
	
	@RequestMapping("/myprofile/removecategory/{id}")
	public String removeCategory(@PathVariable("id") String id, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		List<Category> userCategories = user.getUserCategories();
		Long categoryId = Long.parseLong(id);
		Category categoryToRemove = categoryService.findById(categoryId);
		for(int i = 0; i < userCategories.size(); i++) {
			if(userCategories.get(i).getId() == categoryId) {
				userCategories.remove(i);
				user.setUserCategories(userCategories);
				userService.updateUser(user);
			}
		}
		return "redirect:/myprofile";
	}
	
	@RequestMapping("/addmentor/{id}")
	public String addMentor(@PathVariable("id") Long id, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		List<User> userMentors = user.getMentors();
		User newMentor = userService.findUserById(id);
		userMentors.add(newMentor);
		user.setMentors(userMentors);
		userService.updateUser(user);
		return "redirect:/mymentors";
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
	public String showAdminPortal(Model model) {
		List<User> users = userService.allUsers();
		model.addAttribute("users", users);
		return "adminportal.jsp";
	}
	
	@RequestMapping("/admin/deleteuser/{id}")
	public String deleteUser(@PathVariable("id") Long id) {
		userService.deleteUser(id);
		return "redirect:/admin";
	}
}
