package com.jav.hib.dao;

import java.util.List;

import com.java.hib.model.Complaint;
import com.java.hib.model.Resolve;

public interface ResolveDao {
	
	List<Resolve> showResolveDao(); 
	String addResolveDao(Resolve resolve);
	Resolve searchResolveDao(String resolveId);

}
