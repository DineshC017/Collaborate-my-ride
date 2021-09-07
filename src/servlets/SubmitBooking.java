package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBGetBookingDetails;
import db.DBInsertValues;

/**
 * Servlet implementation class SubmitBooking
 */
@WebServlet("/SubmitBooking")
public class SubmitBooking extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String ride_name = request.getParameter("rdname");
		String email = request.getParameter("email");
		
		
		
		DBGetBookingDetails bd = new DBGetBookingDetails();
		int uid = bd.getUserId(email);
		String review = bd.getUserReview(email);
		int hid = bd.getHostId(ride_name);
		
		DBInsertValues iv = new DBInsertValues();
		String res = iv.book(uid, hid, review, ride_name, email);
		if(res.equals("Inserted")) {
			request.setAttribute("alertMsg", "Registered Successfully");
			 request.getRequestDispatcher("/bookingsuccess.jsp").forward(request, response);
		}
		
	}

}
