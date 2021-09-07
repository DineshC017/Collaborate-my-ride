package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

 

public class DBFetchDetails {
	public String getDetails(String email) {
		
		String details = "";
		boolean check = false;
		
		try
	       {
	        Connection con=DBConnection.getConnect();
	       
	        PreparedStatement pst=con.prepareStatement("select emailid,username,password,bloodgroup,phno,dob,gender from registration_form where emailid=?");
	        pst.setString(1, email);

	        ResultSet rst=pst.executeQuery();

	        
	        if(rst.next())
	        {
	            details=rst.getString("emailid")+"||"
	                    +rst.getString("username")+"||"
	                    +rst.getString("password")+"||"
	                    +rst.getString("bloodgroup")+"||"
	                    +rst.getString("phno")+"||"
	                    +rst.getString("dob")+"||"
	                    +rst.getString("gender");
	                    
	            check=true;
	        }
	        
	        con.close();
	       }
	       catch(Exception ex)
	       {
	          details  = ex.toString();
	       }

		if(!check)
	       {
	            details="----"+"||"+"----"+"||"+"----"+"||"+"----"+"||"+"----"+"||"+"----"+"||"+"----"+"||"+"----";
	       }
	      return details;
	}
	public String getRideDetails(int hid) {
		String details = "";
		boolean check = false;
		
		try
	       {
	        Connection con=DBConnection.getConnect();
	       
	        PreparedStatement pst=con.prepareStatement("select ride_name,from_place,to_place,start_date,end_date,max_riders from host_details where host_id=?");
	        pst.setInt(1, hid);

	        ResultSet rst=pst.executeQuery();

	        
	        if(rst.next())
	        {
	            details=rst.getString("ride_name")+"!"
	                    +rst.getString("from_place")+"!"
	                    +rst.getString("to_place")+"!"
	                    +rst.getString("start_date")+"!"
	                    +rst.getString("end_date")+"!"
	                    +rst.getInt("max_riders");
	                    
	            check=true;
	        }
	        
	        con.close();
	       }
	       catch(Exception ex)
	       {
	          details  = ex.toString();
	       }

		if(!check)
	       {
	            details="----"+"!"+"----"+"!"+"----"+"!"+"----"+"!"+"----"+"!"+"----";
	       }
	      return details;
	}
}
