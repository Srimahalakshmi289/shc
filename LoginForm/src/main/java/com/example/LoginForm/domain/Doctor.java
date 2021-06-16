package com.example.LoginForm.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="doctor_registration")
@Component 
public class Doctor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="d_id")
	private int d_id;
	@Column(name="d_name")
	private String d_name;
	@Column(name="dEmail")
	private String dEmail;
	@Column(name="d_gender")
	private String d_gender;
	@Column(name="password")
	private String password;
	@Column(name="d_city")
	private String d_city;
	@Column(name="d_bg")
	private String d_bg;
	@Column(name="d_dob")
	private String d_dob;
	@Column(name="d_phonenum")
	private String d_phonenum;
	@Column(name="department")
	private String department;
	@Column(name="d_role")
	private String d_role="doctor";
	

	public Doctor() {
		super();
		
	}


	public Doctor(int d_id, String d_name, String dEmail, String d_gender, String password, String d_city, String d_bg,
			String d_dob, String d_phonenum, String department, String d_role) {
		super();
		this.d_id = d_id;
		this.d_name = d_name;
		this.dEmail = dEmail;
		this.d_gender = d_gender;
		this.password = password;
		this.d_city = d_city;
		this.d_bg = d_bg;
		this.d_dob = d_dob;
		this.d_phonenum = d_phonenum;
		this.department = department;
		this.d_role = d_role;
	}


	public int getD_id() {
		return d_id;
	}


	public void setD_id(int d_id) {
		this.d_id = d_id;
	}


	public String getD_name() {
		return d_name;
	}


	public void setD_name(String d_name) {
		this.d_name = d_name;
	}


	public String getdEmail() {
		return dEmail;
	}


	public void setdEmail(String dEmail) {
		this.dEmail = dEmail;
	}


	public String getD_gender() {
		return d_gender;
	}


	public void setD_gender(String d_gender) {
		this.d_gender = d_gender;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getD_city() {
		return d_city;
	}


	public void setD_city(String d_city) {
		this.d_city = d_city;
	}


	public String getD_bg() {
		return d_bg;
	}


	public void setD_bg(String d_bg) {
		this.d_bg = d_bg;
	}


	public String getD_dob() {
		return d_dob;
	}


	public void setD_dob(String d_dob) {
		this.d_dob = d_dob;
	}


	public String getD_phonenum() {
		return d_phonenum;
	}


	public void setD_phonenum(String d_phonenum) {
		this.d_phonenum = d_phonenum;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getD_role() {
		return d_role;
	}


	public void setD_role(String d_role) {
		this.d_role = d_role;
	}


	@Override
	public String toString() {
		return "Doctor [d_id=" + d_id + ", d_name=" + d_name + ", dEmail=" + dEmail + ", d_gender=" + d_gender
				+ ", password=" + password + ", d_city=" + d_city + ", d_bg=" + d_bg + ", d_dob=" + d_dob
				+ ", d_phonenum=" + d_phonenum + ", department=" + department + ", d_role=" + d_role + "]";
	}
	
	
	
}
