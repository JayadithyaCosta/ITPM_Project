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


@WebServlet("/UpdateItemservlet")
public class UpdateItemservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String ItemNo=request.getParameter("INO");
		String ItemName = request.getParameter("IName");
		String ItemCode = request.getParameter("Icode");
		String category = request.getParameter("category");
		String description = request.getParameter("Description");
		String status = request.getParameter("Status");
		String Date = request.getParameter("Date");
		
		
        boolean istrue;
		
		istrue=ItemDButil.Updateitem(ItemNo,ItemName,ItemCode,category,description,status,Date);
		
		
		if(istrue==true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('item successfully updated');");
			out.println("location='Searchitem.jsp'");
			out.println("</script>");
		}
		else {
				
			out.println("<script type='text/javascript'>");
			out.println("alert('update failed ');");
			out.println("location='Searchitem.jsp'");
			out.println("</script>");
		}
	}
	

}
