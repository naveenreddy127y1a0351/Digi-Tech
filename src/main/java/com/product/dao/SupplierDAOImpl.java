package com.product.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.product.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO {

	
	@Autowired 
	private SessionFactory sessionFactory;
	
	@Transactional
	public void addSupplier(Supplier sup) {
		// TODO Auto-generated method stub
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		sup.setSupplierid(generateSupplierId());
		ses.save(sup);
		tr.commit();
		ses.close();
	}
	
	
	
	
	@Transactional
	public List<Supplier> getSuppliers() {
		Session  ses = sessionFactory.openSession();
		Query qr = ses.createQuery("from Supplier");
		List<Supplier> data = qr.list();
		ses.close();
		return data;		
	}


	
	


	public void deleteSupplier(String supid) {
		Session ses = sessionFactory.openSession();
		Transaction tr = ses.beginTransaction();
		Supplier temp = ses.get(Supplier.class, supid);
		ses.delete(temp);
		tr.commit();
		ses.close();		
	}




	@Transactional
	private String generateSupplierId(){
		
	String newSid="";
		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from Supplier");
		List<Supplier> data = qr.list();
		s.close();
		if(data.size()==0){
			newSid="SUP00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(supplierid) from Supplier");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newSid="SUP0000"+id;
			else if(id<=99)
				newSid="SUP000"+id;
			else if(id<=999)
				newSid="SUP00"+id;
			else if(id<=9999)
				newSid="SUP0"+id;
			else
				newSid="SUP"+id;		
			System.out.print("\nGenerated : "+newSid);		
			ss.close();		
		}
		return newSid;
	}

}
