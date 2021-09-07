package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBUpdateReview;

@WebServlet("/UpdateReview")
public class UpdateReview extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("userid");
		String review = request.getParameter("review");
		
//		out.println("<h1>"+id+"</h1>");
//		out.println("<h1>"+review+"</h1>");
		
		int uid = Integer.parseInt(id);
		DBUpdateReview ur = new DBUpdateReview();
		String result = ur.update(uid,review);
		
		if(result.equals("Updated")) {
			request.setAttribute("alertMsg", "Updated Successfully");
			request.getRequestDispatcher("/successreview.jsp").forward(request, response);
		}
		else {
			out.println("<h1>"+result+"</h1>");
		}
		
	}

}
