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


@WebServlet("/Searchservlet")
public class Searchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String itemName=request.getParameter("itemName");
		String Status=request.getParameter("Status");
		
		boolean istrue;
		
		istrue=ItemDButil.searchvalid(itemName,Status);
		if(istrue==true) {
			List<item> itemDetails=ItemDButil.getiItems(itemName,Status);
			request.setAttribute("itemDetails",itemDetails);
		    
			RequestDispatcher dis =request.getRequestDispatcher("Searchitem.jsp");
			dis.forward(request, response);
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('Item name not found');");
			out.println("location='Searchitem.jsp'");
			out.println("</script>");
			
		}
	}

}
