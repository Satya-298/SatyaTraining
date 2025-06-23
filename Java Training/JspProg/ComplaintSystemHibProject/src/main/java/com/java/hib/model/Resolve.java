package com.java.hib.model;

import java.sql.Timestamp;

public class Resolve {
	
	private String resolveId;
	private String complaintId;
	private Timestamp complaintDate;
	private Timestamp resolveDate;
	private String resolvedBy;
	private String comments;
	
	public String getResolveId() {
		return resolveId;
	}
	public void setResolveId(String resolveId) {
		this.resolveId = resolveId;
	}
	public String getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(String complaintId) {
		this.complaintId = complaintId;
	}
	public Timestamp getComplaintDate() {
		return complaintDate;
	}
	public void setComplaintDate(Timestamp complaintDate) {
		this.complaintDate = complaintDate;
	}
	public Timestamp getResolveDate() {
		return resolveDate;
	}
	public void setResolveDate(Timestamp resolveDate) {
		this.resolveDate = resolveDate;
	}
	public String getResolvedBy() {
		return resolvedBy;
	}
	public void setResolvedBy(String resolvedBy) {
		this.resolvedBy = resolvedBy;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public Resolve(String resolveId, String complaintId, Timestamp complaintDate, Timestamp resolveDate,
			String resolvedBy, String comments) {
		super();
		this.resolveId = resolveId;
		this.complaintId = complaintId;
		this.complaintDate = complaintDate;
		this.resolveDate = resolveDate;
		this.resolvedBy = resolvedBy;
		this.comments = comments;
	}
	
	public Resolve() {
		super();
		// TODO Auto-generated constructor stub
	}	
}