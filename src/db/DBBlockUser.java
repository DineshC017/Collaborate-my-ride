package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBBlockUser {
	public String blockAsUser(String email) {
		try {
			
			//Class.forName("com.mysql.jdbc.Driver");
            Connection con= DBConnection.getConnect();
            String query="update registration_form set statusofuser = 'blocked' where emailid = ?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);
            
            pstmt.executeUpdate();
            con.setAutoCommit(true);
            con.close();
		
            System.out.println("Blocked");
            
            return "Blocked";
		}
		catch(Exception e) {
			return"Exception----------"+e;
		}
	}
	
}
