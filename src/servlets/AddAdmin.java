package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBAddAdmin;

/**
 * Servlet implementation class AddAdmin
 */
@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		DBAddAdmin aa = new DBAddAdmin();
		
		String result = aa.insertAdmin(email, password);
		if(result.equals("Inserted")) {
			 request.setAttribute("alertMsg", "Registered Successfully");
			 request.getRequestDispatcher("/successadmin.jsp").forward(request, response);
		}
	}

}
