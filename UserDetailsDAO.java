package com.chat.dao;

import com.chat.model.UserDetails;

public interface UserDetailsDAO {
	UserDetails registerUser(UserDetails user);
	UserDetails login(UserDetails user);
	void updateUser(UserDetails user);
	public abstract UserDetails getUserDetailsById(String uid);
}
