package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import db.DBInsertValues;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;

@WebServlet("/InsertValues")
public class InsertValues extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		//String cpassword = request.getParameter("confirmpwd");
		String bloodgroup = request.getParameter("bloodgroup");
		String phno = request.getParameter("contactnum");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("r1");
		
		//out.println("<h1>"+gender+"</h1>");
		DBInsertValues iv = new DBInsertValues();
		
		String result = iv.insert(username, email, password, bloodgroup, phno, dob, gender);
		
		if(result.equals("Inserted")) {
			 request.setAttribute("alertMsg", "Registered Successfully");
			 request.getRequestDispatcher("/registersucess.jsp").forward(request, response);
		}
		else {
			out.println("<h1>"+result+"</h1>");
		}
		
	}
}
