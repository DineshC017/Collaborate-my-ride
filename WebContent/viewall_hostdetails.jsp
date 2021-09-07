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

<title>allHostDetails</title>
<link rel = "stylesheet" href = "css/viewall_hostdetails.css">
</head>
<body>
<%@include  file="admin_navbar.html" %>
<br>
 <div class="container">
  <div class="row">
    <div class="col-12">
    <h4><b>View Host Details</b></h4>  

     <div class="dropdown">
      <label><b>Filter</b></label> 	    	  
	  <select name = "fill" onchange = "changeFilter()">
	  	<option value = "select filter">select</option>
	   
	    <option value="approved">approved</option>
	    <option value="declined">declined</option>
	    <option value="completed">completed</option>
	  </select>
	  </div>
     <br>
     
      <% 
	  String filter =  request.getParameter("filter");   
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      String sql = "select * from host_details where status =?";   
      PreparedStatement pst=con.prepareStatement(sql);
      pst.setString(1, filter);

      ResultSet rs=pst.executeQuery();
      
     // rs.next();
      
  %>
     
     
      <table  border='3'class="table table-bordered">
        <thead>
          <tr>
            <th>HOST_ID</th>
	        <th>RIDE_NAME</th>
	       <th>FROM_PLACE</th>
	       <th>TO_PLACE</th>
	       <th>START_DATE</th>
	        <th>END_DATE</th>
	       <th>MAX_RIDERS</th>
	        <th>USER_ID</th>
	        <th>EMAIL_ID</th>
	        <th>REVIEW</th>
	        <th>STATUS</th>
	        <th>VIEW&nbsp;&nbsp;</th>
          </tr>
          </thead>
          <tbody>
          <tr>
  
	        <tr>
	        <%  while(rs.next())
	        {
	        %>
         <td> <%= rs.getInt(1) %></td>
     	 <td> <%= rs.getString(2) %> </td>
     	 <td> <%= rs.getString(3) %> </td>
     	 <td> <%= rs.getString(4) %> </td>
     	 <td> <%= rs.getString(5) %> </td>
     	 <td> <%= rs.getString(6) %> </td>
     	 <td> <%= rs.getString(7) %> </td>
          <td> <%= rs.getInt(8) %> </td>
          <td> <%= rs.getString(9) %></td>
          <td> <%= rs.getString(10) %> </td>
          <td> <%= rs.getString(11) %> </td>
          <td><a href = "ViewMoreOption?email=<%=rs.getString(9) %> "><button type="button" class="btn btn-warning" onclick = ""><i class="fa fa-eye"  aria-hidden="true"></i></button></a></td>
          
     	</tr>
     	<%} %>
     	</tbody>
     	</table>
     	</div>
     	</div>
     	</div>
     	
<script>
function changeFilter(){
	
	
	var va = document.getElementsByName("fill")[0].value;
	
	window.location.replace("http://localhost:8081/collab_ride/viewall_hostdetails.jsp?filter="+va);

	
}

</script>
</body>
</html>