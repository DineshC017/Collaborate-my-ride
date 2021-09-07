<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>USER DASHBOARD</title>
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/edit_profile.css">
    <script src  = "javascript/update.js"></script>
    
</head>

<body onload="getDetails();">
	 <%@include  file="user_dashboard.html" %>
    <!-- Start Page content holder -->
    <div class="page-content p-5" id="content">
      
    
    
   <div id="image" >
   <div class="form">
   <form name = "form" method = "POST" action="UpdateValues">
	   <h3><b>Update Details</b></h3>
	
        <div class="input-icons">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-envelope icon"></i>
        <input class="input-field" type="email" required placeholder="Email" name="email" >
        <p id = "p1" style = "color:red"></p>
        </div><br>

		<div class="input-icons">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-user icon"></i>
        <input class="input-field" type="text" required placeholder="Username" name="uname">
        </div><br>
		
        <div class="input-icons">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-key icon"></i>
        <input class="input-field" type="password" required placeholder="Password" name="pwd" id = "pwd" >
        <p id = "p2" style = "color:red"></p>
        </div><br>

        <div class="input-icons">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <i class="fa fa-medkit icon" aria-hidden="true"></i>
        <input class="input-field" type="text" required placeholder="Blood Group(B+ve) " name="bloodgroup">
        </div><br>
        
         <div class="input-icons">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-phone icon" aria-hidden="true"></i>
        <input class="input-field" type="tel" required placeholder="Contact Number" name="contactnum" >
        <p id = "p4" style = "color:red"></p>
        </div><br>
        
         <div class="input-icons">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-calendar icon" aria-hidden="true"></i>
        <input class="input-field" type="tel" required placeholder="Date of Birth" name="dob" >
        <p id = "p4" style = "color:red"></p>
        </div><br>
        
        <div class="input-icons">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-venus-mars icon" aria-hidden="true"></i>
        <input class="input-field" type="tel" required placeholder="Gender" name="gender" >
        <p id = "p4" style = "color:red"></p>
        </div><br>       

        <div>
        <input type="submit" class="button" value="Update" name="button">
        </div>
		</form>	
        </div>                         
      </div>
    </div>
</body>
</html>