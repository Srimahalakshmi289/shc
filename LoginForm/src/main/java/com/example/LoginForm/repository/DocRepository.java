package com.example.LoginForm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.LoginForm.domain.Doc;




public interface DocRepository  extends JpaRepository<Doc,Integer>{

	List<Doc> findByApid(String apid);
}
