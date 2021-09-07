package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBCheck {
	
	public String checkAdminLogin(String email,String pswd) {
		try {
			
			
			
			  Class.forName("com.mysql.jdbc.Driver");
	          Connection con= DBConnection.getConnect();

	          String query="select email,password from admin where email like ?";
              PreparedStatement pstmt=con.prepareStatement(query);
              pstmt.setString(1, email);
              ResultSet rs = pstmt.executeQuery();
              String mail = " ",pass  = " ";
              while(rs.next()) {
            	
              	mail = rs.getString("email");
              	pass = rs.getString("password");
              }
              
              if(email.equals(mail) && pswd.equals(pass)) {
            	  return "Logged In";
              }
              else {
            	  return "Email or password doesn't match";
              }
	         
		}
		

		catch(Exception e) {
			
			return"Exception----------"+e;
		}
	}

	public String checkUserLogin(String email,String pswd) {
		try {
			
			
			
			  Class.forName("com.mysql.jdbc.Driver");
	          Connection con= DBConnection.getConnect();

	          String query="select emailid,password from registration_form where emailid like ?";
              PreparedStatement pstmt=con.prepareStatement(query);
              pstmt.setString(1, email);
              ResultSet rs = pstmt.executeQuery();
              String mail = " ",pass  = " ";
              while(rs.next()) {
            	
              	mail = rs.getString("emailid");
              	pass = rs.getString("password");
              }
              
              if(email.equals(mail) && pswd.equals(pass)) {
            	  return "Logged In";
              }
              else {
            	  return "Email or password doesn't match";
              }
	         
		}
		

		catch(Exception e) {
			
			return"Exception----------"+e;
		}
	}
	
	

}
