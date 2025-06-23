package com.jav.hib.dao;

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

import com.java.hib.model.Complaint;
import com.java.hib.model.Resolve;

public class ResolveDaoImpl implements ResolveDao {
	
	SessionFactory sf;
	ComplaintDaoImpl dao = new ComplaintDaoImpl();
	
	public ResolveDaoImpl() {
        sf = new AnnotationConfiguration().configure().buildSessionFactory();
    }
	
	@Override
	public List<Resolve> showResolveDao() {
		
		return sortByResolveId();
	}
	
	@Override
	public Resolve searchResolveDao(String resolveId) {
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Resolve.class);
		cr.add(Restrictions.eq("resolveId", resolveId));
		Resolve resolve = (Resolve) cr.uniqueResult();
		
		return resolve;
	}


	@Override
	public String addResolveDao(Resolve resolve) {
		Session session = sf.openSession();
		Transaction trans = session.beginTransaction();
		
		String latestId = getLatestResolveId();
		String newId = generateResolveId(latestId);
		resolve.setResolveId(newId);
		
		Complaint complaint = dao.searchComplaintDao(resolve.getComplaintId());
		
		if (complaint == null) {
	        session.close();
	        return "Complaint not found for ID: " + resolve.getComplaintId();
	    }
		
		String complaintId = complaint.getComplaintId();
		resolve.setComplaintId(complaint.getComplaintId());
		
		Timestamp complaintDate = complaint.getComplaintDate();
		resolve.setComplaintDate(complaint.getComplaintDate());
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	    resolve.setResolveDate(timestamp);
		
		session.save(resolve);
		trans.commit();
		
		
		return "Complaint Resolved Successfully for id" ;
	}
	
	
	public String generateResolveId(String latestId) {
		
		String newId;
		
		if(latestId == null) {
			
			newId = "R001";
			return newId;
		} else {
			
			int id = Integer.parseInt(latestId.substring(1));
			id+=1;
			newId = "R"+String.format("%03d", id);
			return newId;
		}
		
	}
	
	public String getLatestResolveId() {
		Session session = sf.openSession();
        Query query = session.createQuery("SELECT MAX(c.resolveId) FROM Resolve c");
        String latestId = (String) query.uniqueResult();
        session.close();
        
        return latestId;
    }
	
	public String getGeneratedResolveId() {
		
		String latestId = getLatestResolveId();
		return generateResolveId(latestId);
	}
	
	public String getCurrentTimestamp() {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(timestamp);
	}
	
	public List<Resolve> sortByResolveId() {
	    Session session = sf.openSession();

	    Query query = session.createQuery(
	        "FROM Resolve ORDER BY resolveId ASC"
	    );

	    List<Resolve> sortedList = query.list();
	    session.close();
	    return sortedList;
	}

	
}
