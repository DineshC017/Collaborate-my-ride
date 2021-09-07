package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBCheckSeats {
	public static int booked(int host_id) {
		int booked = 0;
		try {
			
			
			
			  Class.forName("com.mysql.jdbc.Driver");
	          Connection con= DBConnection.getConnect();

	          String query="select host_id from event_details where host_id = ?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setInt(1, host_id);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()) {
          	
            	booked++;
            }
            
            return booked;
	         
		}
		

		catch(Exception e) {
			
			System.out.println(e);
		}
		return booked;
		
	}
	public static int totalseats(int host_id) {
		int total = 0;;
		
		try {
			
			
			
			  Class.forName("com.mysql.jdbc.Driver");
	          Connection con= DBConnection.getConnect();

	          String query="select max_riders from host_details where host_id = ?";
              PreparedStatement pstmt=con.prepareStatement(query);
              pstmt.setInt(1, host_id);
              ResultSet rs = pstmt.executeQuery();
              
              while(rs.next()) {
            	  total = rs.getInt("max_riders");
            	  
              }
          
             
	         
				}
		
			
			catch(Exception e) {
			
				System.out.println(e);
			}
		 return total;
		
	}
	public String check(int host_id) {
		int total = totalseats(host_id);
		int booked = booked(host_id);
		int balance  = total-booked;
		if(balance>0) {
			return "available";
		}
		else {
			return "filled";
		}
	}
}
