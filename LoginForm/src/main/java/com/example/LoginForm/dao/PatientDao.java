package com.example.LoginForm.dao;

import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Patient;

public interface PatientDao {
	 public void addPatient(Patient patient);
}