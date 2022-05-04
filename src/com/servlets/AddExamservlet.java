package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.ExamsDBUtil;
import com.connection.DBconnection;


@WebServlet("/AddExamservlet")
public class AddExamservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
				String ExamID = request.getParameter("eid");
				Integer Total_Questions = Integer.parseInt(request.getParameter("totalques"));
				Integer Marks = Integer.parseInt(request.getParameter("mark"));
				String SubjectID= request.getParameter("subid");
				
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				
				boolean isTrue;
				
				isTrue = ExamsDBUtil.insertexams(ExamID,Total_Questions, Marks,SubjectID);//call the methode
				
				if(isTrue == true) {
					//RequestDispatcher dis = request.getRequestDispatcher("ListExamDetails.jsp");//navigate to the jsp file from the servlet
					//dis.forward(request, response);

					out.println("<script type = 'text/javascript'>");
					out.println("alert('Saved successfuly');");
					out.println("location= 'ListExamDetails.jsp'");//navigate to the jsp file from the servlet
					out.println("</script>");
					
				} else {
					RequestDispatcher dis2 = request.getRequestDispatcher("WEB-INF/views/Unsuccess.jsp");
					dis2.forward(request, response);
				}
	}

}
