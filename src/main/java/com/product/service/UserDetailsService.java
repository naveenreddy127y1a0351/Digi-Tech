package com.product.service;

import java.util.List;

import com.product.model.UserDetails;
import com.product.model.UserDetails1;

public interface UserDetailsService {
	public abstract String addUser(UserDetails ud);
	public abstract UserDetails1 loginCheck(UserDetails ud);
	public abstract UserDetails1 getUserById(String uid);
	public abstract void editUser(UserDetails1 ud);
	public abstract List<UserDetails1> getAllUsers();
	public abstract void enableUser(String uid);
	public abstract void disbleUser(String uid);
}
