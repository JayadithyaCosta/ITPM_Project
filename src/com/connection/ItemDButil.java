package com.connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.classes.item;
import com.classes.itmcondition;
import com.classes.report;

//Add item function
public class ItemDButil {
	
        private static boolean isSuccess;
		private static Connection con=null;
		private static Statement stmt=null;
		private static ResultSet rs = null;
		
	public static boolean insertitem(String itemname ,String itemcode,String category ,String description ,String Status) {
	    	
	    	boolean isSuccess = false;
	    	
	    	
			try {
	    		
				
				con=DBconnection.getConnection();
				stmt =con.createStatement();
				String sql = "insert into inventory values (0,'"+itemname+"','"+itemcode+"','"+category+"','"+description+"','"+Status+"',now())";
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
	
	public static  boolean searchvalid(String itemName,String Status) {

	try {	con=DBconnection.getConnection();
		stmt =con.createStatement();
		
		String sql="select * from inventory where Itemname LIKE '"+itemName+"%' AND Status LIKE '%"+Status+"%'";
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
	
//get search  data function
public static List<item> getiItems(String itemName,String Status){
		
		ArrayList<item> items = new ArrayList<item>();
		
		try {
			con=DBconnection.getConnection();
			stmt =con.createStatement();
	        String sql=" select * from inventory where itemname LIKE '"+itemName+"%' AND Status LIKE '%"+Status+"%'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int itemNo = rs.getInt(1);
				String item_name1=rs.getString(2);
				String item_code=rs.getString(3);
				String categorey=rs.getString(4);
				String description=rs.getString(5);
				String status=rs.getString(6);
				String date=rs.getString(7);
				
				item itm = new item(itemNo,item_name1,item_code,categorey,description,status,date);
				items.add(itm);
						
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return items;
			
	}
	
//Update item function

	public static boolean Updateitem(String ItemNo, String ItemName,String ItemCode,String category,String description,String Status,String Date) {
		
		int ItemNO1=Integer.parseInt(ItemNo);
		try {
			con=DBconnection.getConnection();
			stmt =con.createStatement();
			String sql ="update inventory set  itemname='"+ItemName+"', itemcode='"+ItemCode+"',description='"+description+"',status='"+Status+"',date='"+Date+"' "+"where itemNo ='"+ItemNO1+"'";
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
public static boolean DeleteItem(String Ino) {
		int conIno=Integer.parseInt(Ino);
		try {
			con=DBconnection.getConnection();
			stmt =con.createStatement();
			String sql= "delete from inventory where itemNo='"+conIno+"'";
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

		
//report generate function
//search valid function

public static  boolean Reportvalid() {

	try {	con=DBconnection.getConnection();
		stmt =con.createStatement();
		
		String sql="select DISTINCT(Item_Name) as name from inventory group by Item_Name";
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
	
// get item name
public static List<report> getName(){
	
	ArrayList<report> items = new ArrayList<report>();
	
	try {
		con=DBconnection.getConnection();
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
//get total 
public static int getiIotalItem(String ItemName){
	
	String count = null;
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql="select COUNT(Item_Name) as name from inventory where  Item_Name='"+ItemName+"'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			count=rs.getString("name");
		   

			
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	 int conval = Integer.parseInt(count);
	
	
	return conval;
		
}
//get available total
public static int getiIotalItemAvilable(String ItemName){
	
	String count = null;
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql="select COUNT(Item_Name) as name from inventory where  Item_Name='"+ItemName+"' and Status='Available'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			count=rs.getString("name");
		   

			
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	 int conval = Integer.parseInt(count);
	
	
	return conval;
		
}
//get using total
public static int getiIotalItemUsing(String ItemName){
	
	String count = null;
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql="select COUNT(Item_Name) as name from inventory where  Item_Name='"+ItemName+"' and Status='Using'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			count=rs.getString("name");
		   

			
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	 int conval = Integer.parseInt(count);
	
	
	return conval;
		
}
//get re condition count
public static int getiIotalItemRecondition(String ItemName){
	
	String count = null;
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql="select COUNT(Item_Name) as name from inventory where  Item_Name='"+ItemName+"' and Status='Re-condition'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			count=rs.getString("name");
		   

			
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	 int conval = Integer.parseInt(count);
	
	
	return conval;
		
}
//get broken count
public static int getiIotalItemDiscurd(String ItemName){
	
	String count = null;
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql="select COUNT(Item_Name) as name from inventory where  Item_Name='"+ItemName+"' and Status='Discurd'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			count=rs.getString("name");
		   

			
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	 int conval = Integer.parseInt(count);
	
	
	return conval;
		
}
public static String getitemname(String ItemName){
	
	String count = null;
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql="select DISTINCT(Item_Name) as name from inventory where Item_Name='"+ItemName+"'";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			
			count=rs.getString("name");
		   

			
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	 
	
	
	return count;
		
}
//report genarate function
public static List<item> getiItems2(String Status){
	
	ArrayList<item> items = new ArrayList<item>();
	
	try {
		con=DBconnection.getConnection();
		stmt =con.createStatement();
        String sql=" select * from inventory where status LIKE '%"+Status+"%' ORDER BY catagory";
		rs=stmt.executeQuery(sql);
		
		while(rs.next()) {
			int itemNo = rs.getInt(1);
			String item_name1=rs.getString(2);
			String item_code=rs.getString(3);
			String categorey=rs.getString(4);
			String description=rs.getString(5);
			String status=rs.getString(6);
			String date=rs.getString(7);
			
			item itm = new item(itemNo,item_name1,item_code,categorey,description,status,date);
			items.add(itm);
					
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return items;
		
}


}
