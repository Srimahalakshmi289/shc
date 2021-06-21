package com.example.LoginForm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Appointment;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment,Integer > {

	public List<Appointment> findByPid(int pId);
	public List<Appointment> findByDid(int dId);
}


