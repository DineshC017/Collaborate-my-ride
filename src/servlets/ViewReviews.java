package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ViewReviews")
public class ViewReviews extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String host_id = request.getParameter("hid");
		//out.println(host_id);
		
		int hid = Integer.parseInt(host_id);
		
		try
	       {
	    	Class.forName("com.mysql.jdbc.Driver");
	        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");


	        PreparedStatement pst=con.prepareStatement("select firstname,lastname,review,rating from review where user_event_id = ? ");
	        pst.setInt(1, hid);
	   
	        ResultSet rst=pst.executeQuery();

	        out.println("<a href='admin_review.jsp'><button type='button' style='background-color:'black''>Back</a></button>");
	        out.println("<br><br>");
	        out.println("<h3 style='text-align:center'>REVIEWS OF RIDES </h3>");
	        out.println("<table cellspacing='0' width='1300px' border='1' align='center'>");

	        out.println("<tr bgcolor='#66ccff'>");

	        out.println("<th>FIRST_NAME</th>");
	        out.println("<th>LAST_NAME</th>");
	        out.println("<th>REVIEW</th>");
	        out.println("<th>RATING</th>");
	        

	        out.println("</tr>");
	        out.println("<tr>");	       

	        out.println("</tr>");
	        
	        while(rst.next())
	        {
	            out.println("<tr>");
	            out.println("<td >"+rst.getString("firstname")+"</td>");
	            out.println("<td>"+rst.getString("lastname")+"</td>");
	            out.println("<td >"+rst.getString("review")+"</td>");
	            out.println("<td>"+rst.getString("rating")+"</td>");
	            
	            out.println("</tr>");
	        }
	        
	        out.println("</table>");
	        out.println("<br><br><br><br><br>");
	        out.println("<br>");
	        con.close();
	       }
	       catch(Exception ex)
	       {
	          out.println("  "+ex);
	       }
		
	}

}
