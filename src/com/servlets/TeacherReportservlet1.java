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

import com.classes.Techer_subject;
import com.classes.Teacher;
import com.connection.TeacherDButil;


@WebServlet("/TeacherReportservlet1")
public class TeacherReportservlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		String status=request.getParameter("Status");
		
			List<Teacher> itemDetails=TeacherDButil.getiItems2(status);
			
			request.setAttribute("itemDetails",itemDetails);
			
		    
			RequestDispatcher dis =request.getRequestDispatcher("TeacherReport.jsp");
			dis.forward(request, response);
		
	}

}
