package com.java.hib.model;

import java.sql.Timestamp;

public class Complaint {
	
	private String complaintId;
	private String complaintType;
	private String cDescription;
	private Timestamp complaintDate;
	private String severity;
	private String status;
	public String getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(String complaintId) {
		this.complaintId = complaintId;
	}
	public String getComplaintType() {
		return complaintType;
	}
	public void setComplaintType(String complaintType) {
		this.complaintType = complaintType;
	}
	public String getcDescription() {
		return cDescription;
	}
	public void setcDescription(String cDescription) {
		this.cDescription = cDescription;
	}
	public Timestamp getComplaintDate() {
		return complaintDate;
	}
	public void setComplaintDate(Timestamp complaintDate) {
		this.complaintDate = complaintDate;
	}
	public String getSeverity() {
		return severity;
	}
	public void setSeverity(String severity) {
		this.severity = severity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Complaint() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}