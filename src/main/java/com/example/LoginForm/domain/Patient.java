package com.example.LoginForm.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "patient_registration")
@Component
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "p_id")
	private int p_id;
	@Column(name = "p_name")
	private String p_name;
	@Column(name = "pEmail")
	private String pEmail;
	@Column(name = "p_gender")
	private String p_gender;
	@Column(name = "password")
	private String password;
	@Column(name = "p_city")
	private String p_city;
	@Column(name = "p_bg")
	private String p_bg;
	@Column(name = "p_dob")
	private String p_dob;
	@Column(name = "p_phonenum")
	private String p_phonenum;
	@Column(name = "p_role")
	private String p_role = "patient";

	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Patient(Integer p_id, String p_name, String pEmail, String p_gender, String password, String p_city,
			String p_bg, String p_dob, String p_phonenum, String p_role) {
		super();
		this.p_id = p_id;
		this.p_name = p_name;
		this.pEmail = pEmail;
		this.p_gender = p_gender;
		this.password = password;
		this.p_city = p_city;
		this.p_bg = p_bg;
		this.p_dob = p_dob;
		this.p_phonenum = p_phonenum;
		this.p_role = p_role;
	}

	public Integer getP_id() {
		return p_id;
	}

	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getpEmail() {
		return pEmail;
	}

	public void setpEmail(String pEmail) {
		this.pEmail = pEmail;
	}

	public String getP_gender() {
		return p_gender;
	}

	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getP_city() {
		return p_city;
	}

	public void setP_city(String p_city) {
		this.p_city = p_city;
	}

	public String getP_bg() {
		return p_bg;
	}

	public void setP_bg(String p_bg) {
		this.p_bg = p_bg;
	}

	public String getP_dob() {
		return p_dob;
	}

	public void setP_dob(String p_dob) {
		this.p_dob = p_dob;
	}

	public String getP_phonenum() {
		return p_phonenum;
	}

	public void setP_phonenum(String p_phonenum) {
		this.p_phonenum = p_phonenum;
	}

	public String getP_role() {
		return p_role;
	}

	public void setP_role(String p_role) {
		this.p_role = p_role;
	}

	@Override
	public String toString() {
		return "Patient [p_id=" + p_id + ", p_name=" + p_name + ", pEmail=" + pEmail + ", p_gender=" + p_gender
				+ ", password=" + password + ", p_city=" + p_city + ", p_bg=" + p_bg + ", p_dob=" + p_dob
				+ ", p_phonenum=" + p_phonenum + ", p_role=" + p_role + "]";
	}

}
