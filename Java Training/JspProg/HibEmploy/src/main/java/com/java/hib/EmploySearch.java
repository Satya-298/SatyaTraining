package com.java.hib;

import java.text.Annotation;
import java.util.Scanner;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class EmploySearch {
	
	public static void main(String[] args) {
		
		int empno;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Employ No");
		empno = sc.nextInt();
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Query query = session.createQuery("from Employ where empno = " +empno);
		Employ employ = (Employ) query.uniqueResult();
		if(employ != null) {
			System.out.println(employ);
		}
	}

}
