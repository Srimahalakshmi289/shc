package com.example.LoginForm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Prescription;


@Repository
public interface PrescriptionRepository extends JpaRepository<Prescription, Integer> {

	public List<Prescription> findByPid(int pid);
	public List<Prescription> findByDid(int did);
	public List<Prescription> findByAid(int aid);

}
