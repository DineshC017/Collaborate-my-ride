package db;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
	private static Connection connect;
	public static Connection getConnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    connect = DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
		    System.out.println("Success");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return connect;
	}
}