package com.codingdojo.tomntaylor.equipship.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.tomntaylor.equipship.models.Meeting;
import com.codingdojo.tomntaylor.equipship.models.User;
import com.codingdojo.tomntaylor.equipship.repositories.MeetingRepository;

@Service
public class MeetingService {
	private MeetingRepository meetingRepository;
	
	public MeetingService(MeetingRepository meetingRepository) {
		this.meetingRepository = meetingRepository;
	}
	
	public Meeting createMeeting(Meeting meeting) {
		return meetingRepository.save(meeting);
	}

	
	public Meeting findById(Long id) {
		Meeting m = meetingRepository.findOne(id);
		return m;
	}
	
	public List<Meeting> allMeetings() {
		return (List<Meeting>) meetingRepository.findAll();
	}
	
	public void updateMeeting(Meeting meeting) {
		meetingRepository.save(meeting);
	}
	
	public List<Meeting> allMeetingfor(User user){
		return meetingRepository.findAllByRequestee(user);
	}
	
	
	public void deleteMeeting(Long id) {
		meetingRepository.delete(id);
	}
}
