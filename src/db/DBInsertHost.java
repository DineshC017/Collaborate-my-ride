package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class DBInsertHost {
	public String insertHost(String ride_name,String from_place,String to_place,String start_date,String end_date,int max_riders,int user_id,String email_id,String review) {
		
		try {
			
			 Class.forName("com.mysql.jdbc.Driver");
             Connection con= DBConnection.getConnect();
             String query="insert into host_details(ride_name,from_place,to_place,start_date,end_date,max_riders,user_id,email_id,review) values(?,?,?,?,?,?,?,?,?)";
             PreparedStatement pstmt=con.prepareStatement(query);
             pstmt.setString(1, ride_name);
             pstmt.setString(2, from_place);
             pstmt.setString(3, to_place);
             pstmt.setString(4, start_date);
             pstmt.setString(5, end_date);
             pstmt.setInt(6, max_riders);
             pstmt.setInt(7, user_id);
             pstmt.setString(8, email_id);
             pstmt.setString(9, review);
             
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
