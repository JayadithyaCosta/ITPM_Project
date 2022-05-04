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

@WebServlet("/DeleteQuestionservlet")
public class DeleteQuestionservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				String QuestionID = request.getParameter("qid");//create variable to save the values passed through jsp page to this controller class
				
				boolean isTrue;
				
				isTrue = ExamsDBUtil.deletequestion(QuestionID);
				
				if(isTrue == true) {
					//RequestDispatcher dis = request.getRequestDispatcher("ListQuestionDetails.jsp");
					//dis.forward(request, response);
					

					out.println("<script type = 'text/javascript'>");
					out.println("alert('Do you want to delete this record?');");//alert
					out.println("location= 'ListQuestionDetails.jsp'");
					out.println("</script>");
					
					
				} else {
					RequestDispatcher dis2 = request.getRequestDispatcher("WEB-INF/views/Unsuccess.jsp");
					dis2.forward(request, response);
				}
	}

}
