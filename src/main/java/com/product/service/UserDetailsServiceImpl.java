package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.UserDetailsDAO;
import com.product.model.UserDetails;
import com.product.model.UserDetails1;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserDetailsDAO userdetailsdao;
	
	public String addUser(UserDetails ud) {		
		return userdetailsdao.addUser(ud);
	}

	public UserDetails1 loginCheck(UserDetails ud) {		
		return userdetailsdao.loginCheck(ud);
	}

	public UserDetails1 getUserById(String uid) {		
		return userdetailsdao.getUserById(uid);
	}

	public void editUser(UserDetails1 ud) {
		userdetailsdao.editUser(ud);
		
	}

	public List<UserDetails1> getAllUsers() {		
		return userdetailsdao.getAllUsers();
	}

	public void enableUser(String uid) {
		userdetailsdao.enableUser(uid);		
	}

	public void disbleUser(String uid) {
		userdetailsdao.disableUser(uid);		
	}

	
}
