package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.classes.item;
import com.connection.ItemDButil;


@WebServlet("/DownloadReportServlet")
public class DownloadReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Status=request.getParameter("Status");
		
		List<item> itemDetails=ItemDButil.getiItems2(Status);
		request.setAttribute("itemDetails",itemDetails);
	    
		RequestDispatcher dis =request.getRequestDispatcher("DownloadReport.jsp");
		dis.forward(request, response);
	
	}

}
