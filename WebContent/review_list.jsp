<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review List</title>
<link rel="stylesheet" href="css/review_list.css">
</head>
 <%
    String id = request.getParameter("d");
 	//out.println("Id in review3 "+id);
    %>

<body>

<%@include  file="user_dashboard.html" %>
  <br><br><br>
  <div class="image">
    
  <% 
	    	   
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      String sql = "select firstname,lastname,review,rating from review where user_event_id = '"+id+"'";  
      //String sql = "select * from hosttab where enddate < now();";
      Statement st=con.createStatement();   
      ResultSet rs=st.executeQuery(sql);  
      //rs.next();
      
  %>
 
        <div class="container col-7">
 	<%  while(rs.next())
	        {
 		String n =  rs.getString(4) ;
 		int nu = Integer.parseInt(n);
	        %>
     	
        <div class="card">
          <div class="card-body">
            <img src="./images/USER2.jpeg" class="float-left rounded-circle">
            <div class="message">
              <h5 class="card-title"><%= rs.getString(1) %><%= rs.getString(2) %></h5>
             
              <p class="card-text"><%= rs.getString(3) %></p>
               <p class="card-text"><% for(int i=0;i<nu;i++){ %>
                <i class="fas fa-star text-warning"></i>
                <%}%></p>
            </div>
            <div class="actions">
             <!--  <a href="#" class="card-link">Like</a>
              <a href="#" class="card-link">Reply</a>
              <a href="#" class="card-link">Share</a> -->
            </div>
          </div>
        </div>
     	<%} %>
     	<br>
     	
     	<p class="text-center"><a href="review_form.jsp?d=<%= id %>" class="btn btn-primary"> Submit Your Review</a></p>
     	</div>
     	</div>
     	
     	<br><br><br>
 
  </div>
</body>
</html>