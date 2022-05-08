package com.student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class StudentDButil {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet res=null;
	
//Validate Student ID
public static boolean validate(String sid) {
		
		try {
			 con = DBConnection.getConnection();
		     stmt =con.createStatement();
		     
		     String sql="select * from student_details where student_id='"+sid+"'";
		     res = stmt.executeQuery(sql);
		     
		     if(res.next()) {
		    	 isSuccess=true;
		    	
		    	 
		     }
		     else {
		    	 isSuccess=false;
		     }
			
		}
		
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	//Student Insert Method
	public static boolean insertStudent(String sid, String name, String gender, String dob, String address, String grade, String cls, 
			String gname, String contact, String occupation) {
		
		boolean isSuccess = false;
		
		
		try {
			 con = DBConnection.getConnection();
		     stmt =con.createStatement();
			
		     String sql = "insert into student_details values(0,'"+sid+"','"+name+"','"+gender+"','"+dob+"','"+address+"','"+grade+"','"+cls+"','"+gname+"','"+contact+"','"+occupation+"')";
		     int rs = stmt.executeUpdate(sql);
		     
		     if(rs > 0) {
		    	 isSuccess = true;
		     }
		     else {
		    	 isSuccess = false;
		     }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Student Update Method
	public static boolean updatestudent(String id,String sid,String name,String gender,String dob,String address,String grade,String cls,String gname,String contact,String occupation) {
		
		try {
			 con = DBConnection.getConnection();
		     stmt =con.createStatement();
		     
		     String sql = "update student_details set student_id='"+sid+"',full_name='"+name+"',gender='"+gender+"',dob='"+dob+"',address='"+address+"',grade='"+grade+"',class='"+cls+"',guardian_name='"+gname+"',contact_number ='"+contact+"',occupation='"+occupation+"'"
		     + "where id ='"+id+"'";
		     int res = stmt.executeUpdate(sql);
		     
		     if(res > 0){
		    	 isSuccess=true;
		     }
		     else {
		    	 isSuccess=false;
		     }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Get Student details 
	public static List<StudentClass> getStudentDetails(String sid){
		
		//int convertedID = Integer.parseInt(id);
		ArrayList<StudentClass> stu = new ArrayList<>(); 
		
		try {
			con = DBConnection.getConnection();
		    stmt =con.createStatement();
		    
		    String sql = "select * from student_details where student_id ='"+sid+"'";
		    res = stmt.executeQuery(sql);
		    
		    while(res.next()) {
		    	 int aid = res.getInt(1);
		    	 String stuid = res.getString(2);
		    	 String name = res.getString(3);
		    	 String gender = res.getString(4);
		    	 String dob = res.getString(5);
		    	 String address = res.getString(6); 		    	  
		    	 String grade = res.getString(7); 
		    	 String cls = res.getString(8); 
		    	 String gname = res.getString(9);
		    	 String contact = res.getString(10); 
		    	 String occupation = res.getString(11);
		    	 
		    	 StudentClass s = new StudentClass(aid,stuid,name,gender,dob,address,grade,cls,gname,contact,occupation);
		    	 stu.add(s);
		    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return stu;
	}
	
	public static boolean deleteStudent(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql="delete from student_details where id='"+convId+"' ";
			int r=stmt.executeUpdate(sql);
			
			if(r>0){
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Report Generate
	
	//report genarate function
	public static List<StudentClass> getiItems2(String grade){
		
		ArrayList<StudentClass> stu = new ArrayList<StudentClass>();
		
		try {
			con=DBConnection.getConnection();
			stmt =con.createStatement();
	        String sql=" select * from student_details where  grade = '"+grade+"' ORDER BY gender";
			res=stmt.executeQuery(sql);
			
			while(res.next()) {
				int aid = res.getInt(1);
		    	 String stuid = res.getString(2);
		    	 String name = res.getString(3);
		    	 String gender = res.getString(4);
		    	 String dob = res.getString(5);
		    	 String address = res.getString(6); 		    	  
		    	 String Grade = res.getString(7); 
		    	 String cls = res.getString(8); 
		    	 String gname = res.getString(9);
		    	 String contact = res.getString(10); 
		    	 String occupation = res.getString(11);
				
				StudentClass s = new StudentClass(aid,stuid,name,gender,dob,address,Grade,cls,gname,contact,occupation);
				stu.add(s);
						
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return stu;
			
	}

	
}
