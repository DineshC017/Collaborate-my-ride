package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBAddAdmin {
	public String insertAdmin(String email,String password) {
		
		try {
			
			 Class.forName("com.mysql.jdbc.Driver");
             Connection con= DBConnection.getConnect();
             String query="insert into admin(email,password) values(?,?)";
             PreparedStatement pstmt=con.prepareStatement(query);
             pstmt.setString(1, email);
             pstmt.setString(2, password);
             
             
             pstmt.executeUpdate();
             con.setAutoCommit(true);
             con.close();
			
             System.out.println("Inserted successfully");
             
             return "Inserted";
			
		}
		catch(Exception e) {
			return ""+e;
		}
		
	}
}
