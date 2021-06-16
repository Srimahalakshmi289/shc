package com.example.LoginForm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.LoginForm.domain.User;
import com.example.LoginForm.repository.UserRepository;

@Component
public class UserService implements UserDao{
	@Autowired
	UserRepository userRepository;
	
	@Override
	public void saveUser(User user) {
		userRepository.save(user);
	}

	@Override
	public User getByEmail(String email) {
		User user=userRepository.findByEmail(email);
		return user;
	}
	

	
}
