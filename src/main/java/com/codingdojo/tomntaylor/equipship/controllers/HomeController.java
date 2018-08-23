package com.codingdojo.tomntaylor.equipship.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.tomntaylor.equipship.models.Meeting;
import com.codingdojo.tomntaylor.equipship.models.Message;
import com.codingdojo.tomntaylor.equipship.models.Review;
import com.codingdojo.tomntaylor.equipship.models.User;
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
	
	public HomeController(UserService userService, MeetingService meetingService, ReviewService reviewService, MessageService messageService) {
		this.meetingService = meetingService;
		this.userService = userService;
		this.reviewService = reviewService;
		this.messageService = messageService;
	}
	
	@RequestMapping("/showcategory")
	public String showCategory() {
		return "showcategory.jsp";
	}
	
	@RequestMapping("/myprofile")
	public String myProfile() {
		return "myprofile.jsp";
	}
	
	
	
	@RequestMapping("/admin")
	public String showAdminPortal() {
		return "adminportal.jsp";
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
		System.out.println(msgRec);
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
//	---------------------------------------messages---------------------------------------

	
	
	
	
}




