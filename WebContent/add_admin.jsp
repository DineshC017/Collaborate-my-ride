<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add-admin</title>
<link rel = "stylesheet" href = "css/add_admin.css">

</head>
<body>

	  <%@include  file="admin_navbar.html" %>
	  <div class="col-2">
	   <div class="form-container">
	  
	   <div class="frm">
		<form method = "POST" action="AddAdmin">
		 <br><br> <br><br> <br>
		  <label><b>Email id</b></label> &nbsp;&nbsp;&nbsp;
		  <input type="email" name="email"><br><br>
		    
		   <label><b>Password</b></label>  &nbsp;&nbsp;
		  <input type="password" name="pwd"><br><br><br>
		   
		  <input type="submit" class="button">
		</form>
	   </div>
	  </div>
	</div>
</body>
</html>
