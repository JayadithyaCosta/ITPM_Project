package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.ItemDButil;


@WebServlet("/DeleteItemServlet")
public class DeleteItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String ItemNo=request.getParameter("INO");
		boolean isTrue;
		
		isTrue=ItemDButil.DeleteItem(ItemNo);
		
		if(isTrue==true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Item successful Deleted');"+ItemNo);
			out.println("location='Searchitem.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Can't delete this item from inventory in this moment');");
			out.println("location='Searchitem.jsp'");
			out.println("</script>");
			}
		
		
		
		
	}

	

}
