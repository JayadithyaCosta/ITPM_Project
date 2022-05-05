package com.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.classes.Progress;
import com.classes.Results;
import com.classes.Student;

public class resultsUtil2 {
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static boolean isSuccess;
	
	
	//get progress
	public static List <Progress> getStudentProgress(String stno){
		ArrayList<Progress> Res=new ArrayList<>();//create an Array List of object type
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select * from  progress where Student_id='"+stno+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				int resid=rs.getInt(1);
				double total= rs.getDouble(2);
				double avg=rs.getDouble(3);
				String status=rs.getString(4);
				String Teacher_remark=rs.getString(5);
				String stid=rs.getString(5);
				String tid=rs.getString(6);
				
				
				
				
				//add column values to the constructor
				Progress p1=new Progress(status,Teacher_remark,total,avg);
				Res.add(p1);//add object to Array List
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Res;//returns LiSt
		
	}
	
	
	//get student name
	public static List <Student> getStudentName(String stno){
		ArrayList<Student> Stud=new ArrayList<>();//create an Array List of object type
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select * from student where Student_id='"+stno+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				String id=rs.getString(1);
				String Name=rs.getString(2);
				String grade=rs.getString(3);
				
				
				
				
				//add column values to the constructor
				Student S1=new Student(id,Name);
				Stud.add(S1);//add object to Array List
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Stud;//returns LiSt
		
	}
	
	
	
	//Get total marks
		public static List<Results> GetSum(String sid) {
		
		ArrayList<Results> Res = new ArrayList<>();
		
			try {

				//create connection
				con=DBconnection.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "select SUM(Marks) from results where Student_id='"+sid+"'";
	    	    ResultSet rs = stmt.executeQuery(sql);
	   

				while(rs.next()) {
					
					
					double mark=rs.getDouble(1);
					
					
					Results R1 = new Results(mark);
					Res.add(R1);
					
				}


				}catch(Exception e) {
					e.printStackTrace();
				}

			return Res;
	}
	
	//get avg marks
		public static List<Progress> GetAvg(String sid) {
			
		ArrayList<Progress> Res = new ArrayList<>();
		
			try {

				//create connection
				con=DBconnection.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "select AVG(Marks) from results where Student_id='"+sid+"'";
	    	    ResultSet rs = stmt.executeQuery(sql);
	   

				while(rs.next()) {
					
					double Avg= rs.getDouble(1);
					
					Progress R1 = new Progress(Avg);
					Res.add(R1);
					
				}


				}catch(Exception e) {
					e.printStackTrace();
				}

			return Res;
	}


}
