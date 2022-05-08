package com.classes;

public class Techer_subject {
	//variable
	private String teachername;
	private String year;
	private String grade;
	private String clz;
	private String subject;
	//constructor
	public Techer_subject(String teachername, String year, String grade, String clz, String subject) {
		
		this.teachername = teachername;
		this.year = year;
		this.grade = grade;
		this.clz = clz;
		this.subject = subject;
	}
	//getters
	public String getTeachername() {
		return teachername;
	}
	
	public String getYear() {
		return year;
	}
	
	public String getGrade() {
		return grade;
	}
	
	public String getClz() {
		return clz;
	}
	
	public String getSubject() {
		return subject;
	}
	
	
	
	
	
	

}
