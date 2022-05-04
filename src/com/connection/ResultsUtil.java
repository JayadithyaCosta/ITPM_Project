package com.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.classes.Results;
import com.classes.Student;
import com.connection.DBconnection;


public class ResultsUtil {
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static boolean isSuccess;
	
	
	//static method since we can directly access from class
	public static boolean insertSubject(int id,String Studentid,String sub,double marks) {
		boolean isSuccess = false;
		//create db connection
		
		try {
			
			con=DBconnection.getConnection();//get connection from the Connection class
			stmt=con.createStatement();//statement variable to pass to query
			
			//SQL query
			String sql="Insert into results values('"+id+"','"+Studentid+"','"+sub+"','"+marks+"')";
			//The values returned success is 1 unsuccess is 0
			int rs=stmt.executeUpdate(sql);//return 1 or 0
			
			//check the return value
			if(rs>0) {
				isSuccess=true; //data is added to database
			}
			else {
				isSuccess=false;//data not added to database
			}
		}catch(Exception e) {
			e.printStackTrace();//catch any exception if occurred during try
		}
		return isSuccess;//returns the boolean value
	}
	
	//update operation DBMS
	public static boolean updateResults(String stuid,String Subject,double marks) {
		try {
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			String sql="update results  set Marks='"+marks +"' where Student_id='"+stuid+"' AND Subject='"+Subject+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	//add progresss to table
	public static boolean insertProgress(int id,double total,double avg,String stuId,String status) {
		
		boolean isSuccess = false;
		//create db connection
		
		try {
			
			con=DBconnection.getConnection();//get connection from the Connection class
			stmt=con.createStatement();//statement variable to pass to query
			
			//SQL query
			String sql="Insert into progress(idProgress,Total_mark,Average,Status,Student_id) values('"+id+"','"+total+"','"+avg+"','"+status+"','"+stuId+"')";
			//The values returned success is 1 unsuccess is 0
			int rs=stmt.executeUpdate(sql);//return 1 or 0
			
			//check the return value
			if(rs>0) {
				isSuccess=true; //data is added to database
			}
			else {
				isSuccess=false;//data not added to database
			}
		}catch(Exception e) {
			e.printStackTrace();//catch any exception if occurred during try
		}
		return isSuccess;//returns the boolean value
		
		
		
	}
	
	
	//Retrieve student details
	public static List <Student> getStudentDetails(String stno){
		ArrayList<Student> student=new ArrayList<>();//create an Array List of object type
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select Student_id,Full_name from student where Student_id='"+stno+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				String ID=rs.getString(1);
				String Name=rs.getString(2);
				
				
				
				//add column values to the constructor
				Student s1=new Student(ID,Name);
				student.add(s1);//add object to Array List
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return student;//returns LiSt
		
	}
	
	//retrive subject and marks
	public static List <Results> getStudentResults(String stno){
		ArrayList<Results> Res=new ArrayList<>();//create an Array List of object type
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select * from sms.results where Student_id='"+stno+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				int resid=rs.getInt(1);
				String stid=rs.getString(2);
				String subject=rs.getString(3);
				double mark=rs.getDouble(4);
				
				
				
				//add column values to the constructor
				Results R1=new Results(subject,mark);
				Res.add(R1);//add object to Array List
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Res;//returns LiSt
		
	}
	
	
	//delete operation DBMS
	public static boolean deleteResults(String stuid,String Subject) {
		try {
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			String sql="delete from results where Student_id='"+stuid+"' AND Subject='"+Subject+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	
	//Insert a progress
	public static boolean AddRemark(String stno,String remark,String Tid) {
		
		boolean isSuccess = false;
		//create db connection
		
		try {
			
			con=DBconnection.getConnection();//get connection from the Connection class
			stmt=con.createStatement();//statement variable to pass to query
			
			//SQL query
			String sql="update progress set Remark='"+remark +"',Teacher_id ='"+Tid+"' where Student_id='"+stno+"'";
			//The values returned success is 1 unsuccess is 0
			int rs=stmt.executeUpdate(sql);//return 1 or 0
			
			//check the return value
			if(rs>0) {
				isSuccess=true; //data is added to database
			}
			else {
				isSuccess=false;//data not added to database
			}
		}catch(Exception e) {
			e.printStackTrace();//catch any exception if occurred during try
		}
		return isSuccess;//returns the boolean value
		
		
		
	}
	
	
	//Retrieve  subject results 
	public static List <Results> getSubjectResults(String subject){
		ArrayList<Results> Res=new ArrayList<>();//create an Array List of object type
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select * from results where Subject='"+subject+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				int resid=rs.getInt(1);
				String stid=rs.getString(2);
				String subject1=rs.getString(3);
				double mark=rs.getDouble(4);
				
				
				
				//add column values to the constructor
				Results R1=new Results(mark,subject1,stid);
				Res.add(R1);//add object to Array List
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Res;//returns LiSt
		
	}
	
	
	//retrieve student progress
	public static List <Results> getStudentprogress(String stid){
		ArrayList<Results> Res=new ArrayList<>();//create an Array List of object type
		try {	
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql= "select * from progress where Student_id='"+stid+"'"; //the + signs are for conacatanation
			rs=stmt.executeQuery(sql);
			
			while(rs.next()){
			//returns a boolean value 
				int id=rs.getInt(1);
				double total=rs.getDouble(2);
				double Average=rs.getDouble(3);
				String status=rs.getString(4);
				String remark=rs.getString(5);
				String sid=rs.getString(6);
				String tid=rs.getString(7);
				
				
				//add column values to the constructor
				Results R1=new Results(Average,total,status);
				Res.add(R1);//add object to Array List
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Res;//returns LiSt
		
	}
	
	
	
	
	


		//update operation DBMS for progress
		public static boolean updateProgress(String stuid,double total,double avg1) {
			try {
				con=DBconnection.getConnection();
				stmt=con.createStatement();
				
				String sql="update progress  set Total_mark='"+total +"',Average='"+avg1+"' where Student_id='"+stuid+"'";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess=true;
				}else {
					isSuccess=false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}
		

}
