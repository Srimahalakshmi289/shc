package com.example.LoginForm.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.LoginForm.domain.Patient;
import com.example.LoginForm.repository.PatientRepository;

@Component
public class PatientService implements PatientDao{
	@Autowired
	PatientRepository patientRepository;
	
	@Override
	public void addPatient(Patient patient) {
		patientRepository.save(patient);
	}


}