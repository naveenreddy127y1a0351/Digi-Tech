package com.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.chat.dao.MemberDao;
import com.chat.model.Citizen;

@RestController
public class Firstcontroller{
	
	@Autowired
	private MemberDao memberdao;
	
	@RequestMapping(value="/savePerson", method=RequestMethod.POST)
	public ResponseEntity<Citizen> addcitizen(@RequestBody Citizen c){
		memberdao.addcitizen(c);
	return new ResponseEntity<Citizen> (c,HttpStatus.OK);
	}
	
	
	@RequestMapping(value="/getmembers", method=RequestMethod.GET)
	public ResponseEntity<List<Citizen>> getcitizen(){
		List<Citizen> data = memberdao.getcitizendata();
		return new ResponseEntity <List<Citizen>>(data,HttpStatus.OK);
	}
	@RequestMapping(value="/getmemberid/{citizenid}", method=RequestMethod.GET)
	public ResponseEntity<?> getmemberidonly(@PathVariable("citizenid") String c){		
		Citizen rrr=memberdao.getonerecord(c);
		return new ResponseEntity<Citizen>(rrr,HttpStatus.OK);
	}
}
