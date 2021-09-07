package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBFetchReview;
import db.DBUpdateStatus;

@WebServlet("/UpdateStatus")
public class UpdateStatus extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("host_id");
		int hid = Integer.parseInt(id);
		
		
		String color = request.getParameter("color");
		String status = null;
		if(color.equals("red")) {
			status = "declined";
		}
		else {
			status = "approved";
		}
		
		DBUpdateStatus us = new DBUpdateStatus();
		String res = us.update(hid,status);
		
		if(res.equals("Updated")) {
			request.setAttribute("alertMsg", "Updated Successfully");
			request.getRequestDispatcher("/hostacceptedsuccess.jsp").forward(request, response);
		}
		else {
			out.println("<h1>"+res+"</h1>");

		}
		
		
				
	}

}
