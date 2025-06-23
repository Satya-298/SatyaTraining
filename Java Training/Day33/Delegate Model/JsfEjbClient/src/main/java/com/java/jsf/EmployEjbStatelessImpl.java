package com.java.jsf;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;
import javax.naming.NamingException;

import com.java.ejb.beans.EmployStatelessBeanRemote;
import com.java.ejb.beans.RemoteStatelessHelper;
import com.java.ejb.model.Employ;

public class EmployEjbStatelessImpl {

	static EmployStatelessBeanRemote remote;
	static {
		try {
			remote = RemoteStatelessHelper.lookupRemoteStatelessEmploy();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Employ> showEmployEjb() throws NamingException, ClassNotFoundException, SQLException {
//	 EmployJdbcBeanRemote remote = RemoteHelper.lookupRemoteStatelessEmploy();
	 return remote.showEmploy();
	}
	
	public String searchEmployEjb(int empno) throws ClassNotFoundException, SQLException {
		Map<String,Object> sessionMap = 
				FacesContext.getCurrentInstance().getExternalContext().getSessionMap();		

		Employ employFound = remote.searchEmploy(empno);
		 sessionMap.put("employFound", employFound);
		 return "updateEmploy?faces-redirect=true";
	}
	
	
}
