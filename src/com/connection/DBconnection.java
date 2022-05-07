package com.connection;

import java.sql.Connection;

import java.sql.DriverManager;


public class DBconnection {
	//connect to database
		private static String url = "jdbc:mysql://localhost:3306/sms";
		private static String userName = "root";
		private static String password = "root";
		
		//save the connection to the variable
		
		private static Connection con;
		
		//connectivity method
		public static Connection getConnection() {
			try {
				
				//create  a Driver
				Class.forName("com.mysql.jdbc.Driver");
				
				con=DriverManager.getConnection(url,userName,password);
				System.out.println("DB CONNECTED!");
				
			}catch(Exception e){
				System.out.println("Database connection is not succesful");
			}
			return con; //return connection type object
		}


	}
