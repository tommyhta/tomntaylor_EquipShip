package com.codingdojo.tomntaylor.equipship.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.tomntaylor.equipship.models.Meeting;
import com.codingdojo.tomntaylor.equipship.models.User;

@Repository
public interface MeetingRepository extends CrudRepository<Meeting, Long> {
	List<Meeting> findAll();
	List<Meeting> findAllByRequestor(User requestor);
	List<Meeting> findAllByRequestee(User requestee);
	
}
