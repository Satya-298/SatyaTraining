package com.java.jsf;

public class LoginDao {
	
	public String validateMe(String user,String pwd) {
		if(user.equals("Infinite") && pwd.equals("Infinite")) {
			return "Menu.jsp?request-redirect=true";
		} else {
			return "Login.jsp?request-redirect=true";
		}
	}
}
