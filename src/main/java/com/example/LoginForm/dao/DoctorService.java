package com.example.LoginForm.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.LoginForm.domain.Doctor;
import com.example.LoginForm.repository.DoctorRepository;

@Component
public class DoctorService implements DoctorDao{
	
	@Autowired
	DoctorRepository doctorRepository;
	
	@Override
	public void addDoctor(Doctor doctor) {
		doctorRepository.save(doctor);
	}
	
	 @Override 
	 public List<Doctor> getAllDoctor() {
	 
	 List<Doctor> doctorList = doctorRepository.findAll(); 
	 return doctorList; 
	 }
	 
	@Override
	public Doctor editdoctor(int d_id) {
		// TODO Auto-generated method stub
		
		Doctor doctor = doctorRepository.findById(d_id).get();
		return doctor;

	}

//	@Override
//	public Doctor getDoctor(String docname) {
//		// TODO Auto-generated method stub
//		return doctorRepository.;
//	}
	


	

}