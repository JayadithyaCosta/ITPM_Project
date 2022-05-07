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


@WebServlet("/UpdateTeacherservlet")
public class UpdateTeacherservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String id=request.getParameter("id");
		String fullname = request.getParameter("fullname");
		String adress = request.getParameter("adress");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String joindate = request.getParameter("joindate");
		String qulification = request.getParameter("qulification");
		String status = request.getParameter("status");
		String discrption = request.getParameter("discrption");
		
		
        boolean istrue;
		
		istrue=TeacherDButil.UpdateTeacher(id,fullname,adress,dob,gender,nic,phone,joindate,qulification,status,discrption);
		
		
		if(istrue==true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('item sucsessfuley update');");
			out.println("location='Search_for_update.jsp'");
			out.println("</script>");
		}
		else {
				
			out.println("<script type='text/javascript'>");
			out.println("alert('update unsucsessfuley ');");
			out.println("location='Search_for_update.jsp'");
			out.println("</script>");
		}
	}
	

}
