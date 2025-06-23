package com.java.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

public class UserBean {
	
	private String email;
	private boolean emailExists(String email) {
		
		return "prassucp@gmail.com".equalsIgnoreCase(email);
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String register() {
		FacesContext context = FacesContext.getCurrentInstance();
		if (emailExists(email)) {
			context.addMessage("email", new FacesMessage(FacesMessage.SEVERITY_ERROR,
					"Email already registered", "Choose a different Email."));
			context.validationFailed(); //marks the validation as failed
			return null; // stay on same page
		}
		context.addMessage(null, new FacesMessage("","Registration Successful"));
		return null;
	}
}
