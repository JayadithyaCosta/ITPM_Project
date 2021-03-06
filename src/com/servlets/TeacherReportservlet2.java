package com.servlets;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.Teacher;
import com.classes.Techer_subject;
import com.connection.TeacherDButil;

@WebServlet("/TeacherReportservlet2")
public class TeacherReportservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		//store front end pass value to variable
		String TeacherName=request.getParameter("TeacherName");
		
		    //call function and get data
		
		    List<Teacher> itemDetails=TeacherDButil.getiItems4(TeacherName);
			List<Techer_subject> itemDetails1=TeacherDButil.SerchTeacher(TeacherName);
			request.setAttribute("itemDetails1",itemDetails1);
			request.setAttribute("itemDetails",itemDetails);
		    
			//pass data
			RequestDispatcher dis =request.getRequestDispatcher("TeacherReport3.jsp");
			dis.forward(request, response);
	}

}
