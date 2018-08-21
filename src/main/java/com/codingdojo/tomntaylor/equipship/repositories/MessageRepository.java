package com.codingdojo.tomntaylor.equipship.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.tomntaylor.equipship.models.Message;
import com.codingdojo.tomntaylor.equipship.models.User;

@Repository
public interface MessageRepository extends CrudRepository<Message, Long> {
	List<Message> findAll();
	List<Message> findAllByRecipient(User recipient);
	List<Message> findAllBySender(User sender);
}
