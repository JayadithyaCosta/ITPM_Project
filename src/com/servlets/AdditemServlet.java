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


@WebServlet("/AdditemServlet")
public class AdditemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
	
		String itemname = request.getParameter("item_name");
		String itemcode=request.getParameter("item_code");
		String category=request.getParameter("category");
		String discription=request.getParameter("discription");
		String Status = "Available";
		
		
		 boolean isTrue;
			
			isTrue = ItemDButil.insertitem(itemname, itemcode, category, discription, Status);
			
			if(isTrue == true) {
				
				
				out.println("<script type='text/javascript'>");
				out.println("alert('Item successfully added to the Inventory');");
				out.println("location='Additem.jsp'");
				out.println("</script>");
				
				
				
			} else {

				out.println("<script type='text/javascript'>");
				out.println("alert('Cant add this item is already Added');");
				out.println("location='Additem.jsp'");
				out.println("</script>");
				
			}
		
		
	}

}
