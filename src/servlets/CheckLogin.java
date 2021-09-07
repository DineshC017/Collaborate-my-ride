package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBCheck;

@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		out.println("<h1>"+email+"</h1>");
		
		DBCheck dc = new DBCheck();
		
		String result = dc.checkAdminLogin(email, password);
		
		if(result.equals("Logged In")) {
			out.println("<h1>"+"Admin logged In"+"</h1>");
			request.getRequestDispatcher("/admindashboard.jsp").forward(request, response);
		}
		else {
			request.setAttribute("alertMsg", "Check your mailid or password");
			request.getRequestDispatcher("/invalidalert.jsp").forward(request, response);
		}
		
	}

}
