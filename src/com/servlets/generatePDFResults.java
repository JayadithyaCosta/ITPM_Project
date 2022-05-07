package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.GenerateresultsReport;

@WebServlet("/generatePDFResults")
public class generatePDFResults extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		   String stid= request.getParameter("Stid");
		   PrintWriter out = response.getWriter();
			 response.setContentType("text/html");
			
			try {
				
				//object to pass values to list
				GenerateresultsReport.generatePDF(stid);//pass all the retrived details to view
				
						  
						out.println("<script type = 'text/javascript'>");
						out.println("var result= alert(\"Report Downloaded!\")");
				        out.println("location='success.jsp'");
						out.println("</script>");
						
						
						
					  // RequestDispatcher dis = request.getRequestDispatcher("success.jsp");//pass control to view 
						
						//dis.forward(request, response);
				   
				
				
				}catch(Exception e) {
				
					e.printStackTrace();
				}
				RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
		}
	}


