package com.classes;

public class Student {
	private String StudentID;
	private String Fullname;
	private String FirstName;	
	private String LastName;
	private String HouseNum;
	private String Lane;
	private String City;
	private String District;
	private String  DOB;
	private String Gender;
	private String AdmissionDate;
	
	
	public Student(String studentID, String fullname, String firstName, String lastName, String houseNum, String lane,
			String city, String district, String dOB, String gender, String admissionDate) {
		super();
		StudentID = studentID;
		Fullname = fullname;
		FirstName = firstName;
		LastName = lastName;
		HouseNum = houseNum;
		Lane = lane;
		City = city;
		District = district;
		DOB = dOB;
		Gender = gender;
		AdmissionDate = admissionDate;
	}


	public Student(String studentID, String fullname) {
		super();
		StudentID = studentID;
		Fullname = fullname;
	}


	public String getStudentID() {
		return StudentID;
	}


	


	public String getFullname() {
		return Fullname;
	}


	


	public String getFirstName() {
		return FirstName;
	}


	


	public String getLastName() {
		return LastName;
	}





	public String getHouseNum() {
		return HouseNum;
	}


	

	public String getLane() {
		return Lane;
	}


	

	public String getCity() {
		return City;
	}


	


	public String getDistrict() {
		return District;
	}




	public String getDOB() {
		return DOB;
	}


	


	public String getGender() {
		return Gender;
	}


	


	public String getAdmissionDate() {
		return AdmissionDate;
	}


}
