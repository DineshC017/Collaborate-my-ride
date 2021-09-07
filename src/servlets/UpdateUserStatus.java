package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBUpdateStatus;
import db.DBUpdateUserStatus;

/**
 * Servlet implementation class UpdateUserStatus
 */
@WebServlet("/UpdateUserStatus")
public class UpdateUserStatus extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("user_event_id");
		int eid = Integer.parseInt(id);
		
		
		String color = request.getParameter("color");
		String status = null;
		if(color.equals("red")) {
			status = "declined";
		}
		else {
			status = "approved";
		}
		
		DBUpdateUserStatus us = new DBUpdateUserStatus();
		String res = us.update(eid,status);
		
		String email = us.getEmail(eid);
		
		
		out.println("<h1>"+email+"</h1>");
		if((res.equals("Updated"))&&(status.equals("approved"))) {
			
			request.setAttribute("mail", email);
			 request.setAttribute("id", eid);
			 request.getRequestDispatcher("/mail.jsp").forward(request, response);
		}
		else {
			request.setAttribute("alertMsg", "User is rejected");
			request.getRequestDispatcher("/rejecteduseralert.jsp").forward(request, response);
		}
		
	}

	
}
