package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBInsertValues {
	
	public String insert(String username,String email,String password,String bloodgroup,String phno,String dob,String gender) {
		//if(!username.equals("")&&!email.equals("")&&!password.equals("")&&!bloodgroup.equals("")&&!phno.equals("")&&gender.equals("")) {
			try {
				
					
				
				  Class.forName("com.mysql.jdbc.Driver");
	                Connection con= DBConnection.getConnect();
	                String query="insert into registration_form(username,emailid,password,bloodgroup,phno,dob,gender) values(?,?,?,?,?,?,?)";
	                PreparedStatement pstmt=con.prepareStatement(query);
	                pstmt.setString(1, username);
	                pstmt.setString(2, email);
	                pstmt.setString(3, password);
	                pstmt.setString(4, bloodgroup);
	                pstmt.setString(5, phno);
	                pstmt.setString(6, dob);
	                pstmt.setString(7, gender);
	                
	                pstmt.executeUpdate();
	                con.setAutoCommit(true);
	                con.close();
				
	                System.out.println("Inserted successfully");
	                
	                return "Inserted";
			}
			
		
			catch(Exception e) {
				
				return"Exception----------"+e;
			}
	
	}
	public String book(int user_id,int host_id,String review,String ride_name,String email_id) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
            Connection con= DBConnection.getConnect();
            String query="insert into event_details(user_id,host_id,review,ride_name,email_id) values(?,?,?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setInt(1, user_id);
            pstmt.setInt(2, host_id);
            pstmt.setString(3, review);
            pstmt.setString(4, ride_name);
            pstmt.setString(5, email_id);
            
            
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
	
	

