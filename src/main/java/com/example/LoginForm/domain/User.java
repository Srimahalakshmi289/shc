package com.example.LoginForm.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="login_credentials")
@Component
public class User {
	@Id
	@Column(name="email")
	private String email;
	@Column(name="role")
	private String role;
	@Column(name="password")
	private String password;
	
	
	
	public User() {
		super();
		
	}
	
   public User(String email,String password,String role){
	super();
	this.email=email;
	this.role=role;
	this.password=password;
}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", role=" + role + ", password=" + password + "]";
	}
	
	
}