package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.SignUtil;


@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String UserId=request.getParameter("uid");
		String name=request.getParameter("uname");
		String password=request.getParameter("password1");
		String confirmpassword=request.getParameter("password2");
		boolean isTrue;
		
		if(password.equals(confirmpassword)) {
			isTrue=SignUtil.insertdetails1(UserId, password, name);
		
			if(isTrue==true) {
				out.println("<script type = 'text/javascript'>");
				out.println("alert('You are successfully signup');");
				out.println("location= 'login.jsp'");
				out.println("</script>");
			}	else {
		
				out.println("<script type = 'text/javascript'>");
				out.println("alert('unsuccessfull');");
				out.println("location= 'Signup.jsp'");
				out.println("</script>");
			
			
		}
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Password Mistmatch');");
			out.println("location= 'Signup.jsp'");
			out.println("</script>");
		}
	}

}
