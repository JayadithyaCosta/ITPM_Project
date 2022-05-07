package com.classes;

public class Login {
	
	private String userID;
	private String username;
	private String password;
	
	public String getUserID() {
		return userID;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	

	public Login(String userID, String username, String password) {
		super();
		this.userID = userID;
		this.username = username;
		this.password = password;
	}
	
	

}
