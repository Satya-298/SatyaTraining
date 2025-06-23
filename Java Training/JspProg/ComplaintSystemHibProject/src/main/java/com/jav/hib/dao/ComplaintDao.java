package com.jav.hib.dao;

import java.util.List;

import com.java.hib.model.Complaint;
import com.java.hib.model.Resolve;

public interface ComplaintDao {
	
	List<Complaint> showComplaintDao();
	Complaint searchComplaintDao(String complaintId);
	String addComplaintDao(Complaint complaint);
	
}
