package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBFetchDetails;

/**
 * Servlet implementation class AutoFillDetails
 */
@WebServlet("/AutoFillDetails")
public class AutoFillDetails extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		String mail = null;
		HttpSession session = request.getSession(true);
		if(session.getAttribute("email_session")!=null) {
			Object ob = session.getAttribute("email_session");
			mail = (String)ob;
		}
		
		DBFetchDetails fd = new DBFetchDetails();
		String details_result = fd.getDetails(mail);
		
		out.println(details_result);
		//return details_result;
	}

}
