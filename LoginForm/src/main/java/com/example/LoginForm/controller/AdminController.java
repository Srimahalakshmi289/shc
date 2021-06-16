package com.example.LoginForm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.LoginForm.dao.AdminService;
import com.example.LoginForm.domain.Admin;
import com.example.LoginForm.repository.AdminRepository;

@Controller

public class AdminController {	
	@Autowired
	AdminRepository Adrepo;
	
	@Autowired
	Admin admin;
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/submit")
	public String submit(Model model) {
		model.addAttribute("admin", admin);
		return "helpdesk";
	}
	
	@RequestMapping("/helpdesk")
	public String helpDesk(ModelMap model)
	{
		Admin admin= new Admin();
		model.put("admin", admin);
		return "helpdesk";
	}
	@RequestMapping(value="/helpdesk", method=RequestMethod.POST)
	public String save(@ModelAttribute("admin") Admin admin)
	{
		
		adminService.addQuery(admin);
		return "helpdesk";	
	}
	
}