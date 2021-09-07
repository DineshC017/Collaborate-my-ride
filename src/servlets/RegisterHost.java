package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBFetchReview;
import db.DBInsertHost;

@WebServlet("/RegisterHost")
public class RegisterHost extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		String start = request.getParameter("ctt");
		String destiny = request.getParameter("ctt1");
		String max_riders = request.getParameter("max_riders");
		String ride_name = request.getParameter("ride_name");
		
		String mail = null;
		HttpSession session = request.getSession(true);
		if(session.getAttribute("email_session")!=null) {
			Object ob = session.getAttribute("email_session");
			mail = (String)ob;
		}
		
		
		DBFetchReview fr = new DBFetchReview();
		int id = fr.getUserId(mail);
		
		String rview = fr.getUserReview(mail);
		
		int mr = Integer.parseInt(max_riders);
		
		DBInsertHost ih = new DBInsertHost();
		String res = ih.insertHost(ride_name, start, destiny, start_date, end_date, mr, id, mail, rview);
		
//		out.println("<h1>"+id+"</h1>");
//		
		if(res.equals("Inserted")) {
			
				request.setAttribute("alertMsg", "Your Request is sent successfully");
				request.getRequestDispatcher("/requesthostsuccess.jsp").forward(request, response);
			
		}
		out.println("<h1>"+res+"</h1>");
		
	}

}
