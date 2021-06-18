package com.example.LoginForm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.LoginForm.dao.UserService;
import com.example.LoginForm.domain.Doctor;
import com.example.LoginForm.domain.Patient;
import com.example.LoginForm.domain.User;
import com.example.LoginForm.repository.DoctorRepository;
import com.example.LoginForm.repository.PatientRepository;

@Controller
public class UserController {

	@Autowired
	UserService userservice;

	@Autowired
	User user;
	
	@Autowired
	DoctorRepository docrepo;
	
	@Autowired
	PatientRepository patrepo;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submitlogin(@ModelAttribute("user") User user, HttpSession session) {
		User fromDB = userservice.getByEmail(user.getEmail());
		if ((fromDB.getPassword().equals(user.getPassword())) && (fromDB.getRole().equals(user.getRole()))) {
			if (user.getRole().equals("patient")) {
				//session.setAttribute("pId", patientRepository.findByEmail(fromDB.getEmail()).getId());
				//session.setAttribute("pEmail", patientRepository.findByEmail(fromDB.getEmail()).getEmail());
				Patient pat = patrepo.findBypEmail(user.getEmail());
//				System.out.println(pat);
				session.setAttribute("pat", pat);
				return "patientHome";
			}
			else if(user.getRole().equals("doctor")){
				Doctor doc=docrepo.findBydEmail(user.getEmail());
				session.setAttribute("doc", doc);
				return "doctorHome";
			}
			 else 
					return "adminHome";
				
		} else
			return "home";

	}

}