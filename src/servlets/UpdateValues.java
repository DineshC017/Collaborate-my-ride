package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBUpdateDetails;

/**
 * Servlet implementation class UpdateValues
 */
@WebServlet("/UpdateValues")
public class UpdateValues extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		String bloodgroup = request.getParameter("bloodgroup");
		String phno = request.getParameter("contactnum");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		
		DBUpdateDetails ud = new DBUpdateDetails();
		String result = ud.update(email,username, password, bloodgroup, phno, dob, gender);
		
		if(result.equals("Updated")) {
			request.setAttribute("alertMsg", "Updated Successfully");
			request.getRequestDispatcher("/updatesuccess.jsp").forward(request, response);
		}
		out.println("<h1>"+result+"</h1>");
	}

}
