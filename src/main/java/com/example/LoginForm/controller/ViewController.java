package com.example.LoginForm.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.LoginForm.domain.Admin;


@Controller
public class ViewController {

	@RequestMapping("/")
	public String loginPage() {
		return "home";
	}
	
	@RequestMapping("/doctor")
	public String doctorPage() {
		return "doctor";
	}
	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
	}
	@RequestMapping("/patient")
	public String patientPage() {
		return "patient";
	}
	@RequestMapping("/pat_prof")
	public String patientProfile() {
		return "pat_prof";
	}
	
	@RequestMapping("/patient_reg")
	public String patientReg() {
		return "patient_reg";
	}
	@RequestMapping("/patient_history")
	public String patientHistory() {
		return "patient_history";
	}
	@RequestMapping("/med_history")
	public String patientMedHistory() {
		return "med_history";
	}
	@RequestMapping("/prescription")
	public String prescription() {
		return "prescription";
	}
	@RequestMapping("/doctorprofile")
	public String doctorProfile() {
		return "doctorprofile";
	}
	@RequestMapping("/search_patient")
	public String patientSearch() {
		return "search_patient";
	}
	@RequestMapping("/querylist")
	public String queryList() {
		return "querylist";
	}
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	@RequestMapping("/loginpage")
	public String loginReg() {
		return "loginpage";
	}
	@RequestMapping("/doctorHome")
	public String doctorHome() {
		return "doctorHome";
	}
	@RequestMapping("/adminHome")
	public String adminHome() {
		return "adminHome";
	}
	@RequestMapping("/home")
	public String homePage() {
		return "home";
	}
	/*
	 * @RequestMapping("/doc") public String docUpload() { return "thymeleaf/doc"; }
	 * 
	 * @RequestMapping("/appointmentHistoryPat") public String appointment() {
	 * return "appointmentHistoryPat"; }
	 */
}
