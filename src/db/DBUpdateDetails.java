package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBUpdateDetails {

	public String update(String email,String username,String password,String bloodgroup,String phno,String dob,String gender) {
		
		try {
			
			//Class.forName("com.mysql.jdbc.Driver");
            Connection con= DBConnection.getConnect();
            String query="update registration_form set username = ?,password = ?,bloodgroup = ?,phno = ?,dob = ?,gender = ? where emailid = ?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, bloodgroup);
            pstmt.setString(4, phno);
            pstmt.setString(5, dob);
            pstmt.setString(6, gender);
            pstmt.setString(7, email);
            
            pstmt.executeUpdate();
            con.setAutoCommit(true);
            con.close();
		
            System.out.println("Updated successfully");
            
            return "Updated";
		}
		catch(Exception e) {
			return"Exception----------"+e;
		}
		
		
	}
	
}
