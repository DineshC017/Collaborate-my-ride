package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBCheckSeats;
import db.DBFetchDetails;

/**
 * Servlet implementation class AutoFillRideDetails
 */
@WebServlet("/AutoFillRideDetails")
public class AutoFillRideDetails extends HttpServlet {
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		String mail = null;
		HttpSession session = request.getSession(true);
		if(session.getAttribute("email_session")!=null) {
			Object ob = session.getAttribute("email_session");
			mail = (String)ob;
		}
			
		
		String host = request.getParameter("host_id");
		
		int hid = Integer.parseInt(host);
		 DBCheckSeats cs = new DBCheckSeats();
		 String seats=  cs.check(hid);
		 //out.println(seats);
		 if(seats.equals("filled")) {
			 request.setAttribute("alertMsg", "Seats Filled");
			request.getRequestDispatcher("/seatsfilled.jsp").forward(request, response);
		 }
		 else {
			 DBFetchDetails fd = new DBFetchDetails();
				String res = fd.getRideDetails(hid);
				
				String output = res+"!"+mail;
				
				String arr[] = output.split("!");
				
						
//				out.println(output);
//				
//				out.println(arr[0]);
//				out.println(arr[1]);
//				out.println(arr[2]);
//				out.println(arr[3]);
//				out.println(arr[4]);
//				out.println(arr[5]);
//				out.println(arr[6]);
				request.setAttribute("rdname",arr[0]);
				request.setAttribute("fromplace", arr[1]);
				request.setAttribute("toplace", arr[2]);
				request.setAttribute("startdate", arr[3]);
				request.setAttribute("enddate", arr[4]);
				request.setAttribute("maxriders", arr[5]);
				request.setAttribute("email", arr[6]);
				
				request.getRequestDispatcher("request_host.jsp").forward(request, response);
				
				
		 }
		
		
	}

}
