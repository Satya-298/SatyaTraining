package com.java.cs.model;

import java.time.LocalDateTime;
import java.util.Date;

public class Resolve {
	
	private String resolveId;
	private String complaintId;
	private Date complaintDate;
	private LocalDateTime resolveDate;
	private String resolvedBy;
	private String comments;
	
	public int getResolveId() {
		return resolveId;
	}
	public void setResolveId(int resolveId) {
		this.resolveId = resolveId;
	}
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public Date getComplaintDate() {
		return complaintDate;
	}
	public void setComplaintDate(Date complaintDate) {
		this.complaintDate = complaintDate;
	}
	public LocalDateTime getResolveDate() {
		return resolveDate;
	}
	public void setResolveDate(LocalDateTime resolveDate) {
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
	public Resolve(int resolveId, int complaintId, Date complaintDate, LocalDateTime resolveDate, String resolvedBy,
			String comments) {
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


//ResolveID varchar(30) Primary Key,
//ComplaintID varchar(30),
//ComplaintDate Date,
//ResolveDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
//ResolvedBy varchar(30),
//Comments varchar(100)