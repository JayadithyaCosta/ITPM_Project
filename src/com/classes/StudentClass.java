package com.student;

public class StudentClass {
	private int id;
	private String sid;
	private String name;  	 
	private String gender; 
	private String dob;
	private String address; 
	private String grade; 
	private String cls; 
	private String gname;
	private String contact; 
	private String occupation;
	
	public StudentClass(int id, String sid, String name, String gender, String dob, String address, String grade, String cls,
			String gname, String contact, String occupation) {
		
		this.id = id;
		this.sid = sid;
		this.name = name;
		this.gender = gender;
		this.dob = dob;
		this.address = address;
		this.grade = grade;
		this.cls = cls;
		this.gname = gname;
		this.contact = contact;
		this.occupation = occupation;
	}

	public int getId() {
		return id;
	}
	
	public String getSid() {
		return sid;
	}
	
	public String getName() {
		return name;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getDob() {
		return dob;
	}


	public String getAddress() {
		return address;
	}

	public String getGrade() {
		return grade;
	}


	public String getCls() {
		return cls;
	}


	public String getGname() {
		return gname;
	}


	public String getContact() {
		return contact;
	}


	public String getOccupation() {
		return occupation;
	}
 	
	
}
