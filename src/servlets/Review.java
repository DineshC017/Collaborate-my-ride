package servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBInsertReview;


@WebServlet("/Review")
public class Review extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		
		  //String id = (String) request.getAttribute("ID");
		  String id = request.getParameter("id");
		  String name = request.getParameter("fname");
		  String name2 = request.getParameter("sname");
		  String review = request.getParameter("review");
		
		  String rating = request.getParameter("rate");
		  out.println("Rate in Reviewpass "+rating);
		  
		  
	     	 DBInsertReview iv = new DBInsertReview();
		 
		  String result = iv.reinsert(id,name,name2,review,rating);
		  if(result.equals("Inserted"))
		  {
			  request.setAttribute("alertMsg", "Your Review has been given successfully");
			  request.getRequestDispatcher("/review_success.jsp").forward(request, response);
		  }
		 // out.println("ID in review "+id);
		 // out.println("<h1>"+result+"</h1>");
		 }

}