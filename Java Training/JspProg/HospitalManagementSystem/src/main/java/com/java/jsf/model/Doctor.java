package com.java.jsf.model;

import java.util.List;
import java.util.Set;

public class Doctor {
	
	private String doctorId;
	private String doctorName;
	private Specialization specialization;
	private String location;
	private String mobileNo;
	private IsStatus isStatus;
	
	private Set<Patient> patientList;

	public Set<Patient> getPatientList() {
	    return patientList;
	}
	public void setPatientList(Set<Patient> patientList) {
	    this.patientList = patientList;
	}

	
	public String getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public Specialization getSpecialization() {
		return specialization;
	}
	public void setSpecialization(Specialization specialization) {
		this.specialization = specialization;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public IsStatus getIsStatus() {
		return isStatus;
	}
	public void setIsStatus(IsStatus isStatus) {
		this.isStatus = isStatus;
	}
	
	public Doctor(String doctorId, String doctorName, Specialization specialization, String location, String mobileNo,
			IsStatus isStatus, Set<Patient> patientList) {
		this.doctorId = doctorId;
		this.doctorName = doctorName;
		this.specialization = specialization;
		this.location = location;
		this.mobileNo = mobileNo;
		this.isStatus = isStatus;
		this.patientList = patientList;
	}
	
	public Doctor() {
	}
	
	
	@Override
	public String toString() {
		return "Doctor [doctorId=" + doctorId + ", doctorName=" + doctorName + ", specialization=" + specialization
				+ ", location=" + location + ", mobileNo=" + mobileNo + ", isStatus=" + isStatus + "]";
	}
	
	

}


//doctorId varchar(30),
//doctorName varchar(30),
//specialization ENUM('HEART','SKIN','GENERAL','KIDNEY'),
//location varchar(30),
//mobileNo varchar(20),
//isStatus ENUM('ACTIVE','INACTIVE')