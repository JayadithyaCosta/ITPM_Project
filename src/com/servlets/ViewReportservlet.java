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

import com.classes.report;
import com.connection.ItemDButil;


@WebServlet("/ViewReportservlet")
public class ViewReportservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ItemName=request.getParameter("ItemName");
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		
		
	boolean istrue;
		
		istrue=ItemDButil.Reportvalid();
		if(istrue==true) {
			
			try{
				int itemDetails2=ItemDButil.getiIotalItem(ItemName);
			    request.setAttribute("itemDetails2",itemDetails2);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			try{
				int itemDetails3=ItemDButil.getiIotalItemAvilable(ItemName);
			    request.setAttribute("itemDetails3",itemDetails3);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			try{
				int itemDetails4=ItemDButil.getiIotalItemUsing(ItemName);
			    request.setAttribute("itemDetails4",itemDetails4);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			try{
				int itemDetails5=ItemDButil.getiIotalItemRecondition(ItemName);
			    request.setAttribute("itemDetails5",itemDetails5);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			try{
				int itemDetails6=ItemDButil.getiIotalItemDiscurd(ItemName);
			    request.setAttribute("itemDetails6",itemDetails6);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			try{
				String itemDetails7=ItemDButil.getitemname(ItemName);
			    request.setAttribute("itemDetails7",itemDetails7);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
		    
			RequestDispatcher dis =request.getRequestDispatcher("InventoryReport.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			out.println("<script type='text/javascript'>");
			out.println("alert('inventroy report cant genarate');");
			out.println("location='InventoryReport.jsp'");
			out.println("</script>");
			
		}
		
		
		
		
		
		
		
	}

}
