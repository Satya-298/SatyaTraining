package com.java.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

public class All {
	
	private String username;
	private String email;
	private int age;
	private String password;
	private String confirmPassword;
	
	public String submit() {
		// Cross-fireld validation (password must match)
		if(!password.equals(confirmPassword)) {
			FacesContext.getCurrentInstance().addMessage("form:confirmPassword",
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Password do not match", null));
			return null; // Stay on same page
		}
		
		// Success
		return "success"; //Navigate to success.jsf
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	

}
