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

<title>Review details</title>
<link rel = "stylesheet" href = "">

<style>
thead{
	 background-color:#66ccff;
	}
	
	h4 {
	 margin-left:550px;
	}
	table{
	 margin-left:350px;
	}

</style>
</head>
<body>
<%@include  file="admin_navbar.html" %>
<br>
 <div class="container">
  <div class="row">
    <div class="col-12"><br>
    <h4><b>View Host Details</b></h4>  

     <br>
     
      <% 
	
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      String sql = "select host_id,ride_name from host_details where status ='completed'";   
      PreparedStatement pst=con.prepareStatement(sql);
    

      ResultSet rs=pst.executeQuery();
      
     // rs.next();
      
  %>
     
     
      <table  border='3'class="table table-bordered" style="width: 50%">
        <colgroup>
        <col span="1" style="width: 20%;">
        <col span="1" style="width: 10%;">
         </colgroup>
        <thead>
          <tr>
            <th>RIDE NAME</th>
	        <th>VIEW</th>
          </tr>
          </thead>
          <tbody>
          <tr>
  
	        <tr>
	        <%  while(rs.next())
	        {
	        %>
         <td> <%=rs.getString(2) %></td>
          <td><a href = "ViewReviews?hid=<%=rs.getInt(1) %> "><button type="button" class="btn btn-warning" onclick = ""><i class="fa fa-eye"  aria-hidden="true"></i></button></a></td>
          
     	</tr>
     	<% } %>
     	</tbody>
     	</table>
     	</div>
     	</div>
     	</div>

</body>
</html>