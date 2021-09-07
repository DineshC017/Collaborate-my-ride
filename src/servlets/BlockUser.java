package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import db.DBBlockUser;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BlockUser
 */
@WebServlet("/BlockUser")
public class BlockUser extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("emailid");
		
		DBBlockUser us = new DBBlockUser();
		String res = null;
			
		
		res = us.blockAsUser(email);
		
		if(res.equals("Blocked")) {
			request.setAttribute("alertMsg", "The user is Blocked");
			request.getRequestDispatcher("/blockuseralert.jsp").forward(request, response);
		}
	}

}
