package com.example.LoginForm.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.LoginForm.domain.Admin;
import com.example.LoginForm.repository.AdminRepository;




@Component
public class AdminService implements AdminDao{
	@Autowired
	AdminRepository adminRepository;
	
	@Autowired
	Admin admin;
	
	@Override
	public void addQuery(Admin admin) {
		adminRepository.save(admin);
	}

}