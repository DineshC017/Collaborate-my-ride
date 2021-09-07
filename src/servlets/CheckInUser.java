package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBCheck;
import db.DBUserStatus;

@WebServlet("/CheckInUser")
public class CheckInUser extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session=request.getSession(true);
		
		String email = request.getParameter("useremail");
		String password = request.getParameter("userpwd");
		
		DBUserStatus us = new DBUserStatus();
		String state = us.check(email);
		
		//out.println(state);
		
		if(state.equals("blocked")) {
			request.setAttribute("alertMsg", "You are a blocked user");
			 request.getRequestDispatcher("/invalidalert.jsp").forward(request, response);
		}
		else {
//			out.println("<h1>"+email+"</h1>");
			
			DBCheck dc = new DBCheck();
			
			String result = dc.checkUserLogin(email, password);
			
			if(result.equals("Logged In")) {
				
				session.setAttribute("email_session", email);
				request.getRequestDispatcher("/mydashboard.jsp").forward(request, response);
//				out.println("<h1>"+"User logged In"+"</h1>");
//				RequestDispatcher rd = request.getRequestDispatcher("/collab_ride//WebContent//registersucess");
//				rd.forward(request, response);
				//response.sendRedirect("http://localhost:8081/collab_ride/registersucess.jsp");
			}
			else {
				request.setAttribute("alertMsg", "Check your mailid or password");
				request.getRequestDispatcher("/invalidalert.jsp").forward(request, response);

			}
		}
		
		
		
		
	}

}
