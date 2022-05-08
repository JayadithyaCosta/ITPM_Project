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
import com.classes.Teacher;
import com.classes.Techer_subject;
import com.connection.TeacherDButil;


@WebServlet("/SearchTeacherservlet")
public class SearchTeacherservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		//store front end pass value to variable
		String TeacherName=request.getParameter("TName");
		String Status=request.getParameter("Status");
		
		boolean istrue;
		
		
		istrue=TeacherDButil.searchvalid(TeacherName,Status);
		if(istrue==true) {
			//call function and get Db data
			try{List<Teacher> itemDetails=TeacherDButil.getTeacher(TeacherName,Status);
			request.setAttribute("itemDetails",itemDetails);
			}
			
			catch (Exception e) {
				e.printStackTrace();
			}
			
			
			RequestDispatcher dis =request.getRequestDispatcher("searchTeacher.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Item name  not Found');");
			out.println("location='searchTeacher.jsp'");
			out.println("</script>");
			
		}
		
		
		
	}

}
