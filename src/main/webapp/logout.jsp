<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%
   
    if (session != null) {
        session.invalidate();
    }
   
    response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logging out...</title>
</head>
<body>
<form  method="post"action="logout" >
				 
    
    <a href="login.jsp">click here to login</a>.
    </form>
    
</body>
</html>
