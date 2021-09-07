<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.image{
  margin-left:220px;
}
</style>
</head>
<body>
  <%@include  file="user_dashboard.html" %>
  <br><br><br>
  <div class="image">
  <% 
	    	   
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      //String sql = "select username,startdate,enddate,start,destination,maxriders from hosttab";  
      String sql = "select * from host_details where end_date < now();";
      Statement st=con.createStatement();   
      ResultSet rs=st.executeQuery(sql);  
      //rs.next();
      
  %>
  <div class="container my-3">
        <div class="row"> 
 	<%  while(rs.next())
	        {
	        %>
     	<div class="col-md-4 my-2">
                <div class="card bg-white" style="width: 18rem;">
                    
                    <div class="card-body">
                         <%--  <h5 class="card-title text-uppercase"><a href=""></a><%= rs.getString(1) %></h5> --%>
                         
                          <p class="card-text text-capitalize text-center"><i class="fab fa-asymmetrik fa-5x text-primary"></i></i></p>
                       	
                       	
                       	<p class="card-text text-capitalize"><i class="fas fa-route fa-2x "></i>&nbsp;&nbsp; <%= rs.getString(3) %><b> --></b><%= rs.getString(4) %></p>

                        <p class="card-text text-capitalize"><i class="far fa-calendar-check fa-2x"></i> &nbsp;&nbsp; <%= rs.getString(5) %> <b>TO</b> <%= rs.getString(6) %></p>
                        
                
                       <centre><p class="card-text  "><i class="fas fa-users fa-2x"></i>&nbsp;  <font size="+2"><b><%= rs.getString(7) %></b></font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="review_list.jsp?d=<%= rs.getString(1) %>" class="btn text-primary">  Review <i class="fas fa-address-card fa-sm"></i></a></p></center>
                        
                    </div>
                </div>
            </div>
     	<%} %>
     	</div>
     	</div>
     	</div>
</body>
</html>