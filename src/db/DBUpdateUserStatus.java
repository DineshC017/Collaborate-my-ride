package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUpdateUserStatus {
public String update(int eid,String status) {
		
		try {
			Connection con = DBConnection.getConnect();
			String query = "update event_details set status = ? where user_event_id = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, status);
			stmt.setInt(2, eid);
			
			stmt.executeUpdate();
			
			con.setAutoCommit(true);
            con.close();
		
            System.out.println("Updated successfully");
            
            return "Updated";
			
		}
		catch(Exception e) {
			return "exception***"+e;
		}
	}
	public String getEmail(int eid) {
		String email = null;
		try {
			Connection con = DBConnection.getConnect();
			String query = "select email_id from event_details  where user_event_id = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			
			stmt.setInt(1, eid);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				email = rs.getString("email_id");
			}
			
			
		
            System.out.println("Fetched successfully");
            con.setAutoCommit(true);
            con.close();
            return email;
            
		}
		catch(Exception e) {
			return "exception***"+e;
		}

	}
}
