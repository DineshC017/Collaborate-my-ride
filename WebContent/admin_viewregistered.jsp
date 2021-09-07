<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>admin_viewregistered</title>
<style>
.button{
background-color:#66ccff;
font-size:20px;
margin-left:650px;
cursor:pointer;
height:45px;
 border: 2;
width:130px;
}

table {
    border-collapse: collapse;
}

table td  {
    border: 1.5px solid #333;
}


</style>
</head>
<body>
   
   <%@include  file="admin_navbar.html" %>
  
  <% 
	    	   
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      String sql = "select userid,username,emailid,bloodgroup,phno,dob,gender,review from registration_form";   
      Statement st=con.createStatement();   
      ResultSet rs=st.executeQuery(sql);  
      //rs.next();
      
  %>
  <br><br>
  <h4 align = 'center'>REGISTERED USERS</h4>
  <br>
<table cellspacing='0' width='100%' border='1'>
<tr  bgcolor='#66ccff'>

	        <th>USER_ID</th>
	        <th>USER_NAME</th>
	       <th>EMAIL_ID</th>
	       <th>BLOOD_GROUP</th>
	       <th>PHONE_NUMBER</th>
	        <th>DOB</th>
	       <th>GENDER</th>
	        <th>REVIEW</th>
	        </tr>
	        <tr>
	        <%  while(rs.next())
	        {
	        %>
         <td> <%= rs.getString(1) %> </td>
     	 <td> <%= rs.getString(2) %> </td>
     	 <td> <%= rs.getString(3) %> </td>
     	 <td> <%= rs.getString(4) %> </td>
     	 <td> <%= rs.getString(5) %> </td>
     	 <td> <%= rs.getString(6) %> </td>
     	 <td> <%= rs.getString(7) %> </td>
          <td> <%= rs.getString(8) %> </td>
        
     	</tr>
     	<%} %>
     	</table>
     	<br><br><br>
     	<a href="admin_update.jsp"><button type="button"  class="button" ><i class="fa fa-paper-plane" aria-hidden="true">&nbsp;&nbsp;</i>Update</button></a>
</body>
</html>