package com.java.abs1;

public class MobileFactory extends AbstractFactory {
	
	@Override
	public Mobile getMobileDetails(String Mobile) {
		if(Mobile.equals("Samsung")) {
			return new Samsung();
		}
		if(Mobile.equals("IPhone")) {
			return new IPhone();
		}
		if(Mobile.equals("OnePlus")) {
			return new OnePlus();
		}
		return null;
	}
}
