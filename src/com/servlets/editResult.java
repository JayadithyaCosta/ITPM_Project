package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Progress;
import com.classes.Results;
import com.connection.ResultsUtil;
import com.connection.resultsUtil2;

@WebServlet("/editResult")
public class editResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
		  String stid=request.getParameter("Stid");
		   String subject=request.getParameter("Subject");
		   String mark=request.getParameter("mark");
		   
		   double marks=Double.parseDouble(mark);
		  
		   double avg = 0,total = 0;
		   
		   
		   
		   
		   boolean isTrue,isTrue1;
		   
		   //code to update
		   isTrue=ResultsUtil.updateResults(stid, subject, marks);
		
		   
		   if(isTrue==true) {
			   //get updated sum
			   List<Results>R1=resultsUtil2.GetSum(stid);
			   
			   
			   //get updated avg
			   List<Progress>R2=resultsUtil2.GetAvg(stid);
			   
			   //get updated subject
			   List<Results>R3=ResultsUtil.getStudentResults(stid);
				
			   
			   //Assign values
			   for(Results r:R1) {
				 total= r.getTotal();
				   
			   }
			   
			   for(Progress p:R2) {
				 avg=p.getAvg();
				 
				   
			   }
			   
			   //round answer
			   avg=Math.round(avg*100.0)/100.0;
			   
			   //add to DB
			   isTrue1=ResultsUtil.updateProgress(stid, total,avg);
			   
			   //set values to retrieve
			   		request.setAttribute("sumdetails",R1);
				  
				  request.setAttribute("Avgdetails",R2);
				  
				  request.setAttribute("subdetails",R3);
			   RequestDispatcher dis = request.getRequestDispatcher("edit.jsp");//pass control to view 
				
				dis.forward(request, response);
		   }
		   else {
			   RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");//pass control to view 
				
				dis2.forward(request, response);
		   }
			
	}

}
