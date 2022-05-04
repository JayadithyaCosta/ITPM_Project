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

import com.classes.Results;
import com.connection.GenerateresultsReport;
import com.connection.ResultsUtil;


@WebServlet("/SearchSubject")
public class SearchSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String subject= request.getParameter("Subject");
		  PrintWriter out = response.getWriter();
			 response.setContentType("text/html");
			
			try {
				
				//object to pass values to list
				
				List <Results> res=ResultsUtil.getSubjectResults(subject);//retrive all details from the table
				request.setAttribute("resdetails1",res);//pass all the retrived details to view
				
				GenerateresultsReport.generateSubjectReport(subject);//pass all the retrived details to view
				
				  
				out.println("<script type = 'text/javascript'>");
				out.println("var result= alert(\"Subject Report Downloaded!\")");
				out.println("location='SearchSubject.jsp'");
		        out.println("</script>");
				
				}catch(Exception e) {
				
					e.printStackTrace();
				}
				RequestDispatcher dis=request.getRequestDispatcher("SubjectResults.jsp");
				dis.forward(request, response);
		}
	}


