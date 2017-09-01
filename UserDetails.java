package com.chat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class UserDetails {
	
	@Id
	private String userid;
	@Column(unique = true, nullable = false)
	private String username;
	private String password;
	@Column(unique = true, nullable = false)
	private String email;	
	private String role;
	private boolean enabled;	
	private boolean useronline;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public boolean isUseronline() {
		return useronline;
	}
	public void setUseronline(boolean useronline) {
		this.useronline = useronline;
	}
	
	
	
}
