<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    

<!DOCTYPE html>
<html>
<head>
<title>login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    
    <link rel = "stylesheet" href = "css/login.css">
    
</head>

<body>
	 <a href = "register.jsp"><button class="btn"  id = "regbtn">New User ? Register</button></a>
    <div class="account-page">
      <div class="container">
        <div class="row">
          <div class="col-2">            
           <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_Advb2R.json"  background="transparent"  speed="1"  autoplay></lottie-player>
           
          </div>
           
          <div class="col-2">
            <div class="form-container">
               <div class="form-btn">
                 <span onclick="login()">Admin</span>
                 <span onclick="register()">User</span>
                 <hr id="indicator"></hr>
                </div>

                <form id="loginform" method = "GET" action = "CheckLogin">
                  <input type="text" name="email" value="" placeholder="Username">
                  <input type="password" name="pwd" value="" placeholder="Password">
                  <button type="submit"class="btn" name="button">Login</button>
                  
                </form>

                 <form id="registerform" method = "POST" action = "CheckInUser">
                  <input type="email" name="useremail" value="" placeholder="Email">
                  <input type="password" name="userpwd" value="" placeholder="Password">
                  <button type="submit"class="btn" name="button">Login</button>
                  
                   </form>  
					
                   
                
                 

            </div>
           </div>

         </div>
        </div>
      </div>
 

         
         <script>
          var loginform=document.getElementById("loginform");
          var registerform=document.getElementById("registerform");
          var indicator=document.getElementById("indicator");

           function register(){
               registerform.style.transform= "translateX(0px)";
               loginform.style.transform = "translateX(0px)";
               indicator.style.transform = "translateX(100px)";
           }

           function login(){
               registerform.style.transform= "translateX(300px)";
               loginform.style.transform = "translateX(300px)";
               indicator.style.transform = "translateX(0px)";
           }
        </script>
 
</body>
</html>