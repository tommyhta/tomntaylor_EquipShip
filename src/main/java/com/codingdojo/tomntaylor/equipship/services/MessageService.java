package com.codingdojo.tomntaylor.equipship.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.tomntaylor.equipship.models.Message;
import com.codingdojo.tomntaylor.equipship.models.User;
import com.codingdojo.tomntaylor.equipship.repositories.MessageRepository;

@Service
public class MessageService {
	private MessageRepository messageRepository;
	
	public MessageService(MessageRepository messageRepository) {
		this.messageRepository = messageRepository;
	}
	
	public Message createMessage(Message message) {
		return messageRepository.save(message);
	}
	
	public List<Message> getByRec(User user){
		return messageRepository.findAllByRecipient(user);
	}
	 
	public Message findById(Long id) {
		Message m = messageRepository.findOne(id);
		return m;
	}
	
	public List<Message> allMessages() {
		return (List<Message>) messageRepository.findAll();
	}
	
	public void updateMessage(Message message) {
		messageRepository.save(message);
	}
	
	public void deleteMessage(Long id) {
		messageRepository.delete(id);
	}
}
