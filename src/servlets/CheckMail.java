package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import db.DBConnection;


@WebServlet("/CheckMail")
public class CheckMail extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("msg");
		if(!email.equals("")) {
			try {
				
				email = email+"%";
				
				 Class.forName("com.mysql.jdbc.Driver");
	                Connection con= DBConnection.getConnect();
	                String query="select emailid from registration_form where emailid like ?";
	                PreparedStatement pstmt=con.prepareStatement(query);
	                pstmt.setString(1, email);
	                ResultSet rs = pstmt.executeQuery();
	                String val = "";
	                while(rs.next()) {
	                	val = val+" "+rs.getString("emailid");
	                }
	                if(val=="") {
	                	out.println("<p><p>");
	                }
	                else {
	                	out.println("<p>Email id already exists");
	                }
				
			}
			catch(Exception e) {
				out.println(e);
			}
		
	}
	}

}
