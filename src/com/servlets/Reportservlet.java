package com.servlet;

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
import com.connection.ItemDButil;


@WebServlet("/Reportservlet")
public class Reportservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		String Status=request.getParameter("Status");
		
			List<item> itemDetails=ItemDButil.getiItems2(Status);
			request.setAttribute("itemDetails",itemDetails);
		    
			RequestDispatcher dis =request.getRequestDispatcher("Report.jsp");
			dis.forward(request, response);
		
	}

}
