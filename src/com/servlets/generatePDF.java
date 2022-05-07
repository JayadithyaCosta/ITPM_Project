package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.GenerateReport;

@WebServlet("/generatePDF")
public class generatePDF extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  String examid= request.getParameter("ExamID");
			
			try {
				
				//object to pass values to list
				GenerateReport.generatePDF(examid);//pass all the retrived details to view
				
				
				
				}catch(Exception e) {
				
					e.printStackTrace();
				}
				RequestDispatcher dis=request.getRequestDispatcher("WEB-INF/views/success.jsp");
				dis.forward(request, response);
		}
	}


