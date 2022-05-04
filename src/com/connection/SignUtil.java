package com.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.classes.Login;
import com.connection.DBconnection;

public class SignUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static boolean isSuccess;
	
	public static boolean insertdetails1(String UserId,String newpass,String name) {
		boolean isSuccess = false;
		//create db connection
		
		try {
			
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			
		
			String sql="Insert into kanampella_junior.signup values('"+UserId+"','"+newpass+"','"+name+"')";
			int rs=stmt.executeUpdate(sql);//return 1 or 0
			
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
			
			
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	public static boolean validate(String id, String password) {
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql ="select * from kanampella_junior.signup where userID='"+id+"'and Password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<Login> getuserDetails(String number){
		ArrayList<Login> comp=new ArrayList<>();
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select * from kanampella_junior.signup where userID='"+number+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				String ID=rs.getString(1);
				String Name=rs.getString(2);
				String Password=rs.getString(3);
				
				//add column values to the constructor
				Login u1=new Login(ID,Name,Password);
				comp.add(u1);
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return comp;
	}

}
