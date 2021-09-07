<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>   
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <title>COLLABORATE MY RIDE</title>
    
    <!-- Styles -->
      <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600&display=swap&subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css">
	<link href="css/styles.css" rel="stylesheet">
	
	
</head>
<body data-spy="scroll" data-target=".fixed-top">
    
   
	<div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
  
    
    <nav class="navbar navbar-expand-md navbar-primary navbar-custom fixed-top">
        
        <a class="navbar-brand logo-image" href="index.html">Plan My Ride</a>
        
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-awesome fas fa-bars"></span>
            <span class="navbar-toggler-awesome fas fa-times"></span>
        </button>
       

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#header">HOME <span class="sr-only">(current)</span></a>
                </li>


                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#services">EVENTS</a>
                </li>

                
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#contact">CONTACT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="login.jsp">LOGIN</a>
                <li>
                   
                </li>
            </ul>
            
        </div>
    </nav> <!-- end of navbar -->
    <!-- end of navbar -->


    <!-- Header -->
    <header id="header" class="header">
        <div class="header-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-container">
                            <h1>EXPLORE YOUR WEEKENDS</h1>
                            <p class="p-heading p-large">"Alone we can do little;together we can do so much"</p>
                            <a class="btn-solid-lg page-scroll" href="#intro">DISCOVER</a>
                        </div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of header-content -->
    </header> <!-- end of header -->
    <!-- end of header -->


    <!-- Intro -->
    <div id="intro" class="basic-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="text-container">
                        
                        <h2>We Collaborate Your Ride</h2>
                        <p>People can plan and schedule their rides.the can host their own rides or collaborate with the rider available.</p>
                        <p class="testimonial-text">"Many ideas grow better when transplanted into another mind than the one where they sprang up"</p>
                        <div class="testimonial-author">Oliver Wendal Holmes</div>
                    </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-7">
                    <div class="image-container">
                        <img class="img-fluid" src="images/intro-office.jpeg" alt="alternative">
                    </div> <!-- end of image-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of basic-1 -->
    <!-- end of intro -->


    <!-- Description -->
    <div class="cards-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                    <!-- Card -->
                    <div class="card">
                        <span class="fa-stack">
                            <!-- <span class="hexagon"></span> -->
                            <i class="fas fa-binoculars fa-stack-1x"></i>
                        </span>
                        <div class="card-body">
                            <h4 class="card-title">NO CLUB'S</h4>
                            <p>There is no involvement of any clubs and need no to be a member of any clubs.</p>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card">
                        <span class="fa-stack">
                            <!-- <span class="hexagon"></span> -->
                            <i class="fas fa-list-alt fa-stack-1x"></i>
                        </span>
                        <div class="card-body">
                            <h4 class="card-title">CREATE YOUR'S </h4>
                            <p>You can customize your rides or join the available rides by applying it with your friends or with unknown peoples.</p>
                        </div>
                    </div>
                    <!-- end of card -->

                    <!-- Card -->
                    <div class="card">
                        <span class="fa-stack">
                            <!-- <span class="hexagon"></span> -->
                            <i class="fas fa-chart-pie fa-stack-1x"></i>
                        </span>
                        <div class="card-body">
                            <h4 class="card-title">SAFETY</h4>
                            <p>All the riders are reviewed by the host to ensure the users have behaved well with the fellow riders.Based on the review User may/maynot allowed for future rides. </p>
                        </div>
                    </div>
                    <!-- end of card -->

                </div> 
            </div> 
        </div> <!-- end of container -->
    </div> <!-- end of cards-1 -->
    <!-- end of description -->


    <div id = "services">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12">
                    
                    <h2>Events  Ongoing</h2>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
            <div class="row">
                <div class="col-lg-12">
                    
                     <header id="header">
       
    
   <div id="image" >
    
  <% 
	    	   
	  Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
      String sql = "select ride_name,start_date,end_date,from_place,to_place,max_riders,host_id from host_details where status = 'approved'";   
      Statement st=con.createStatement();   
      ResultSet rs=st.executeQuery(sql);  
      //rs.next();
      if(rs.next()==false){
      
  %>
  <h2>NO EVENTS YET:)</h2>
  <%}else{ %>
  <div class="container my-3">
        <div class="row">
        <div class="col-md-4 my-2">
                <div class="card" style="width: 18rem;">
                    
                    <div class="card-body">
                       <p class="card-text text-capitalize text-center"><i class="fab fa-asymmetrik fa-5x text-primary"></i></i></p>
                       
                        <p class="card-text text-capitalize"><i class="fas fa-motorcycle fa-2x " aria-hidden="true"></i>&nbsp;&nbsp; <%= rs.getString(1) %>
                        
                       
                    	  
                       	<p class="card-text text-capitalize"><i class="fas fa-route fa-2x "></i>&nbsp;&nbsp; <%= rs.getString(4) %><b> --></b><%= rs.getString(5) %></p>

                        <p class="card-text text-capitalize"><i class="far fa-calendar-check fa-2x"></i> &nbsp;&nbsp; <%= rs.getString(2) %> <b>TO</b> <%= rs.getString(3) %></p>
                        
                
                       <centre><p class="card-text"><i class="fas fa-users fa-2x"></i>&nbsp;  <font size="+2"><b><%= rs.getString(6) %></b></font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="login.jsp" class="btn text-primary">  Explore <i class="fas fa-arrow-alt-circle-right fa-sm"></i></a></p></center>
                        
                    </div>
                </div>
            </div> 
 	<%  while(rs.next())
	        {
	        %>
	      
	
     	<div class="col-md-4 my-2">
                <div class="card" style="width: 18rem;">
                    
                    <div class="card-body">
                       <p class="card-text text-capitalize text-center"><i class="fab fa-asymmetrik fa-5x text-primary"></i></p>
                        
                        <p class="card-text text-capitalize"><i class="fas fa-motorcycle fa-2x " aria-hidden="true"></i>&nbsp;&nbsp; <%= rs.getString(1) %>
                        
                       	<p class="card-text text-capitalize"><i class="fas fa-route fa-2x "></i>&nbsp;&nbsp; <%= rs.getString(4) %><b> --></b><%= rs.getString(5) %></p>

                        <p class="card-text text-capitalize"><i class="far fa-calendar-check fa-2x"></i> &nbsp;&nbsp; <%= rs.getString(2) %> <b>TO</b> <%= rs.getString(3) %></p>
                        
                
                       <centre><p class="card-text"><i class="fas fa-users fa-2x"></i>&nbsp;  <font size="+2"><b><%= rs.getString(6) %></b></font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="login.jsp" class="btn text-primary">  Explore <i class="fas fa-arrow-alt-circle-right fa-sm"></i></a></p></center>
                        
                    </div>
                </div>
            </div>
            <%} %>
     	<%} %>
     	</div>
     	</div>
     	
     	<br><br><br>
     	</div>
     	</div>
     	
     	</header>

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    
    <!-- Contact -->
    <div id="contact" class="form-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="text-container">
                        
                        <h2>Contact Us </h2>
                        <p></p>
                        <ul class="list-unstyled li-space-lg">
                            
                            <li><i class="fa fa-phone" aria-hidden="true"></i><a href="tel:9688279307">+91 9688 279 307</a></li>
                            <!-- <li><i class="fas fa-phone"></i><a href="tel:003024630820"></a></li>-->
                            <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="18euee082@skcet.ac.in">collab_ride@gmail.com</a></li> 
                        </ul>
                                            </div> <!-- end of text-container -->
                </div> <!-- end of col -->
                <div class="col-lg-6">
                    
                  

                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of form-2 -->
    <!-- end of contact -->



    
    	
    <!-- Scripts -->
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.js" integrity="sha512-E/yP5UiPXb6VelX+dFLuUD+1IZw/Kz7tMncFTYbtoNSCdRZPFoGN3jZ2p27VUxHEkhbPiLuZhZpVEXxk9wAHCQ==" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.0.0/magnific-popup.min.css" integrity="sha512-nIm/JGUwrzblLex/meoxJSPdAKQOe2bLhnrZ81g5Jbh519z8GFJIWu87WAhBH+RAyGbM4+U3S2h+kL5JoV6/wA==" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Morphext/2.4.4/morphext.min.js" integrity="sha512-WPYLBBtLFRUKCbj+PI7iHTL9ORQvxc7uhsb7bIQMKoRPYbiybfoIKIxJ7ynVwrGpspeR2K7WFODUST/xDLg1wA==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.6.0/umd/popper.min.js" integrity="sha512-BmM0/BQlqh02wuK5Gz9yrbe7VyIVwOzD1o40yi1IsTjriX/NGF37NyXHfmFzIlMmoSIBXgqDiG1VNU6kB5dBbA==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js" integrity="sha512-0QbL0ph8Tc8g5bLhfVzSqxe9GERORsKhIn1IrpxDAgUsbBGz/V7iSav2zzW325XGd1OMLdL4UiqRJj702IeqnQ==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>

    
    
    
    
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>
</html>