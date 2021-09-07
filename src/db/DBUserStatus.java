package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUserStatus {
	public String check(String email) {
		try {
			
			
	        Connection con= DBConnection.getConnect();

	        String query="select statusofuser from registration_form where emailid =  ?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            String status = "";
            while(rs.next()) {
          	
            	status = rs.getString("statusofuser");
            	
            }
            
            
            if(status.equals("blocked")) {
          	  return "blocked";
            }
            else {
          	  return "accepted";
            }
			
		}
		catch(Exception e) {
			return ""+e;
		}
	}
}
