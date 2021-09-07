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

@WebServlet("/ViewMoreHostDetails")
public class ViewMoreHostDetails extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    String email = request.getParameter("email");
	    
	    
	       try
	       {
	    	Class.forName("com.mysql.jdbc.Driver");
	        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");


	        PreparedStatement pst=con.prepareStatement("select host_id,ride_name,max_riders,review from host_details where status = 'approved' and email_id = ?");
	        pst.setString(1, email);
	   
	        ResultSet rst=pst.executeQuery();

	        out.println("<a href='admin_accepthosts.jsp'><button type='button' style='background-color:'black''>Back</a></button>");
	        out.println("<br><br>");
	        out.println("<h3 style='text-align:center'>NUMBER OF RIDES HOSTED</h3>");
	        out.println("<table cellspacing='0' width='1300px' border='1' align='center'>");

	        out.println("<tr bgcolor='#66ccff'>");

	        out.println("<th>HOST_ID</th>");
	        out.println("<th>RIDE_NAME</th>");
	        out.println("<th>MAX_RIDERS</th>");
	        out.println("<th>REVIEW</th>");
	        

	        out.println("</tr>");
	        out.println("<tr>");	       

	        out.println("</tr>");
	        
	        while(rst.next())
	        {
	            out.println("<tr>");
	            out.println("<td >"+rst.getInt("host_id")+"</td>");
	            out.println("<td>"+rst.getString("ride_name")+"</td>");
	            out.println("<td >"+rst.getString("max_riders")+"</td>");
	            out.println("<td>"+rst.getString("review")+"</td>");
	            
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

	      
	      try
	       {
	    	Class.forName("com.mysql.jdbc.Driver");
	        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");


	        PreparedStatement pst=con.prepareStatement("select user_event_id,host_id,ride_name,review from event_details where email_id = ?");
	        pst.setString(1, email);
	   
	        ResultSet rst=pst.executeQuery();

	     
	        
	        out.println("<h3 style='text-align:center'>NUMBER OF RIDES TAKEN PART</h3>");
	        out.println("<table cellspacing='0' width='1300px' border='1' align='center'>");

	        out.println("<tr  bgcolor='#66ccff'>");
	        
	        out.println("<th>USER_EVENT_ID</th>");
	        out.println("<th>HOST_ID</th>");
	        out.println("<th>RIDE_NAME</th>");
	        out.println("<th>REVIEW</th>");
	        

	        out.println("</tr>");
	        out.println("<tr>");

	       
	        out.println("</tr>");
	        
	        while(rst.next())
	        {
	            out.println("<tr>");
	            out.println("<td >"+rst.getInt("user_event_id")+"</td>");
	            out.println("<td >"+rst.getInt("host_id")+"</td>");
	            out.println("<td>"+rst.getString("ride_name")+"</td>");
	            out.println("<td>"+rst.getString("review")+"</td>");
	            
	            out.println("</tr>");
	        }
	        
	        out.println("</table>");
	        out.println("<br>");
	        out.println("<br>");
	        con.close();
	       }
	       catch(Exception ex)
	       {
	          out.println("  "+ex);
	       }

	      out.close();
		
	}

}