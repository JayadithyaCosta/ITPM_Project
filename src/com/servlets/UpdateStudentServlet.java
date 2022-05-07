package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String sid = request.getParameter("sid");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String grade = request.getParameter("grade");
		String cls = request.getParameter("cls");
		String gname = request.getParameter("gname");
		String contact = request.getParameter("contact");
		String occupation = request.getParameter("occupation");
		
		boolean isTrue;
		
		isTrue=StudentDButil.updatestudent(id, sid, name, gender, dob, address, grade, cls, gname, contact, occupation);
		
		if(isTrue==true) {
			
			List<StudentClass> stuDetails = StudentDButil.getStudentDetails(sid);
			request.setAttribute("stuDetails", stuDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("studentaccount.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
