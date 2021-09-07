
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send an e-mail</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<style>
 
 .contact-image{
    text-align: center;
}

.contact-image img{
    border-radius: 5rem;
    width: 11%;
    margin-top: 80px;
    transform: rotate(29deg);
}

h3{
    text-align: center;
    color: #0062cc;
}

</style>
</head>
<body>
    <%! String mail; %>
    <%! String eid; %>
	<%@include  file="user_dashboard.html" %>
	
    <div class="contact-image">
        <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
    </div>
    <h3>Drop a Message</h3>
    <form action="EmailSendingServlet" method="post">
        <table border="0" width="35%" align="center">
           <br>
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="50" value= <%= request.getAttribute("mail") %> ></td>
            </tr>
            <tr> <td>&nbsp;</td> </tr>
          
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" value="Ride Booking Status" size="50"/></td>
            </tr>
            <tr> <td>&nbsp;</td> </tr>
            
            <tr>
                <td>Content </td>
                <td><textarea rows="6" cols="53" name="content" >Your booking is confirmed...Happy riding!!Your unique id is <%=  request.getAttribute("id") %> </textarea> </td>
            </tr>
            <tr> <td>&nbsp;</td> </tr>
            
            <tr>
              <td><input type="submit" name="btnSubmit" class="btn btn-danger btnContact" value="Send Message" /></td>        
            </tr>
        </table>
         
    </form>
</body>
</html>