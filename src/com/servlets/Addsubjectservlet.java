package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.TeacherDButil;


@WebServlet("/Addsubjectservlet")
public class Addsubjectservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
	
		String teachername = request.getParameter("Tname");
		String year=request.getParameter("year");
		String grade=request.getParameter("grade");
		String clz=request.getParameter("class");
		String subject=request.getParameter("Subject");
		


        
		
		
		 boolean isTrue;
			
			isTrue = TeacherDButil.insertitem2(teachername,year,grade,clz,subject);
			
			if(isTrue == true) {
				
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Subject successful add to the Teacher');");
				out.println("location='DBrefresh.jsp'");
				out.println("</script>");
				
				
				
			} else {

				out.println("<script type='text/javascript'>");
				out.println("alert('Cant add This Subject is Already Added');");
				out.println("location='Addsubject.jsp'");
				out.println("</script>");
				
			}
		
	}

}
