package com.product.dao;

import java.util.List;

import com.product.model.UserDetails;
import com.product.model.UserDetails1;

public interface UserDetailsDAO {

	public abstract String addUser(UserDetails ud);
	public abstract UserDetails1 loginCheck(UserDetails ud);
	public abstract UserDetails1 getUserById(String uid);
	public abstract void editUser(UserDetails1 ud);
	public abstract List<UserDetails1> getAllUsers();
	public abstract void enableUser(String uid);
	public abstract void disableUser(String uid);
}
