package com.product.dao;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.product.model.Product;
import com.product.model.UserDetails;
import com.product.model.UserDetails1;

@Repository
public class UserDetailsDAOImpl implements UserDetailsDAO {

	@Autowired
	private SessionFactory sf;
	
	@Transactional
	public String addUser(UserDetails ud) {
		Session ses = sf.openSession();
		Transaction tr = ses.beginTransaction();
		ud.setUserid(generateUserId());
		ud.setRole("ROLE_USER");
		ud.setEnabled(true);
		ses.save(ud);
		tr.commit();
		ses.close();
		
		return ud.getUserid();
	}
	
	@Transactional	
	public UserDetails1 loginCheck(UserDetails ud) {	
		Session ses = sf.openSession();
		//Query qr = ses.createQuery("from UserDetails where userid='" + ud.getUserid() + "' and password ='" + ud.getPassword());
		Query qr = ses.createQuery("from UserDetails1 where userid=? and password=? and isenabled=true");
		qr.setParameter(0, ud.getUserid());
		qr.setParameter(1, ud.getPassword());
		// qr.list(); // return multiple records
		UserDetails1 temp = (UserDetails1)qr.uniqueResult(); // returns one record	
		return temp;
	}

	
	@Transactional
	public UserDetails1 getUserById(String uid) {
		Session ses = sf.openSession();
		UserDetails1 ud = ses.get(UserDetails1.class, uid);
		ses.close();		
		return ud;
	}
	
	
	
	@Transactional	
	public void editUser(UserDetails1 ud) {
		Session ses = sf.openSession();
		Transaction tr = ses.beginTransaction();
		ud.setEnabled(true);
		ud.setRole("ROLE_USER");
		ses.update(ud);
		tr.commit();
		ses.close();		
	}	
	
	@Transactional	
	public List<UserDetails1> getAllUsers() {
		Session ses = sf.openSession();
		Query qr = ses.createQuery("from UserDetails1 where userid like 'USR%'");
		List <UserDetails1> userdata = qr.list();
		ses.flush();
		ses.close();
		return userdata;
	}	
	
	@Transactional
	public void enableUser(String uid) {
		Session ses = sf.openSession();
		UserDetails1 user = ses.get(UserDetails1.class, uid);
		user.setEnabled(true);
		ses.update(user);
		ses.flush();
		ses.close();
	}
	
	
	

	public void disableUser(String uid) {
		Session ses = sf.openSession();
		UserDetails1 user = ses.get(UserDetails1.class, uid);
		user.setEnabled(false);
		ses.update(user);
		ses.flush();
		ses.close();
		
	}

	@Transactional
	private String generateUserId(){	
	
		String newUid="";
		
		Session s = sf.openSession();
		Query qr = s.createQuery("from UserDetails1");
		List<UserDetails> data = qr.list();
		s.close();
		if(data.size()==0){
			newUid="USR00001";
		}
		else {			
			Session ss = sf.openSession();		
			Query q = ss.createQuery("select max(userid) from UserDetails1");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newUid="USR0000"+id;
			else if(id<=99)
				newUid="USR000"+id;
			else if(id<=999)
				newUid="USR00"+id;
			else if(id<=9999)
				newUid="USR0"+id;
			else
				newUid="USR"+id;		
			System.out.print("\nGenerated : "+newUid);		
			ss.close();
		}
		return newUid;
	}
	
}
