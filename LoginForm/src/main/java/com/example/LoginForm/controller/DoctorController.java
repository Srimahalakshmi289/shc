package com.example.LoginForm.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.LoginForm.dao.DoctorService;

import com.example.LoginForm.dao.UserService;
import com.example.LoginForm.domain.Appointment;
import com.example.LoginForm.domain.Doctor;
import com.example.LoginForm.domain.Patient;
import com.example.LoginForm.domain.Prescription;
import com.example.LoginForm.domain.User;
import com.example.LoginForm.repository.AppointmentRepository;
import com.example.LoginForm.repository.DoctorRepository;
import com.example.LoginForm.repository.PatientRepository;
import com.example.LoginForm.repository.PrescriptionRepository;

@Controller
public class DoctorController {
	@Autowired
	DoctorRepository docrepo;

	@Autowired
	DoctorService doctorService;

	@Autowired
	UserService userService;

	@Autowired
	PatientRepository patrepo;

	@Autowired
	PrescriptionRepository presrepo;

	@Autowired
	AppointmentRepository appointmentRepository;

	@RequestMapping("/add_doctors")
	public String getSignup(ModelMap model) {
		Doctor doctor = new Doctor();
		model.put("doctor", doctor);
		return "add_doctors";
	}

	@RequestMapping(value = "/add_doctors", method = RequestMethod.POST)
	public String saveDoctor(@ModelAttribute("doctor") Doctor doctor) {

		doctorService.addDoctor(doctor);
		User user = new User();
		user.setEmail(doctor.getdEmail());
		user.setPassword(doctor.getPassword());
		user.setRole(doctor.getD_role());
		userService.saveUser(user);
		return "redirect:/doctor_list";
	}

	@RequestMapping("/doctor_list")
	public String doctor(ModelMap modelmap) {
		List<Doctor> doctorList = doctorService.getAllDoctor();
		modelmap.put("doctorList", doctorList);
		return "doctor_list";
	}

	@RequestMapping("/editDoctor/{d_id}")
	public String updateDoctor(@PathVariable(value = "d_id") int d_id, ModelMap modelMap) {
		Doctor editedDoctor = doctorService.editdoctor(d_id);
		modelMap.addAttribute("editedDoctor", editedDoctor);
		return "editDoctor";
	}

	@RequestMapping("/deleteDoctor/{d_id}")
	public String deleteDoct(@PathVariable(value = "d_id") int d_id) {
		docrepo.deleteById(d_id);
		return "redirect:/doctor_list";

	}

	@RequestMapping(value = "/retrieve_patient", method = RequestMethod.POST)
	public String retrievePatient(@RequestParam("email") String email, ModelMap modelMap) {
		Patient pat = patrepo.findBypEmail(email);
		if (Objects.isNull(pat)) {
			modelMap.addAttribute("msg", "Invalid");
			return "patientnotfound";
		}

		modelMap.addAttribute("pat", pat);
		return "retrieve_patient";
	}

	@RequestMapping("/prescribe/{apid}")
	public String presMed(@PathVariable(value = "apid") int apid, ModelMap map) {
		Prescription pres = new Prescription();
		Appointment app = appointmentRepository.getOne(apid);
		map.put("pres", pres);
		map.put("name", app.getA_name());
		map.put("dId", app.getDid());
		map.put("pid", app.getPid());
		map.put("aid", app.getA_id());
		return "prescription";
	}

	@RequestMapping(value = "/savepres", method = RequestMethod.POST)
	public String savePres(@ModelAttribute("pres") Prescription pres) {
		presrepo.save(pres);
		return "prescription";
	}

	@RequestMapping("/presHist/{apid}")
	public String presHist(@PathVariable(value = "apid") int apid, ModelMap map) {
		List<Prescription> presHist = presrepo.findByAid(apid);
		if (presHist.isEmpty()) {
			map.addAttribute("msg", " You Haven't Prescribed ..!");
			return "preshist";
		}
		map.put("presHist", presHist);
		return "preshist";
	}

	
	@RequestMapping("/doc_appt_requests/{did}")
	public String appoHist(@PathVariable(value = "did") int did, ModelMap map) {
		List<Appointment> appList = appointmentRepository.findByDid(did);
		map.put("appList", appList);
		System.out.println(appList);
		return "doc_appt_requests";
	}
	
	@RequestMapping("/appReq/{did}")
	public String doctorRequests(@PathVariable(value = "did") int did, ModelMap map) {
		List<Appointment> appList = appointmentRepository.findByDid(did);
		map.put("appList", appList);
		System.out.println(appList);
		return "appointmenthistory";
	}
	

}
