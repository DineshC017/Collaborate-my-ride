<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
   <% String message = (String)request.getAttribute("alertMsg");%>
 
      <script>
        Swal.fire({
            icon: 'success',
            title: '',
            text: '<%=message%>',
            footer: '<a href="review_card.jsp">Back</a>'
          })
        </script>
</html>