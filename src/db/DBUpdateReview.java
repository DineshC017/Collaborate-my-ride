package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
public class DBUpdateReview {
	public String update(int id,String review) {
		
		try {
			Connection con = DBConnection.getConnect();
			String query = "update registration_form set review = ? where userid = ?";
			PreparedStatement stmt = con.prepareStatement(query);
			stmt.setString(1, review);
			stmt.setInt(2, id);
			
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
