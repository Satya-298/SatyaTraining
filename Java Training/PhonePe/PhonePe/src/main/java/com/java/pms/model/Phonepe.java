package com.java.pms.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Phonepe {
	
	private int accountNo;
	private String name;
	private String userName;
	private String passCode;
	private String email;
	private long mobNo;
	private double amount;

}
