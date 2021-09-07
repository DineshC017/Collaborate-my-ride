<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Host-Registration</title>
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   
    <script  type="text/javascript"  src="javascript/cities.js"></script>
    
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	 <link rel="icon" href="images/favicon.png">
	<link type="text/css" rel="stylesheet" href="css/host_reg.css" />
	
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
	       $(function(){
	    var dtToday = new Date();
	    
	    var month = dtToday.getMonth() + 1;
	    var day = dtToday.getDate();
	    var year = dtToday.getFullYear();
	    if(month < 10)
	        month = '0' + month.toString();
	    if(day < 10)
	        day = '0' + day.toString();
	    
	    var minDate= year + '-' + month + '-' + day;
	    
	    $('#txtDate').attr('min', minDate);
	    $('#end_Date').attr('min', minDate);
	});
	    </script>
</head>

<body>
<%@include  file="user_dashboard.html" %>


    <!-- Start Page content holder -->
    <div class="page-content p-5" id="content">
    
 
   <div id="image" >
              <form action="RegisterHost" method="GET" name="main_form" >
			<h4>HostYourRide:-)</h4>
			  	<div><label for="from_location">From_Location</label></div>
			<!-- <input name="From_Location" id="from_location" type="text" placeholder="Enter Place of Start" maxlength="50" pattern="[A-Za-z]{1,50}" title="Name can not contain numbers"> -->
			 
			 
			<select onchange="print_city('state', this.selectedIndex);" id="sts" name ="stt" class="form-control" required></select><br>
				<select id ="state" class="form-control" name ="ctt" required></select>
				<script language="javascript">print_state("sts");</script>		
			 		
			 		
			 		<div><label for="to_destination">To_Destination</label></div>
			<!-- <input name="To_Destination" id="to_destination" type="text" placeholder="Enter Destination" pattern="[A-Za-z]{1,50}" maxlength="50" title="Lastname can not contain numbers"> -->
			   
			<select onchange="print_city1('state1', this.selectedIndex);" id="tsts" name ="stt1" class="form-control" required></select><br>
				<select id ="state1" class="form-control" name ="ctt1" required></select>
				<script language="javascript">print_state1("tsts");</script>		
				
				
			  		<div><label for="start_date">Start_Date</label></div>
			<input type="date" name="start_date" id="txtDate" title="Select Date">
			  
			  		<div><label for="end_date">End_Date</label></div>
			<input type="date" name="end_date" id="end_Date" min = "start_date" title="Select Date">
					
					<div><label for="ride_name">Name_Your_Ride</label></div>				
			<input name="ride_name" id="ride_name" type="ride_name" placeholder="Enter Ride Name" maxlength="50">
					
					<div><label for="max_riders">Maximum_Riders</label></div>
			<input name="max_riders" id="max_riders" type="number" placeholder="Enter Maximum Riders" maxlength="20" pattern=".{6,20}"  title="6 to 20 characters">
					
						<span id="info"></span>
					
				<!--  	<div><label for="ava">Picture_To_Display</label></div>-->
			<!-- <input type="file" id="ava" type="file" name="myImage" accept="image/x-png,image/gif,image/jpeg"  title="Choose avatar">  -->
			<input class="button" type="submit" value="Host" name="submit">			
		  </form>	
		
         
      </div>
      
    </div>
    <script>
    let startDate = document.querySelector('#txtDate');

    document.querySelector('#end_Date').addEventListener('click',() => {
    	let startDateValue = startDate.value;
    	 document.querySelector('#end_Date').setAttribute('min', startDateValue);
    	
    })
	    	
	    </script>
   
</body>
</html>