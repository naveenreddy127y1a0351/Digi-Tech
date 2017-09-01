package com.chat.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chat.model.UploadFile;



@Repository
public class FileDAOImpl implements FileDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void uploadFile(UploadFile file) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(file);
		session.flush();
		session.close();
	}

	
	public UploadFile getFile(String username) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from UploadFile where userid=?");
		query.setParameter(0, username);
		UploadFile uploadFile=(UploadFile)query.uniqueResult();
		return uploadFile;
	}


	public void deleteImageRecord(UploadFile file) {
		Session session = sessionFactory.openSession();
		session.delete(file);
		session.flush();
		session.close();
	}

	
	
}













