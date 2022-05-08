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
import com.connection.TeacherDButil;


@WebServlet("/searchsubject")
public class searchsubject extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		//store front end pass value to variable
		String TeacherName=request.getParameter("TName");
		
		boolean istrue1;
		istrue1=TeacherDButil.searchvalid2(TeacherName);
		
		if(istrue1==true) {
			
			//call Search teacher function
			try{List<Techer_subject> itemDetails1=TeacherDButil.SerchTeacher(TeacherName);
			request.setAttribute("itemDetails1",itemDetails1);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			
			RequestDispatcher dis =request.getRequestDispatcher("searchSubject.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Teacher name  not Found');");
			out.println("location='searchSubject.jsp'");
			out.println("</script>");
			
		}
	}

}
