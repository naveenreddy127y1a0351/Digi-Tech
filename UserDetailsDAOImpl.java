package com.chat.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chat.model.UserDetails;

@Repository
public class UserDetailsDAOImpl implements UserDetailsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDetails registerUser(UserDetails ud) {
		Session session = sessionFactory.openSession();
		ud.setUserid(generateUserId());
		session.save(ud);
		session.flush();
		session.close();
		return ud;
	}

	public UserDetails login(UserDetails user) {
		Session ses = sessionFactory.openSession();
		UserDetails check = (UserDetails)ses.get(UserDetails.class, user.getUserid());
		ses.close();		
		return check;
	}

	
	
	
	public void updateUser(UserDetails user) {
		Session ss = sessionFactory.openSession();
		ss.update(user);
		ss.flush();
		ss.close();		
	}
	public UserDetails getUserDetailsById(String uid) {
		UserDetails ud = (UserDetails)sessionFactory.openSession().get(UserDetails.class,uid);
		return ud;
	}


	private String generateUserId() {
		String newUid = "";
		Session ss = sessionFactory.openSession();

		Query qq = ss.createQuery("from UserDetails");
		if (qq.list().isEmpty()) {
			newUid = "USR00001";
		} else {
			Query q = ss.createQuery("select max(userid) from UserDetails");
			String prevId = q.list().get(0).toString();
			// String prevId = data.get(0).toString();
			System.out.print("\nExisting : " + prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : " + id);
			id = id + 1;
			if (id <= 9)
				newUid = "USR0000" + id;
			else if (id <= 99)
				newUid = "USR000" + id;
			else if (id <= 999)
				newUid = "USR00" + id;
			else if (id <= 9999)
				newUid = "USR0" + id;
			else
				newUid = "USR" + id;
			System.out.print("\nGenerated : " + newUid);			
		}
		ss.close();
		return newUid;
	}

}
