<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%! ResultSet rs; %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>list of rides</title>
    <link rel="icon" href="images/favicon.png">
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    
   
</head>

<body >
<header id="header">
       <%@include  file="user_dashboard.html" %>
    <!-- Start Page content holder -->
    <div class="page-content p-5" id="content">
      
    
   
   <div id="image" >
    
    
  <% 
  		
  	try{
  		String mail=(String)session.getAttribute("email_session");  	   
    	  Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
        String query="select ride_name,start_date,end_date,from_place,to_place,max_riders,host_id from host_details where email_id = ? and status = 'approved'";
        PreparedStatement pstmt=con.prepareStatement(query);
        pstmt.setString(1, mail);
        
       
        
        rs=pstmt.executeQuery(); 
  	
  	}
  	catch(Exception e){
  		System.out.println(e);
  	}
    if(rs.next()==false){
    	
      
  %>
  <h1> YOU ARE NOT HOSTING ANY RIDES</h1>
    <%}else{
    	%>
    	<div class="container my-3">
        <div class="row"> 
    	<div class="col-md-4 my-2">
                <div class="card" style="width: 18rem;">
                    
                    <div class="card-body">
                    	  
                    	  <p class="card-text text-capitalize"><i class="fas fa-motorcycle fa-2x " aria-hidden="true"></i>&nbsp;&nbsp; <%= rs.getString(1) %>
                    	  
                       
                       	<p class="card-text text-capitalize"><i class="fas fa-route fa-2x "></i>&nbsp;&nbsp; <%= rs.getString(4) %><b> --></b><%= rs.getString(5) %></p>

                        <p class="card-text text-capitalize"><i class="far fa-calendar-check fa-2x"></i> &nbsp;&nbsp; <%= rs.getString(2) %> <b>TO</b> <%= rs.getString(3) %></p>
                        
                
                       <centre><p class="card-text"><i class="fas fa-users fa-2x"></i>&nbsp;  <font size="+2"><b><%= rs.getInt(6) %></b></font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="viewbookingdetails.jsp?host_id=<%=rs.getInt(7) %>" class="btn"> View <i class="fas fa-arrow-alt-circle-right fa-sm"></i></a></p></center>
                        
                    </div>
                </div>
            </div>
    	
    
  	  
 

  
 	<%  while(rs.next())
	        {
	        %>
	      
	
     	<div class="col-md-4 my-2">
                <div class="card" style="width: 18rem;">
                    
                    <div class="card-body">
                    	  
                    	  <p class="card-text text-capitalize"><i class="fas fa-motorcycle fa-2x " aria-hidden="true"></i>&nbsp;&nbsp; <%= rs.getString(1) %>
                    	  
                       
                       	<p class="card-text text-capitalize"><i class="fas fa-route fa-2x "></i>&nbsp;&nbsp; <%= rs.getString(4) %><b> --></b><%= rs.getString(5) %></p>

                        <p class="card-text text-capitalize"><i class="far fa-calendar-check fa-2x"></i> &nbsp;&nbsp; <%= rs.getString(2) %> <b>TO</b> <%= rs.getString(3) %></p>
                        
                
                       <centre><p class="card-text"><i class="fas fa-users fa-2x"></i>&nbsp;  <font size="+2"><b><%= rs.getInt(6) %></b></font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="viewbookingdetails.jsp?host_id=<%=rs.getInt(7) %>" class="btn"> View <i class="fas fa-arrow-alt-circle-right fa-sm"></i></a></p></center>
                        
                    </div>
                </div>
            </div>
     	<%} %>
     	<%} %>
     	</div>
     	</div>
     	
     	<br><br><br>
  
  
</body>
</html>