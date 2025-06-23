package com.java.ims.dao;

import java.util.List;

import com.java.ims.model.InsuranceCompany;

public interface InsuranceCompanyDao {
	
	String addCompany(InsuranceCompany company);
    List<InsuranceCompany> showAllCompanies();
    InsuranceCompany searchCompanyById(int companyId);

}
