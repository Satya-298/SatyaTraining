package com.java.cs.dao;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.Restrictions;

import com.java.cs.model.Complaint;

public class ComplaintDaoImpl implements ComplaintDao {
	
	SessionFactory sf;
	 
	
	 public ComplaintDaoImpl() {
	        sf = new AnnotationConfiguration().configure().buildSessionFactory();
	    }

	@Override
	public List<Complaint> showComplaintDao() {
	    Session session = sf.openSession();
	    Criteria cr = session.createCriteria(Complaint.class);
	    List<Complaint> list = cr.list();
	    session.close();  // Important
	    return list;
	}

	@Override
	public Complaint searchComplaintDao(String complaintId) {
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Complaint.class);
		cr.add(Restrictions.eq("complaintId", complaintId));
		Complaint complaint = (Complaint) cr.uniqueResult();
		
		return complaint;
	}

	@Override
	public String addComplaintDao(Complaint complaint) {
		Session session = sf.openSession();
		Transaction trans = session.beginTransaction();
		String latestId = getLatestComplaintId();
		
		String newId = generateId(latestId);
		
		complaint.setComplaintId(newId);
		
		session.save(complaint);
		trans.commit();
		
		
		return "Complaint Raised Successfully for id" + newId;
	}
	
	@Override
	public String generateId(String latestId) {
		
		String newId;
		
		if(latestId == null) {
			
			newId = "C001";
			return newId;
		} else {
			
			int id = Integer.parseInt(latestId.substring(1));
			id+=1;
			newId = "C"+String.format("%03d", id);
			return newId;
		}
		
	}
	
	public String getLatestComplaintId() {
		Session session = sf.openSession();
        Query query = session.createQuery("SELECT MAX(c.complaintId) FROM Complaint c");
        String latestId = (String) query.uniqueResult();
        session.close();
        
        return latestId;
    }
	
	public String getGeneratedId() {
		
		String latestId = getLatestComplaintId();
		return generateId(latestId);
	}
	
	public String getCurrentTimestamp() {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(timestamp);
    }

}
