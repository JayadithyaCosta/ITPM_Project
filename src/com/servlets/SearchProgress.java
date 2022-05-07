package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Results;
import com.connection.ResultsUtil;


@WebServlet("/SearchProgress")
public class SearchProgress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
String stid=request.getParameter("stid");
		
		try {
			
			//object to pass values to list
			
			List <Results> progress=ResultsUtil.getStudentprogress(stid);//retrive all details from the table
			request.setAttribute("progdetails",progress);//pass all the retrived details to view
			
			
			
			}catch(Exception e) {
			
				e.printStackTrace();
			}
			RequestDispatcher dis=request.getRequestDispatcher("Addprogress.jsp");
			dis.forward(request, response);
	}
	}


