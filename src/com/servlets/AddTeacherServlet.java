package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.TeacherDButil;


@WebServlet("/AddTeacherServlet")
public class AddTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
	
		String fullname = request.getParameter("Full_name");
		String adress=request.getParameter("Address");
		String gender=request.getParameter("Gender");
		String dob=request.getParameter("DoB");
		String nic=request.getParameter("nic");
		String phone=request.getParameter("phone");
		String joindate=request.getParameter("joindate");
		String Qualification=request.getParameter("Qualification");
		String discription=request.getParameter("discription");


        String Status = "Active";
		
		
		 boolean isTrue;
			
			isTrue = TeacherDButil.insertteacher(fullname, adress, gender,  dob, nic,phone,joindate,Qualification,discription, Status);
			
			if(isTrue == true) {
				
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Teacher successful add to the database');");
				out.println("location='Addteacher.jsp'");
				out.println("</script>");
				
				
				
			} else {

				out.println("<script type='text/javascript'>");
				out.println("alert('Cant add This Teacher is Already Added');");
				out.println("location='Addteacher.jsp'");
				out.println("</script>");
				
			}
		
		
	}

}
