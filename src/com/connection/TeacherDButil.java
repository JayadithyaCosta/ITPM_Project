package com.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.classes.report;
import com.classes.Teacher;
import com.classes.Techer_subject;

//Add Teacher function
public class TeacherDButil {
	
        private static boolean isSuccess;
		private static Connection con=null;
		private static Statement stmt=null;
		private static ResultSet rs = null;
		
	public static boolean insertteacher(String fullname ,String adress,String gender ,String dob ,String nic,String phone ,String joindate ,String Qualification ,String discription , String Status) {
	    	
	    	boolean isSuccess = false;
	    	
	    	
			try {
	    		
				
				con=Dbconnection.getConnection();
				stmt =con.createStatement();
				String sql = "insert into teacher_details values (0,'"+fullname+"','"+adress+"','"+gender+"','"+dob+"','"+nic+"','"+phone+"','"+joindate+"','"+Qualification+"','"+discription+"','"+Status+"',now())";
				int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
//add subject function	
	public static boolean insertitem2(String teachername ,String year,String grade ,String clz,String subject ) {
    	
    	boolean isSuccess = false;
    	
    	
		try {
    		
			
			con=Dbconnection.getConnection();
			stmt =con.createStatement();
			String sql = "insert into teacher_subject values (0,'"+teachername+"','"+year+"','"+grade+"','"+clz+"','"+subject+"')";
			int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
	
//search valid function
	
	public static  boolean searchvalid(String fullname,String Status) {

	try {	con=Dbconnection.getConnection();
		stmt =con.createStatement();
		
		String sql="select * from teacher_details where fullName LIKE '"+fullname+"%' OR status LIKE '%"+Status+"%'";
		rs=stmt.executeQuery(sql);
	
	
	
	if(rs.next()) {
		isSuccess=true;
		}
	else {
		isSuccess=false;
	   }
	
      }
   catch (Exception e) {
	e.printStackTrace();
      }
	
		return isSuccess;
}
	
//search valid2 function
	
	public static  boolean searchvalid2(String fullname) {

		try {	con=Dbconnection.getConnection();
			stmt =con.createStatement();
			
			String sql="select * from teacher_subject where teachername LIKE '"+fullname+"%'";
			rs=stmt.executeQuery(sql);
		
		
		
		if(rs.next()) {
			isSuccess=true;
			}
		else {
			isSuccess=false;
		     }
		
	      }
	  catch (Exception e) {
		e.printStackTrace();
	      }
		
			return isSuccess;
	}	

//get search  data2 function
		public static List<Techer_subject> SerchTeacher(String fullname){
				
				ArrayList<Techer_subject> items1 = new ArrayList<Techer_subject>();
				
				try {
					con=Dbconnection.getConnection();
					stmt =con.createStatement();
			        String sql=" select * from teacher_subject where teachername LIKE '"+fullname+"%' order by subject";
					rs=stmt.executeQuery(sql);
					
					while(rs.next()) {
						
						String fullname1=rs.getString(2);
						String year=rs.getString(3);
						String grade=rs.getString(4);
						String clz=rs.getString(5);
						String subject=rs.getString(6);
						




						
						Techer_subject itm = new Techer_subject(fullname1,year,grade,clz,subject);
						items1.add(itm);
								
					}
				}
				catch (Exception e) {
					e.printStackTrace();
				}
				
				return items1;
					
			}
					
//get search  data function
public static List<Teacher> getTeacher(String fullname,String Status){
		
		ArrayList<Teacher> items = new ArrayList<Teacher>();
		
		try {
			con=Dbconnection.getConnection();
			stmt =con.createStatement();
	        String sql=" select * from teacher_details where fullName LIKE '"+fullname+"%' AND status LIKE '%"+Status+"%' order by gender";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Tid = rs.getInt(1);
				String fullname1=rs.getString(2);
				String adress=rs.getString(3);
				String gender=rs.getString(4);
				String dob=rs.getString(5);
				String nic=rs.getString(6);
				String phone=rs.getString(7);
				String joindate=rs.getString(8);
				String qualification=rs.getString(9);
				String status=rs.getString(10);
				String description=rs.getString(11);
				String systemadd=rs.getString(12);





				
				Teacher itm = new Teacher(Tid,fullname1,adress,gender,dob,nic,phone,joindate,qualification,status,description,systemadd);
				items.add(itm);
						
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return items;
			
	}
	
//Update item function

	public static boolean UpdateTeacher(String id,String fullname,String adress,String dob ,String gender ,String nic ,String phone,String joindate ,String qulification ,String status ,String discrption  ) {
		
		int ItemNO1=Integer.parseInt(id);
		try {
			con=Dbconnection.getConnection();
			stmt =con.createStatement();
			String sql ="update teacher_details set  fullname='"+fullname+"', address='"+adress+"',gender='"+gender+"',dob='"+dob+"',nic='"+nic+"',phone='"+phone+"',joinDate='"+joindate+"',qualification='"+qulification+"',status='"+status+"',description='"+discrption+"'"+"where id ='"+ItemNO1+"'";
			int rs=stmt.executeUpdate(sql);
			
			
			if(rs>0) {
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
//delete item function
public static boolean DeleteTeacher(String ID) {
		int conIno=Integer.parseInt(ID);
		try {
			con=Dbconnection.getConnection();
			stmt =con.createStatement();
			String sql= "delete from teacher_details where id='"+conIno+"'";
			int rs=stmt.executeUpdate(sql);
			
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}



//get item name2
public static List<report> getName1(){
	
	ArrayList<report> items = new ArrayList<report>();
	
	try {
		con=Dbconnection.getConnection();
		stmt =con.createStatement();
     String sql=" select DISTINCT(fullName) as name from teacher_details";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			String itemname=rs.getString("name");
			report itm = new report(itemname);
			items.add(itm);
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return items;
		
}
	
// get item name
public static List<report> getName(){
	
	ArrayList<report> items = new ArrayList<report>();
	
	try {
		con=Dbconnection.getConnection();
		stmt =con.createStatement();
        String sql=" select DISTINCT(Item_Name) as name from inventory";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			String itemname=rs.getString("name");
			report itm = new report(itemname);
			items.add(itm);
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return items;
		
}

//report genarate function
public static List<Teacher> getiItems2(String Status){
	
	ArrayList<Teacher> items = new ArrayList<Teacher>();
	
	try {
		con=Dbconnection.getConnection();
		stmt =con.createStatement();
        String sql=" select * from teacher_details where  status LIKE '%"+Status+"%' ORDER BY gender";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			int ID = rs.getInt(1);
			String fullname=rs.getString(2);
			String adress=rs.getString(3);
			String gender=rs.getString(4);
			String dob=rs.getString(5);
			String nic=rs.getString(6);
			String phone=rs.getString(7);
			String joindate=rs.getString(8);
			String qulification=rs.getString(9);
			String status=rs.getString(10);
			String discrption=rs.getString(11);
			String systemadddate=rs.getString(12);
			
			Teacher itm = new Teacher(ID,fullname,adress,gender,dob,nic,phone,joindate,qulification,status,discrption,systemadddate);
			items.add(itm);
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return items;
		
}
//report genarate function filter by name
public static List<Teacher> getiItems4(String TeacherName){
	
	ArrayList<Teacher> items = new ArrayList<Teacher>();
	
	try {
		con=Dbconnection.getConnection();
		stmt =con.createStatement();
      String sql=" select * from teacher_details where  fullName LIKE '%"+TeacherName+"%' ORDER BY gender";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			int ID = rs.getInt(1);
			String fullname=rs.getString(2);
			String adress=rs.getString(3);
			String gender=rs.getString(4);
			String dob=rs.getString(5);
			String nic=rs.getString(6);
			String phone=rs.getString(7);
			String joindate=rs.getString(8);
			String qulification=rs.getString(9);
			String status=rs.getString(10);
			String discrption=rs.getString(11);
			String systemadddate=rs.getString(12);
			
			Teacher itm = new Teacher(ID,fullname,adress,gender,dob,nic,phone,joindate,qulification,status,discrption,systemadddate);
			items.add(itm);
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return items;
		
}
//report generate function
//search valid function2

public static  boolean Reportvalid1() {

	try {	con=Dbconnection.getConnection();
		stmt =con.createStatement();
		
		String sql="select DISTINCT(fullName) as name from teacher_details ";
		rs=stmt.executeQuery(sql);
	
	
	
	if(rs.next()) {
		isSuccess=true;
		}
	else {
		isSuccess=false;
	   }
	
  }
catch (Exception e) {
	e.printStackTrace();
  }
	
		return isSuccess;
}


}
