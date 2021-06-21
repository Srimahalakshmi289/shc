package com.example.LoginForm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.LoginForm.dao.AppointmentService;
import com.example.LoginForm.dao.DoctorService;
import com.example.LoginForm.dao.PatientService;
import com.example.LoginForm.dao.UserService;
import com.example.LoginForm.domain.Appointment;
import com.example.LoginForm.domain.Doctor;
import com.example.LoginForm.domain.Patient;
import com.example.LoginForm.domain.User;
import com.example.LoginForm.repository.AppointmentRepository;
import com.example.LoginForm.repository.DoctorRepository;
import com.example.LoginForm.repository.PatientRepository;

@Controller
@CrossOrigin(origins="http://localhost:4200")
@SessionAttributes("pat")
public class PatientController {

	@Autowired
	PatientRepository patrepo;

	@Autowired
	Patient patient;

	@Autowired
	PatientService patientService;

	@Autowired
	UserService userService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	AppointmentService appointmentService;

	@Autowired
	DoctorRepository doctorRepository;
	

	@Autowired
	AppointmentRepository apprepo;

	@RequestMapping("/register")
	public String getSignup(ModelMap model) {
		Patient patient = new Patient();
		model.put("patient", patient);
		return "home";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String savePatient(@ModelAttribute("patient") Patient patient) {

		patientService.addPatient(patient);
		User user = new User();
		user.setEmail(patient.getpEmail());
		user.setPassword(patient.getPassword());
		user.setRole(patient.getP_role());
		userService.saveUser(user);
		return "home";
	}

	@RequestMapping("/bookappointment/{did}")
	public String bookAppointment(@PathVariable(value = "did") int did, ModelMap modelmap) {
		Doctor doctor = doctorRepository.getOne(did);
		modelmap.addAttribute("doctor", doctor);
		Appointment appointment = new Appointment();
		modelmap.put("appointment", appointment);
		modelmap.put("doctor", doctor);
		
		return "apptform";
	}

	@RequestMapping(value = "/saveappointment", method = RequestMethod.POST)
	public String saveAppointment(@ModelAttribute("appointment") Appointment appointment) {
		appointmentService.addAppointment(appointment);
		return "pat_prof";
	}

	@RequestMapping("/patient_make_appt")
	public String AppDocList(ModelMap modelMap) {
		List<Doctor> DocList = doctorRepository.findAll();
		modelMap.put("DocList", DocList);
		return "patient_make_appt";
	}

	@RequestMapping("/appointmentHistoryPat/{pid}")
	public String AppHis(@PathVariable(value = "pid") int pid, ModelMap modelmap) {
		List<Appointment> applistpat = apprepo.findByPid(pid);
		modelmap.put("applistpat", applistpat);
		return "appointmentHistoryPat";
	}
	
	@RequestMapping("/editpat/{pid}")
	public String editPat(@PathVariable(value = "pid") int pid, ModelMap modelMap) {
		modelMap.addAttribute("pat", patrepo.getOne(pid));
	return "editPatient";
	}
	@RequestMapping(value = "/updateprofile", method = RequestMethod.POST)
	public String saveAppointment(@ModelAttribute("pat") Patient pat) {
		patrepo.save(pat);
		return "pat_prof";
	}

	
	

}