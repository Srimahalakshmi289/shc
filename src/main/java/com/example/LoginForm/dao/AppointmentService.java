package com.example.LoginForm.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.LoginForm.domain.Appointment;
import com.example.LoginForm.domain.Doctor;
import com.example.LoginForm.repository.AppointmentRepository;

@Component
public class AppointmentService implements AppointmentDao{
	
	@Autowired
	AppointmentRepository appointmentrepository;
	
	public void addAppointment(Appointment appointment) {
		appointmentrepository.save(appointment);
	}
}
