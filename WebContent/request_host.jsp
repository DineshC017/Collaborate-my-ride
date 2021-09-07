<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request-Host</title>
<link rel="stylesheet" href="css/request_host.css">
</head>

<body>


 <%@include  file="user_dashboard.html" %>
<form action="SubmitBooking" method="POST" name="form">
	
	<div class="clearfix">
		<div class="col-25">
			<label for="rdname">Ride Name</label>
		</div>
		
		<div class="col-75">
			<input id="rdname" type="text" name="rdname" placeholder="Ride Name" value = "<%=request.getAttribute("rdname")%>" required>
		</div>
	</div>
	
	<div class="clearfix">
		<div class="col-25">
			<label for="fromplace">From place</label>
		</div>
		
		<div class="col-75">
			<input id="fromplace" type="text" name="fromplace" placeholder="From Place" value = "<%=request.getAttribute("fromplace")%>"required>
		</div>
	</div>
	
	<div class="clearfix">
		<div class="col-25">
			<label for="toplace">To place</label>
		</div>
		
		<div class="col-75">
			<input id="toplace" type="text" name="toplace" placeholder="To Place" value = "<%=request.getAttribute("toplace")%>"required>
		</div>
	</div>
	
	<div class="clearfix">
		<div class="col-25">
			<label for="startdate">Start date</label>
		</div>
		
		
			<div class="col-75">
			<input id="startdate" type="text" name="startdate" placeholder="from date" value = "<%=request.getAttribute("startdate")%>"required>
		   </div>
	</div>
	
	
	<div class="clearfix">
		<div class="col-25">
			<label for="enddate">End date</label>
		</div>
		
		
			<div class="col-75">
			<input id="enddate" type="text" name="enddate" placeholder="end date" value = "<%=request.getAttribute("enddate")%>"required>
		   </div>
	</div>
	
	
	<div class="clearfix">
		<div class="col-25">
			<label for="maxriders">Max riders</label>
		</div>
		
		
			<div class="col-75">
			<input id="maxriders" type="text" name="maxriders" placeholder="Max Riders" value = "<%=request.getAttribute("maxriders")%>"required>
		   </div>
	</div>
	
	<div class="clearfix">
		<div class="col-25">
			<label for="email">Email</label>
		</div>
			
			<div class="col-75">
			<input id="email" type="email" name="email" placeholder="Email" value = "<%=request.getAttribute("email")%>"required>
		   </div>
	</div>
	
	<br><br>
	<div class="clearfix">
		<div>
			<input type="submit">
		</div>
	</div>
	
</form>
</body>
</html>
    