package com.example.LoginForm.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer>{
	
	@Query("from Patient where p_email=?1")
	List<Patient> findByEMAIL(String p_email);
	
	
	Patient findBypEmail(String email);

}
