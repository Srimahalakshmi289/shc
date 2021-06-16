package com.example.LoginForm.dao;



import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Appointment;

public interface AppointmentDao {
 
	public void addAppointment(Appointment appointment);
  }
