package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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


@WebServlet("/deleteMark")
public class deleteMark extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		 response.setContentType("text/html");
		 
		  String stid=request.getParameter("Stid");
		  String subject=request.getParameter("Subject");
		   
		   
		   boolean isTrue,isTrue1;
		   
		   //code to delete
		   isTrue=ResultsUtil.deleteResults(stid, subject);
		   
		   
		   
		   double avg = 0,total = 0;
		   
		   
		   
		   if(isTrue==true) {
				  
				out.println("<script type = 'text/javascript'>");
				out.println("var result= confirm(\"Confirm Delete!\")");
		        out.println("location='deleteMark.jsp'");
				
				out.println("</script>");
				
				//retrieve updated sum
				  List<Results>R1=resultsUtil2.GetSum(stid);
				  
				  //retrieve updated average
				  List<Progress>R2=resultsUtil2.GetAvg(stid);
				  
				  //retrieve remaining subject
				   List<Results>R3=ResultsUtil.getStudentResults(stid);
					   
				   for(Results r:R1) {
					   
					 //assign tota
					 total= r.getTotal();
					   
				   }
				   
				   for(Progress p:R2) {
					 //assign avg
					 avg=p.getAvg();
					 
					   
				   }
				   
				   //round avg to two decimal
				   avg=Math.round(avg*100.0)/100.0;
				   
				   //add to db update total and avg
				   isTrue1=ResultsUtil.updateProgress(stid, total,avg);
				   
				   //pass to view
					  request.setAttribute("sumdetails",R1);
					  
					  request.setAttribute("Avgdetails",R2);
					  
					  request.setAttribute("subdetails",R3);
				
				
				
				
				
				
				
				
				
			 RequestDispatcher dis = request.getRequestDispatcher("delete.jsp");//pass control to view 
				
		       dis.forward(request, response);
		   }
		   else {
			    out.println("<script type = 'text/javascript'>");
				out.println("alert('cannot be deleted');");
				out.println("location= 'Unsuccess.jsp'");
				out.println("</script>");
			  
		   }
	}

}
