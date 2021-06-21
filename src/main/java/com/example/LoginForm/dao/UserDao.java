package com.example.LoginForm.dao;

import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.User;

public interface UserDao {
	public User getByEmail(String email);

	public void saveUser(User user);
}
