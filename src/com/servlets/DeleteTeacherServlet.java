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


@WebServlet("/DeleteTeacherServlet")
public class DeleteTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		//store front end pass value to variable
		String ItemNo=request.getParameter("ID");
		boolean isTrue;
		
		//call Delete function
		isTrue=TeacherDButil.DeleteTeacher(ItemNo);
		
		if(isTrue==true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Teacher successful Remove from System');"+ItemNo);
			out.println("location='Search_for_update.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Can't delete this Teacher in this moment');");
			out.println("location='DeleteTeacher.jsp'");
			out.println("</script>");
			}
		
		
		
		
	}

	

}
