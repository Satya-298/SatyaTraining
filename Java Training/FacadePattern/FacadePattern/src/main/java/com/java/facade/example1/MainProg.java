package com.java.facade.example1;

public class MainProg {

	public static void main(String[] args) {
		
		Mcq mcq = new Mcq();
		Practical practical = new Practical();
		Project project = new Project();
		HackerRank hackerRank = new HackerRank();
		
		JavaTrainingFacade facade = new JavaTrainingFacade(mcq, practical, project, hackerRank);

        System.out.println("----- Java Training Info -----");
        facade.trainingInfo();
		
	}
}
