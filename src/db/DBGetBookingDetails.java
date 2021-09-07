package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBGetBookingDetails {
	public int getUserId(String mail) {
		try {
			 int id = 0;
			Connection con = DBConnection.getConnect();
			String query = "select userid from registration_form where emailid=?";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1, mail);
			
			ResultSet rst=psmt.executeQuery();
			
			if(rst.next()) {
				 id = rst.getInt("userid");
			}
			
			
			return id;
			
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	public String getUserReview(String email) {
		try {
			String review = null;
			
			Connection con = DBConnection.getConnect();
			String query = "select review from registration_form where emailid=?";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1, email);
			
			ResultSet rst=psmt.executeQuery();
			
			if(rst.next()) {
				 review = rst.getString("review");
			}
			
			
			return review;
		}
		
		catch(Exception e) {
			return ""+e;
		}
		
	}
	public int getHostId(String ridename) {
		try {
			 int id = 0;
			Connection con = DBConnection.getConnect();
			String query = "select host_id from host_details where ride_name=?";
			PreparedStatement psmt = con.prepareStatement(query);
			psmt.setString(1, ridename);
			
			ResultSet rst=psmt.executeQuery();
			
			if(rst.next()) {
				 id = rst.getInt("host_id");
			}
			
			
			return id;
			
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	
}
