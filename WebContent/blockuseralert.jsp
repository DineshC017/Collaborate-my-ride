<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Success</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
   <% String message = (String)request.getAttribute("alertMsg");%>
  
      <script>
        Swal.fire({
            icon: 'error',
            title: '',
            text: '<%=message%>',
            footer: '<a href="BlockUser.jsp">BACK</a>'
          })
        </script>
</body>
</html>