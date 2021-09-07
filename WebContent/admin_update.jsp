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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin_update</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" >

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel = "stylesheet" href = "css/admin_update.css">
</head>
<body>

  <%@include  file="admin_navbar.html" %>
<div class="col-2">
 <div class="form-container">
	<form method = "GET" action="UpdateReview">
	  
	  &nbsp;
	   <label><b>Choose an id</b></label>
	   &nbsp;&nbsp;&nbsp;
	  <select name = "userid">
	    <%  
	    int userid;  	   
		  Class.forName("com.mysql.jdbc.Driver");
	      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
	      String sql = "select userid from registration_form";   
	      Statement st=con.createStatement();   
	      ResultSet rs=st.executeQuery(sql);  
	      //rs.next();
	      
	    while(rs.next())
	        {
	    	 int loption = rs.getInt("userid");
	        %>
         	<option ><%=  loption %></option>
     	<%} %>
	  </select> 

	  <label><b>Choose a review</b></label> 	
	    	  
	  <select name = "review">
	    <option>Good</option>
	    <option>Bad</option>
	  </select>
	  <br><br><br>
	 <button type="submit" class="button">Update</button>
	 
	</form>
  </div>
</div>

</body>
</html>