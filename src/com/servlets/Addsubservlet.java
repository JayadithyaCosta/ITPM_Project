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

import com.classes.report;
import com.connection.TeacherDButil;


@WebServlet("/Addsubservlet")
public class Addsubservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		String ItemName=request.getParameter("ItemName");
		
		
	boolean istrue;
		
		istrue=TeacherDButil.Reportvalid1();
		if(istrue==true) {
			
		
				List<report> itemDetails=TeacherDButil.getName1();
			    request.setAttribute("itemDetails",itemDetails);
			    RequestDispatcher dis =request.getRequestDispatcher("Addsubject.jsp");
				dis.forward(request, response);
				
			
			  
		}
		
		      
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Can't Refresh DB');");
			out.println("location='DBrefresh.jsp.jsp'");
			out.println("</script>");
			
		}
	}

}
