<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyDashBoard</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<link rel = "stylesheet" href = "css/mydashboard.css">
</head>

<body>
<%@include  file="user_dashboard.html" %>
<%! int rcount; %>
<%! int hcount; %>
<%! int ccount; %>

<% 
	try{
		String mail=(String)session.getAttribute("email_session");  	   
	  	  Class.forName("com.mysql.jdbc.Driver");
	      Connection con= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
	      String query="select user_id from host_details where email_id = ?";
	      PreparedStatement pstmt=con.prepareStatement(query);
	      pstmt.setString(1, mail);
	      
	      ResultSet rs=pstmt.executeQuery(); 
	      hcount = 0;
	      while(rs.next())
	      {
	    	hcount++;  
	      }
	      
	}
	catch(Exception e){
		System.out.println("You haven't hosted any rides");
	}
	  
      
  %>
  
  <% 
  	try{
  		 String email=(String)session.getAttribute("email_session");  	   
  	  	  Class.forName("com.mysql.jdbc.Driver");
  	      Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
  	      String que="select user_id from event_details where email_id = ?";
  	      PreparedStatement stmt=conn.prepareStatement(que);
  	      stmt.setString(1, email);
  	      
  	      ResultSet rst=stmt.executeQuery(); 
  	      rcount = 0;
  	      while(rst.next())
  	      {
  	    	rcount++;  
  	      }
  	      
  	      
  	}
  catch(Exception e){
	  System.out.println("You haven't taken part in any rides");
  }
  	 
  %>
  
  <% 
  	try{
  		    
  	  	  Class.forName("com.mysql.jdbc.Driver");
  	      Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/collab_ride","root","");
  	      String que="select host_id from host_details where status = 'approved'";
  	      PreparedStatement stmt=conn.prepareStatement(que);
  	      
  	      
  	      ResultSet rst=stmt.executeQuery(); 
  	      ccount = 0;
  	      while(rst.next())
  	      {
  	    	ccount++;  
  	      }
  	      
  	      
  	}
  catch(Exception e){
	  System.out.println("You haven't taken part in any rides");
  }
  	 
  %>
  
  <div class="classouter">
    <div class="container">
 
	  <div class="panel comment">
	    <a href="javascript:void();"><span><%=hcount %> </span>HOSTED RIDES</a>
	  </div>
	 
	  <div class="panel user">
	    <a href="javascript:void();"><span><%=rcount %></span>RIDES TAKEN</a>
	  </div>
	  
	   <div class="panel page">
	    <a href="javascript:void();"><span><%=ccount %> </span>CURRENT RIDES</a>
	  </div>
     </div>
     
     <br><br><br>
     <div class="body">
     <div id="myDIV" class="header">
  <h2 style="margin:5px">My To Do List</h2>
  <input type="text" id="myInput" placeholder="Title...">
  <span onclick="newElement()" class="addBtn">Add</span>
</div>

<ul  class="ul" id="myUL">
  <li>Host Ride in Feb 2nd week</li>
  <li class="checked">Send confirmation mails</li>
  <li >Look for Ladakh Rides</li>
</ul>
</div>


<script>
	// Create a "close" button and append it to each list item
	var myNodelist = document.getElementsByTagName("LI");
	var i;
	for (i = 0; i < myNodelist.length; i++) {
	  var span = document.createElement("SPAN");
	  var txt = document.createTextNode("\u00D7");
	  span.className = "close";
	  span.appendChild(txt);
	  myNodelist[i].appendChild(span);
	}
	
	// Click on a close button to hide the current list item
	var close = document.getElementsByClassName("close");
	var i;
	for (i = 0; i < close.length; i++) {
	  close[i].onclick = function() {
	    var div = this.parentElement;
	    div.style.display = "none";
	  }
	}
	
	// Add a "checked" symbol when clicking on a list item
	var list = document.querySelector('ul');
	list.addEventListener('click', function(ev) {
	  if (ev.target.tagName === 'LI') {
	    ev.target.classList.toggle('checked');
	  }
	}, false);
	
	// Create a new list item when clicking on the "Add" button
	function newElement() {
	  var li = document.createElement("li");
	  var inputValue = document.getElementById("myInput").value;
	  var t = document.createTextNode(inputValue);
	  li.appendChild(t);
	  if (inputValue === '') {
	    alert("You must write something!");
	  } else {
	    document.getElementById("myUL").appendChild(li);
	  }
	  document.getElementById("myInput").value = "";
	
	  var span = document.createElement("SPAN");
	  var txt = document.createTextNode("\u00D7");
	  span.className = "close";
	  span.appendChild(txt);
	  li.appendChild(span);
	
	  for (i = 0; i < close.length; i++) {
	    close[i].onclick = function() {
	      var div = this.parentElement;
	      div.style.display = "none";
	    }
	  }
	}
</script>
</div>
</body>
</html>