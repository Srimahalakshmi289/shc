package com.example.LoginForm.repository;




import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Doctor;
import com.example.LoginForm.domain.Patient;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer>{
	Doctor findBydEmail(String email);

// 
//	Doctor findAll(String doc_name);

}
