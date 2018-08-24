package com.codingdojo.tomntaylor.equipship.controllers;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.tomntaylor.equipship.models.Category;
import com.codingdojo.tomntaylor.equipship.models.Meeting;
import com.codingdojo.tomntaylor.equipship.models.Message;
import com.codingdojo.tomntaylor.equipship.models.Review;
import com.codingdojo.tomntaylor.equipship.models.User;
import com.codingdojo.tomntaylor.equipship.services.CategoryService;
import com.codingdojo.tomntaylor.equipship.services.MeetingService;
import com.codingdojo.tomntaylor.equipship.services.MessageService;
import com.codingdojo.tomntaylor.equipship.services.ReviewService;
import com.codingdojo.tomntaylor.equipship.services.UserService;



@Controller
public class HomeController {
	private final UserService userService;
	private final MeetingService meetingService;
	private final ReviewService reviewService;
	private final MessageService messageService;
  private final CategoryService categoryService;
	
	public HomeController(UserService userService, CategoryService categoryService, MeetingService meetingService, ReviewService reviewService, MessageService messageService) {
		this.meetingService = meetingService;
		this.userService = userService;
		this.reviewService = reviewService;
		this.messageService = messageService;
    this.categoryService = categoryService;
	}
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Category> categories = categoryService.allCategories();
		model.addAttribute("categories", categories);
		return "home.jsp";
	}
	
//	---------------------------------------test---------------------------------------
	
	
	
	
	
	
//	---------------------------------------test---------------------------------------

	@RequestMapping("/showcategory/{id}")
	public String showCategory(Model model, @PathVariable("id") Long id) {
		Category thiscategory = categoryService.findById(id);
		model.addAttribute("thiscategory", thiscategory);
		return "showcategory.jsp";
	}
	
	@RequestMapping("/myprofile")
	public String myProfile(Model model, HttpSession session) {
		if(session.getAttribute("userId")== null) {
			return "redirect:/loginreg";
		}else {
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		model.addAttribute("user", user);
		List<Category> categories = categoryService.allCategories();
		model.addAttribute("categories", categories);
		return "myprofile.jsp";
		}
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
	
	
//	---------------------------------------mentor---------------------------------------

	
	@RequestMapping("/mymentors")
	public String myMentorys(HttpSession session, Model model, @ModelAttribute("meeting")Meeting meeting) {
		if(session.getAttribute("userId")== null) {
			return "redirect:/loginreg";
		}else {
		Long id = (long) session.getAttribute("userId");
		User user = userService.findUserById(id);
		List<User> mentors = user.getMentors();
		model.addAttribute("mentors", mentors);		
		List<Message> msgRec = messageService.getByRec(user);
		model.addAttribute("msgRec", msgRec);
		
		
		
		return "mymentors.jsp";
		}
	}
	
	@RequestMapping(value="/{id}/requestSession", method=RequestMethod.POST)
	public String requestMeeting(@PathVariable("id") Long id, HttpSession session, @ModelAttribute("meeting")Meeting meeting, BindingResult result) {
		
		Long iD = (long) session.getAttribute("userId");
		User requestor = userService.findUserById(iD);
		User requestee = userService.findUserById(id);
		if(result.hasErrors()){
			return "mymentor.jsp";
		}else {
			Meeting m = meetingService.createMeeting(meeting);
			m.setRequestor(requestor);
			m.setRequestee(requestee);
			m.setAccepted(false);
			m.setCompleted(false);
			meetingService.updateMeeting(m);
			return "redirect:/mymentors";
		}

	}
	
	@RequestMapping(value="/{id}/review", method=RequestMethod.POST)
	public String rateMentor(@PathVariable("id")Long id, @RequestParam("rating") int rating, @RequestParam("review")String review, HttpSession session) {
		User user = userService.findUserById(id);
		Long iD = (long) session.getAttribute("userId");
		User thisUser = userService.findUserById(iD);
		Review r = new Review();
		r.setRating(rating);
		r.setReviewContent(review);
		Review reView = reviewService.createReview(r);
		reView.setReviewer(thisUser);
		reView.setReviewee(user);
		user.getReceivedReviews().add(reView);
		user.setAvgRating();
		userService.updateUser(user);
		reviewService.updateReview(reView);
		return "redirect:/mymentors";
	}
	
	@RequestMapping(value="/{id}/message", method=RequestMethod.POST)
	public String sendMessage(@PathVariable("id")Long id, @RequestParam("message")String message, HttpSession session) {
		Long iD = (long) session.getAttribute("userId");
		User thisUser = userService.findUserById(iD);
		User user = userService.findUserById(id);
		Message msg = new Message(message);
		Message msG = messageService.createMessage(msg);
		msG.setRecipient(user);
		msG.setSender(thisUser);
		messageService.updateMessage(msG);
		return "redirect:/mymentors";
		
	}
	
//	---------------------------------------mentee---------------------------------------
	
	@RequestMapping("/mymentees")
	public String myMentees(HttpSession session, Model model) {
		if(session.getAttribute("userId")== null) {
			return "redirect:/loginreg";
		}else {
		Long id = (long) session.getAttribute("userId");
		User user = userService.findUserById(id);
		List<User> mentees = user.getMentees();
		model.addAttribute("mentees", mentees);
		List<Meeting> mForMe = meetingService.allMeetingfor(user);
		model.addAttribute("meetingForMe", mForMe);
		List<Message> messages = messageService.getByRec(user);
		model.addAttribute("messages", messages);
		return "mymentees.jsp";
		}
	}

	@RequestMapping("/admin")
	public String showAdminPortal(Model model, HttpSession session) {
		if(session.getAttribute("userId")== null) {
			return "redirect:/loginreg";
		}else {
			if((int) session.getAttribute("userLv") < 9) {
				session.invalidate();
				return "redirect:/loginreg";
			}else {
			List<User> users = userService.allUsers();
			model.addAttribute("users", users);
			return "adminportal.jsp";
			}
		}
	}
	
	@RequestMapping(value="/admin/deleteuser/{id}", method=RequestMethod.POST)
	public String deleteUser(@PathVariable("id") Long id) {
		userService.deleteUser(id);
		return "redirect:/admin";
	}
	
	@RequestMapping(value="/admin/changeUserLevel/{id}", method=RequestMethod.POST)
	public String changeUserLevel(@PathVariable("id") Long id) {
		User user = userService.findUserById(id);
		if(user.getUser_level() == 1) {
			user.setUser_level(9);
			userService.updateUser(user);
			return "redirect:/admin";
		}else {
			user.setUser_level(1);
			userService.updateUser(user);
			return "redirect:/admin";
		}
	}

	@RequestMapping(value="accept/{id}", method=RequestMethod.POST)
	public String acceptMeeting(@PathVariable("id")Long id) {
		Meeting m = meetingService.findById(id);
		m.setAccepted(true);
		meetingService.updateMeeting(m);
		return "redirect:/mymentees";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.POST)
	public String deleteMeeting(@PathVariable("id")Long id) {
		meetingService.deleteMeeting(id);
		return "redirect:/mymentees";
	}
	
	@RequestMapping(value="/complete/{id}", method=RequestMethod.POST)
	public String markComplete(@PathVariable("id")Long id) {
		Meeting m = meetingService.findById(id);
		m.setCompleted(true);
		meetingService.updateMeeting(m);
		return "redirect:/mymentees";
	}
	@RequestMapping(value="/{id}/messages", method=RequestMethod.POST)
	public String sendMessages(@PathVariable("id")Long id, @RequestParam("message")String message, HttpSession session) {
		Long iD = (long) session.getAttribute("userId");
		User thisUser = userService.findUserById(iD);
		User user = userService.findUserById(id);
		Message msg = new Message(message);
		Message msG = messageService.createMessage(msg);
		msG.setRecipient(user);
		msG.setSender(thisUser);
		messageService.updateMessage(msG);
		return "redirect:/mymentees";
		
	}
	
	
	
	
	
//	---------------------------------------Test---------------------------------------
	
	
	
	
	

}




