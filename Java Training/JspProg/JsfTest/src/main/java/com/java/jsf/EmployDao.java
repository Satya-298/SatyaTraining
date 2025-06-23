package com.java.jsf;

import java.util.ArrayList;
import java.util.List;

public class EmployDao {
	
	public List<Employ> showEmploy() {
		List<Employ> employList = new ArrayList<Employ>();
		employList.add(new Employ(1,"Gaurav","Java","Developer", 84245.33));
		employList.add(new Employ(2,"Harshit","J2EE","Expert", 94245.33));
		employList.add(new Employ(3,"Swathi","MySql","Programmer", 88935.33));
		employList.add(new Employ(4,"Abhisekh","Angular","Tester", 89045.33));
		employList.add(new Employ(5,"Sireesha","React","Manager", 85675.33));
		return employList;
	}

}
