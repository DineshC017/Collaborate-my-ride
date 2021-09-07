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

<title>View booking Hosts</title>
<link rel = "stylesheet" href = "css/viewbookingdetails.css">
</head>
<body>
<%@include  file="user_dashboard.html" %>


<br>
 <div class="container">
  <div class="row">
    <div class="col-12">
    <br><br>
    <label><b>View Host Details</b></label> 
    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
     &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
      &nbsp;&nbsp; 
    <a href ="viewall_userbookingdetails.jsp?host_id=<%=request.getParameter("host_id") %>" ><button class="buttonupdate1">AcceptedRequests</button></a>
     <br><br>
     
      <% 
      
      String hid = request.getParameter("host_id");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      PreparedStatement pst=con.prepareStatement("select user_event_id,email_id,review from event_details where host_id = ? and status = 'pending'");
      pst.setString(1, hid);
 
      ResultSet rs=pst.executeQuery();
      
      
	 
      
  %>
  
     <table  border='3'class="table table-bordered">
        <thead>
          <tr>
            <th>EMAIL_ID</th>
	        <th>REVIEW</th>
	       
	        <th>ACCEPT/REJECT</th> 
          </tr>
          </thead>
          <tbody>
         
	        <tr>
	        <%  while(rs.next())
	        {
	        %>
         
     	 <td> <%= rs.getString(2) %> </td>
     	 <td> <%= rs.getString(3) %> </td>
     	
          <td><a href = "UpdateUserStatus?user_event_id=<%=rs.getInt(1) %>&color=green"><button type="button" class="btn btn-success"  onclick=""><i class="fa fa-check" aria-hidden="true"></i></button></a> &nbsp;&nbsp;
          <a href = "UpdateUserStatus?user_event_id=<%=rs.getInt(1) %>&color=red"><button type="button" class="btn btn-danger" onclick = ""><i class="fa fa-times"></i></button></a>&nbsp;&nbsp;
          <a href = "HostViewMoreOption?email=<%=rs.getString(2) %>>"><button type="button" class="btn btn-warning" onclick = ""><i class="fa fa-eye"  aria-hidden="true"></i></button></a>
          </td>
     	   
     	</tr>
     	<%} %>
     	
     	</tbody>
     	</table>
     	</div>
     	
     	
     	</div>
     	</div>
     	
     	<br>
   
</body>
</html>