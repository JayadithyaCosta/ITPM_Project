package com.student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/StudentInsert")
public class StudentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String sid = request.getParameter("sid");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String grade = request.getParameter("grade");
		String cls = request.getParameter("cls");
		String gname = request.getParameter("gname");
		String contact = request.getParameter("contact");
		String occupation = request.getParameter("occupation");
		
		boolean isTrue;
		isTrue = StudentDButil.insertStudent(name, sid, dob, address, gender, grade, cls, gname, contact, occupation);
		
		if(isTrue == true)
		{
			/*
			 * RequestDispatcher dis = request.getRequestDispatcher("SearchStudent.jsp");
			 * dis.forward(request, response);
			 */
			out.println("<script type='text/javascript'>");
			out.println("alert('New Student succesfully added!');");
			out.println("location='SearchStudent.jsp'");
			out.println("</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		
	}

	}}
