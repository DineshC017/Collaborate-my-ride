<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylelsheet" href="css/register_style.css">
   <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
  
  <script src="javascript/register.js"></script>
	<link rel = "stylesheet" href = "css/register.css">
</head>
<body>

        <div class="row">
          <div class="col-2">            
          <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_mlp3zxve.json"  background="transparent"  speed="1"  autoplay></lottie-player>
          </div>
  
   <div class="form-container">  
    <div class="frm">
	   <form method = "POST" action="InsertValues">
	   <h5><b>Register with us</b></h5>
	    <br>
		<div class="input-icons">
        <i class="fa fa-user icon"></i>
        <input class="input-field" type="text" required placeholder="Username" name="uname">
        </div><br>

        <div class="input-icons">
        <i class="fa fa-envelope icon"></i>
        <input class="input-field" type="email" required placeholder="Email" name="email" onkeyup = "verifymail(this.value);">
        <p id = "p1" style = "color:red"></p>
        </div><br>

        <div class="input-icons">
        <i class="fa fa-key icon"></i>
        <input class="input-field" type="password" required placeholder="Password" name="pwd" id = "pwd" onkeyup = "validatepswd();">
        <p id = "p2" style = "color:red"></p>
        </div><br>

        <div class="input-icons">
        <i class="fa fa-key icon"></i>
        <input class="input-field" type="password" placeholder="Confirm Password" name="confirmpwd" id = "confirmpwd" onkeyup = "verifypswd();">
        <p id = "p3" style = "color:red"></p>
        </div><br>

        <div class="input-icons">
       <i class="fa fa-medkit icon" aria-hidden="true"></i>
        <input class="input-field" type="text" required placeholder="Blood Group(B+ve) " name="bloodgroup">
        </div><br>
        
         <div class="input-icons">
        <i class="fa fa-phone icon" aria-hidden="true"></i>
        <input class="input-field" type="tel" required placeholder="Contact Number" name="contactnum" >
        <p id = "p4" style = "color:red"></p>
        </div><br>
        
         <div class="input-icons">
        <input class="input-field" type="date" min = "1980-01-01" max = "2004-12-31"required placeholder="" name="dob">
        </div><br>
        
        <div class="gender"><b>Gender</b>
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <input class="" type="radio" name="r1" id = "male" value = "male"> &nbsp; &nbsp;Male
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <input class="" type="radio" name="r1" id = "female" value = "female">&nbsp; &nbsp; FeMale        
        </div><br>

        <div>
        <input type="submit" value="Register" name="button" class="button">
        </div>
		</form>		
	   </div>
	  </div>
	</div>

</body>
</html>