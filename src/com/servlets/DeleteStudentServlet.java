package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DeleteStudentServlet")
public class DeleteStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		isTrue=StudentDButil.deleteStudent(id);
		
		if(isTrue==true) {
			RequestDispatcher dispatcher=request.getRequestDispatcher("SearchStudent.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<StudentClass> stuDetails = StudentDButil.getStudentDetails(id);
			request.setAttribute("stuDetails",stuDetails);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("studentaccount.jsp");
			dispatcher.forward(request, response);
		}
	}
		
	}


