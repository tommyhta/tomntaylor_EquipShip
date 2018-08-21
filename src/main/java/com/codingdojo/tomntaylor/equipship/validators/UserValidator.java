package com.codingdojo.tomntaylor.equipship.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.codingdojo.tomntaylor.equipship.models.User;
import com.codingdojo.tomntaylor.equipship.repositories.UserRepository;



@Component
public class UserValidator implements Validator {
	private final UserRepository uRepo;
	public UserValidator(UserRepository uRepo) {
		this.uRepo = uRepo;
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		if(uRepo.findByEmail(user.getEmail()) != null) {
			errors.rejectValue("email", "emailDup");
		}
		if(!user.getPasswordConfirmation().equals(user.getPassword())) {
			errors.rejectValue("passwordConfirmation", "passwordConfirm");
		}
	}
}