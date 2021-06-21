package com.example.LoginForm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Doctor;


public interface DoctorDao {
	
	 public List<Doctor> getAllDoctor();
	 public void addDoctor(Doctor doctor);
	 public Doctor editdoctor(int d_id);
//	 public Doctor getDoctor(String docname);
}
