package com.example.LoginForm.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.LoginForm.domain.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String>{
	@Query("from Admin where name=?1")
	List<Admin> findByEMAIL(String name);

}