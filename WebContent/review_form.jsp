<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Review form</title>
<link rel="stylesheet" href="css/review_form.css">
<link rel="stylesheet" href="css/review_star.css">
</head>
<body>
<%@include  file="user_dashboard.html" %>
  <br><br><br>
  
     <div class="container">	
		  
		  <div class="errorcontainer">
		    <i class="fas fa-exclamation-circle exc"></i>
		    <div class="error">Your review must be legible! Try again!</div>
		  </div>
		  	
		  	<div class="thank-you-container">
		      <div class="thank-you">Thank you for your review!</div>
		     <i class="fab fa-angellist"></i>
		    </div>	  
		  
		    <form action="Review" method="post" class="input-container" >
		    
		    <div class="names">
		      <input type="text" name="fname" class="firstname" placeholder="First name">
		      <input type="text" name="sname" class="lastname" placeholder="Last name">
		    </div>
		    <% String id = request.getParameter("d"); %>
		    <input type="hidden" name="id" value= <%= id %>>
		    <div class="input">
		      <div class="inputbox">
		        <textarea type="text" name="review" class="reviewinp" placeholder="Write a review"></textarea>
		      </div>
		      
		       <div class="card-body">
                            <form method="post">
                                <div class="form-row">
                                    <div class="name">&nbsp Rating</div>
                                    <div class="rate">
                                        <input type="radio" id="star5" name="rate" value="5" />
                                        <label for="star5" title="text"></label>
                                        <input type="radio" id="star4" name="rate" value="4" />
                                        <label for="star4" title="text"></label>
                                        <input type="radio" id="star3" name="rate" value="3" />
                                        <label for="star3" title="text"></label>
                                        <input type="radio" id="star2" name="rate" value="2" />
                                        <label for="star2" title="text"></label>
                                        <input type="radio" id="star1" name="rate" value="1" />
                                        <label for="star1" title="text"></label>
                                      </div>
                                    </div>
                                    </form>
                                </div>
        
                                
		      <div class="submitbtn"  >
		        <button class="submit">Submit Review</button>
		        
		      </div>
		    </div>
		  
		<script src="https://kit.fontawesome.com/850830ed04.js" crossorigin="anonymous"></script>

 


     	<br><br><br>
     	
     	
        <!--    <script  type="text/javascript"  src="js/reviewscript.js"></script>   --> 
  
</body>
</html>