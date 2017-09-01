package com.chat.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.chat.dao.UserDetailsDAO;
import com.chat.model.MyError;
import com.chat.model.UserDetails;

@RestController
public class UserController {

	@Autowired
	private UserDetailsDAO userDao;
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ResponseEntity<?> registerUser(@RequestBody UserDetails ud) {
		// client will send only username, password, email, role
		try {
			ud.setEnabled(true);
			ud.setUseronline(false);
			
			UserDetails savedUser = userDao.registerUser(ud);

			return new ResponseEntity<UserDetails>(savedUser, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			MyError error = new MyError(2,"Couldnt insert user details. Cannot have null/duplicate values " + e.getMessage());
			return new ResponseEntity<MyError>(error, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ResponseEntity<?> login(@RequestBody UserDetails ud, HttpSession session){
		UserDetails user = userDao.login(ud);
		if(user==null){
			MyError error = new MyError(3,"Invalid credentials....Please enter valid authentication details...");
			return new ResponseEntity<MyError> (error,HttpStatus.UNAUTHORIZED);
		}
		else{
			session.setAttribute("currentuser", user);
			user.setUseronline(true);
			userDao.updateUser(user);
			
			return new ResponseEntity<UserDetails> (user,HttpStatus.OK);			
		}
	}
	
}
