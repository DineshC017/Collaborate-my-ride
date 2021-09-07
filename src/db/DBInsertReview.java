package db;
import java.io.InputStream;
import java.sql.Connection;

import java.sql.PreparedStatement;

public class DBInsertReview{
	 public String reinsert(String id,String name,String name2,String review,String rating) {
		  //if(!username.equals("")&&!email.equals("")&&!password.equals("")&&!bloodgroup.equals("")&&!phno.equals("")&&gender.equals("")) {
		   try {
		    
		     
			   			
		   				Class.forName("com.mysql.jdbc.Driver");
		                 Connection con= DBConnection.getConnect();
		                 String query="insert into review(user_event_id,firstname,lastname,review,rating) values(?,?,?,?,?)";
		                 PreparedStatement pstmt=con.prepareStatement(query);
		                 pstmt.setString(1, id);
		                 pstmt.setString(2, name);
		                 pstmt.setString(3, name2);
		                 pstmt.setString(4, review);
		                 pstmt.setString(5, rating);
		                 
		    
		                 pstmt.executeUpdate();
		                 con.setAutoCommit(true);
		                 
		                 System.out.println("id is "+id+"name "+name);
		                 System.out.println("Inserted successfully");
		                 
		                 return "Inserted";
		   }
		   
		  
		   catch(Exception e) {
		    
		    return"Exception----------"+e;
		   }
		 
		 }
}
