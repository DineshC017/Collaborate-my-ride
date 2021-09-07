package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;

import java.util.Date; 
import java.text.ParseException; 
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Servlet implementation class DateValidation
 */
@WebServlet("/DateValidation")
public class DateValidation extends HttpServlet {
	Connection con = DBConnection.getConnect();
	public String  check(int hid,String date) {
		String res  = null;
		try {
			// Create SimpleDateFormat object 
	        SimpleDateFormat 
	            sdfo 
	            = new SimpleDateFormat("yyyy-MM-dd"); 
	  
	        // Get the two dates to be compared 
	       Date d1 = sdfo.parse(date); 
	      
	        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");  
	        LocalDateTime now = LocalDateTime.now();  
	        System.out.println(dtf.format(now));  
	  
	        Date d2 = sdfo.parse(dtf.format(now)); 
	        
	        // Print the dates 
	        //System.out.println("Date1 : " + sdfo.format(d1)); 
	       // System.out.println("Date2 : " + sdfo.format(d2)); 
	  
	        // Compare the dates using compareTo() 
	        if (d1.compareTo(d2) < 0) { 
	  
	             res =  update("completed",hid);
	            return res;
//	            System.out.println("Date1 is after Date2"); 
	        }
	        else {
	        	return "Updated";
	        }
	  
//	        else if (d1.compareTo(d2) < 0) { 
//	  
//	            // When Date d1 < Date d2 
//	            System.out.println("Date1 is before Date2"); 
//	        } 
//	  
//	        else if (d1.compareTo(d2) == 0) { 
//	  
//	            // When Date d1 = Date d2 
//	            System.out.println("Date1 is equal to Date2"); 
//	        } 
		}
		catch(Exception e) {
			return ""+e;
		}
		
		
	}
	public String update(String status,int hid) {
		try
	       {
			
			String query = "update host_details set status = ? where host_id = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, status);
			stmt.setInt(2, hid);
			
			stmt.executeUpdate();
			
			con.setAutoCommit(true);
            
		
            System.out.println("Updated successfully");
            //con.close();
            return"Updated";
            
	       }
	       catch(Exception ex)
	       {
	          return ""+ex;
	       }

	}
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String res = null;
				try
			       {
					
			       
			        PreparedStatement pst=con.prepareStatement("select host_id,end_date from host_details where status = 'approved'");
			       

			        ResultSet rst=pst.executeQuery();

			        
			        while(rst.next())
			        	
			        {
			        	int hid = rst.getInt("host_id");
			            String date = rst.getString("end_date");
			             res = check(hid,date);
			        }
			        
					if(res.equals("Updated")) {
						request.getRequestDispatcher("/events_page.jsp").forward(request, response);
					}
			        
			       }
			       catch(Exception ex)
			       {
			          System.out.println(ex);
			       }

				
			
	}

}
