package com.java.jsf;

import javax.faces.event.ActionEvent;

public class NameBean {
	
	private String firstName;
	private String lastName;
	private String fullName;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullname(String fullname) {
		this.fullName = fullname;
	}
	

	@Override
	public String toString() {
		return "NameBean [firstName=" + firstName + ", lastName=" + lastName + ", fullName=" + fullName + "]";
	}
	
	public NameBean() {}
	
	public void result(ActionEvent evt) {
		this.fullName = this.firstName + " " +this.lastName;
	}
	

}
