<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>block-user</title>
<link rel = "stylesheet" href = "css/blockuser.css">
</head>
<body >

<%@include  file="admin_navbar.html" %>
<div class="col-2">
 <div class="form-container">
<form method = "POST" action="BlockUser" >

      <br><br><br><br><br>
	  <label ><b>Choose an id</b></label>

	  <select name = "emailid">
	    <%  
	    int userid;  	   
		  Class.forName("com.mysql.jdbc.Driver");
	      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
	      String sql = "select emailid from registration_form";   
	      Statement st=con.createStatement();   
	      ResultSet rs=st.executeQuery(sql);  
	      rs.next();
	      
	    while(rs.next())
	        {
	    	 String loption = rs.getString("emailid");
	        %>
         	<option ><%=  loption %></option>
     	<%} %>
	  </select> 
	  <br><br>
	  <br><br>
	  <button type="submit">Block </button> 
	</form>
</div>
</div>
</body>
</html>