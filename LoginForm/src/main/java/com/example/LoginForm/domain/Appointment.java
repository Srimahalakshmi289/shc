package com.example.LoginForm.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "appointment")
@Component
public class Appointment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "a_id")
	private int a_id;
	@Column(name = "did")
	private int did;
	@Column(name = "pid")
	private int pid;
	@Column(name = "a_name")
	private String a_name;
	@Column(name = "a_email")
	private String a_email;
	@Column(name = "a_phonenum")
	private String a_phonenum;
	@Column(name = "a_date")
	private String a_date;
	@Column(name = "a_time")
	private String a_time;

	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Appointment(Integer a_id, int did, int pid, String a_name, String a_email, String a_phonenum,
			String a_date, String a_time) {
		super();
		this.a_id = a_id;
		this.did = did;
		this.pid = pid;
		this.a_name = a_name;
		this.a_email = a_email;
		this.a_phonenum = a_phonenum;
		this.a_date = a_date;
		this.a_time = a_time;
	}

	public Integer getA_id() {
		return a_id;
	}

	public void setA_id(Integer a_id) {
		this.a_id = a_id;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public String getA_email() {
		return a_email;
	}

	public void setA_email(String a_email) {
		this.a_email = a_email;
	}

	public String getA_phonenum() {
		return a_phonenum;
	}

	public void setA_phonenum(String a_phonenum) {
		this.a_phonenum = a_phonenum;
	}

	public String getA_date() {
		return a_date;
	}

	public void setA_date(String a_date) {
		this.a_date = a_date;
	}

	public String getA_time() {
		return a_time;
	}

	public void setA_time(String a_time) {
		this.a_time = a_time;
	}

	@Override
	public String toString() {
		return "Appointment [a_id=" + a_id + ", did=" + did + ", pid=" + pid + ", a_name=" + a_name + ", a_email="
				+ a_email + ", a_phonenum=" + a_phonenum + ", a_date=" + a_date + ", a_time=" + a_time + "]";
	}

}