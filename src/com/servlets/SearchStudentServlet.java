package com.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/SearchStudentServlet")
public class SearchStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String sid=request.getParameter("sid");
		boolean isTrue;
		
		
		isTrue=StudentDButil.validate(sid);
		
		
		if(isTrue==true) {
			
			List<StudentClass> studetails = StudentDButil.getStudentDetails(sid);
			request.setAttribute("stuDetails", studetails);
			
			RequestDispatcher dis =request.getRequestDispatcher("studentaccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Student ID is incorrect!');");
			out.println("location='SearchStudent.jsp'");
			out.println("</script>");
		}
	}

}
