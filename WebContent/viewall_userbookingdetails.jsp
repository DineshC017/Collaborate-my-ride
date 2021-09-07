<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>UserDetails</title>
<style type="text/css">
	
	thead{
	 background-color:#66ccff;
	}
	
	h4 {
	 margin-left:550px;
	}
	
	.table-image td, .table-image th {
	  vertical-align: middle;
	}
	
	table{
	   margin-left:150px;
	}
	
	td{
	  background-color:white;
	}
	h2{
		margin-left:300px;
	}
</style>
</head>
<body>
<%@include  file="user_dashboard.html" %>
<br>
 <div class="container">
  <div class="row">
    <div class="col-12">
    <br><br><br>
    <h4><b>Accepted Requests</b></h4>  
     <div class="dropdown">
      
     <br>
     
     <% 
      String hid = request.getParameter("host_id");
      int host = Integer.parseInt(hid);
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      String sql = "select user_event_id,review,email_id from event_details where status = 'approved' and host_id = ? ";   
      PreparedStatement pst=con.prepareStatement(sql);
      pst.setInt(1, host);

      ResultSet rs=pst.executeQuery();
      
      
    // rs.next();
     //System.out.println(hid);
     if(rs.next()==false){
    	 
     
      
  %>
    
    <h2>NO ACCEPTED USERS</h2> 
     <%} else{
     %>
      <table  border='3'class="table table-bordered">
        <thead>
          <tr>
            
	         <th>USER_ID</th>
	       <th>REVIEW</th>
	       <th>EMAIL_ID</th>
	       <tr>
	       <td> <%= rs.getInt(1) %></td>
     	 <td> <%= rs.getString(2) %> </td>
     	 <td> <%= rs.getString(3) %> </td>
     	 
     	</tr>
	       	    <tr>
	        <%  while(rs.next())
	        {
	        %>
         <td> <%= rs.getInt(1) %></td>
     	 <td> <%= rs.getString(2) %> </td>
     	 <td> <%= rs.getString(3) %> </td>
     	 
     	</tr>
     	<%} %>
     	<%} %>
     	</tbody>
     	</table>
     	</div>
     	</div>
     	</div>
     	</div>
     
</body>
</html>