package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBUpdateStatus {
public String update(int hid,String status) {
		
		try {
			Connection con = DBConnection.getConnect();
			String query = "update host_details set status = ? where host_id = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, status);
			stmt.setInt(2, hid);
			
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
	
}
