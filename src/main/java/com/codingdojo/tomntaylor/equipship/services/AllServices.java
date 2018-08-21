package com.codingdojo.tomntaylor.equipship.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.tomntaylor.equipship.repositories.CategoryRepository;
import com.codingdojo.tomntaylor.equipship.repositories.MeetingRepository;
import com.codingdojo.tomntaylor.equipship.repositories.MessageRepository;
import com.codingdojo.tomntaylor.equipship.repositories.ReviewRepository;

@Service
public class AllServices {
	@Autowired
	ReviewRepository reviewRepo;
	@Autowired
	MessageRepository messageRepo;
	@Autowired
	MeetingRepository meetingRepo;
	@Autowired
	CategoryRepository categoryRep;
	
	
}
