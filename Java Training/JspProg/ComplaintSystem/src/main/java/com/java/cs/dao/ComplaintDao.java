package com.java.cs.dao;

import java.util.List;

import com.java.cs.model.Complaint;

public interface ComplaintDao {
	
	List<Complaint> showComplaintDao();
	Complaint searchComplaintDao(String complaintId);
	String addComplaintDao(Complaint complaint);
	String generateId(String latestId);

}
