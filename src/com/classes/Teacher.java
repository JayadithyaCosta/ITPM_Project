package com.classes;

public class Teacher {
	//VARIABLE
	private int id;
	private String fullname;
	private String adress;
	private String gender;
	private String dob;
	private String nic;
	private String phone;
	private String joindate;
	private String qulification;
	private String status;
	private String discrption;
	private String systemadddate;
	
	//Constructor
	public Teacher(int id, String fullname, String adress, String gender, String dob, String nic, String phone,
			String joindate, String qulification, String status, String discrption, String systemadddate) {
		
		this.id = id;
		this.fullname = fullname;
		this.adress = adress;
		this.gender = gender;
		this.dob = dob;
		this.nic = nic;
		this.phone = phone;
		this.joindate = joindate;
		this.qulification = qulification;
		this.status = status;
		this.discrption = discrption;
		this.systemadddate = systemadddate;
	}
	//getters
	public int getId() {
		return id;
	}
	
	public String getFullname() {
		return fullname;
	}
	
	public String getAdress() {
		return adress;
	}

	public String getGender() {
		return gender;
	}
	
	public String getDob() {
		return dob;
	}
	
	public String getNic() {
		return nic;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getJoindate() {
		return joindate;
	}
	
	public String getQulification() {
		return qulification;
	}
	
	public String getStatus() {
		return status;
	}
	
	public String getDiscrption() {
		return discrption;
	}
	
	public String getSystemadddate() {
		return systemadddate;
	}
	
	
	

}
