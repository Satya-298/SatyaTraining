package com.java.ejb;

import javax.ejb.Remote;

@Remote
public interface CalculatorBeanRemote {
	
	int add(int a, int b);
	
	int subtract(int a, int b);

	int mult(int a, int b);


}
