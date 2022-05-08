package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {
	
	//parameter variable for getconnection function
	private static String url = "jdbc:mysql://localhost:3306/school";
	private static String userName = "root";
	private static String password = "Udesh@1975";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			//pass value to getConnection function
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}



