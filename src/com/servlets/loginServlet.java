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

import com.classes.Login;
import com.connection.SignUtil;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String Id = request.getParameter("id");
		String psw = request.getParameter("password");
		boolean isTrue;
		
		isTrue = SignUtil.validate(Id, psw);
		if (isTrue == true) {
		

			List <Login> user= SignUtil.getuserDetails(Id);
			request.setAttribute("userdetails",user);
			RequestDispatcher dis=request.getRequestDispatcher("SystemHome.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your UserID or password is incorrect');");
			out.println("location= 'login.jsp'");
			out.println("</script>");
			
		}
	}

}
