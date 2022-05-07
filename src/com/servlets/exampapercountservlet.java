package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.exampapercount;
import com.connection.ExamsDBUtil;



@WebServlet("/exampapercountservlet")
public class exampapercountservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		try {
			List<exampapercount> CountValue = ExamsDBUtil.countpapers();
		
			request.setAttribute("countvalue", CountValue);
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Exampapercount.jsp");
		
		dis.forward(request, response);
		
	
	}

}
