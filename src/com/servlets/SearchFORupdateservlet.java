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

import com.classes.item;
import com.connection.TeacherDButil;
import com.classes.Teacher;


@WebServlet("/SearchFORupdateservlet")
public class SearchFORupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String itemName=request.getParameter("TName");
		String Status=request.getParameter("Status");
		
		boolean istrue;
		
		istrue=TeacherDButil.searchvalid(itemName,Status);
		if(istrue==true) {
			List<Teacher> itemDetails=TeacherDButil.getTeacher(itemName,Status);
			request.setAttribute("itemDetails",itemDetails);
		    
			RequestDispatcher dis =request.getRequestDispatcher("Search_for_update.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Item Name  Not Found');");
			out.println("location='Search_for_update.jsp'");
			out.println("</script>");
			
		}
	}

}
